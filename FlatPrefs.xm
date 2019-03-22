#import "Header.h"

%group Prefs

%hook PSViewController

-(id)_navControllerToCreateManagedSearchPaletteForNavController:(id)arg1 {
    return NULL;
}

%end

%hook PSListController

%property (nonatomic, strong) UIImage *shadowImage;

-(UINavigationController *)navigationController {
    UINavigationController *original = %orig;
    if (!self.shadowImage) {
        CGSize size = CGSizeMake(1, 8);
        UIGraphicsBeginImageContextWithOptions(size, NO, 0);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
        size_t gradientNumberOfLocations = 2;
        CGFloat gradientLocations[2] = { 0.0, 1.0 };
        CGFloat gradientComponents[8] = { 0, 0, 0, 0.15, 0, 0, 0, 0};
        CGGradientRef gradient = CGGradientCreateWithColorComponents (colorspace, gradientComponents, gradientLocations, gradientNumberOfLocations);
        CGContextDrawLinearGradient(context, gradient, CGPointMake(0, 0), CGPointMake(0, size.height), 0);
        
        self.shadowImage = UIGraphicsGetImageFromCurrentImageContext();
        
        CGGradientRelease(gradient);
        CGColorSpaceRelease(colorspace);
        UIGraphicsEndImageContext();
    }
    [original.navigationBar setShadowImage:self.shadowImage];
    return original;
}

-(PSTableCell *)tableView:(UITableView *)table cellForRowAtIndexPath:(NSIndexPath *)index {
    PSTableCell *cell = %orig;
    if (index.row == 0) {
        cell.shadowView.layer.shadowOffset = CGSizeMake(0, 2);
        cell.shadowView.layer.cornerRadius = kCellRadius;
        cell.layer.cornerRadius = kCellRadius;
        if ([self rowsForGroup:index.section] == 1) {
            cell.behaviour = shadowViewBehaviourLonly;
            cell.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner | kCALayerMaxXMaxYCorner | kCALayerMinXMaxYCorner;
            cell.shadowView.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner | kCALayerMaxXMaxYCorner | kCALayerMinXMaxYCorner;
        }else{
            cell.behaviour = shadowViewBehaviourTop;
            cell.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
            cell.shadowView.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
        }
    }else if (index.row == [self rowsForGroup:index.section] - 1) {
        cell.behaviour = shadowViewBehaviourBottom;
        cell.shadowView.layer.shadowOffset = CGSizeMake(0, 2);
        cell.shadowView.layer.cornerRadius = kCellRadius;
        cell.layer.cornerRadius = kCellRadius;
        cell.layer.maskedCorners = kCALayerMinXMaxYCorner | kCALayerMaxXMaxYCorner;
        cell.shadowView.layer.maskedCorners = kCALayerMinXMaxYCorner | kCALayerMaxXMaxYCorner;
    }else{
        cell.behaviour = shadowViewBehaviourCenter;
        cell.shadowView.layer.shadowOffset = CGSizeMake(0, 0);
        cell.shadowView.layer.cornerRadius = 0;
        cell.layer.cornerRadius = 0;
    }
    cell.shadowView.layer.shadowOpacity = 0.9;
    cell.shadowView.layer.shadowRadius = 4;
    cell.shadowView.layer.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.3].CGColor;
    return cell;
}

-(double)tableView:(UITableView *)table heightForHeaderInSection:(long long)section {
    if ([self tableView:table titleForHeaderInSection:section] || [self tableView:table viewForHeaderInSection:section]) {
        return %orig;
    }
    if (section != 0) {
        return kSectionDistance / 2.0;
    }else{
        return kSectionDistance * 2;
    }
    return kSectionDistance;
}

-(double)tableView:(UITableView *)table heightForFooterInSection:(long long)section {
    if ([self tableView:table titleForFooterInSection:section] || [self tableView:table viewForFooterInSection:section]) {
        return %orig;
    }
    if (section != [self numberOfSectionsInTableView:table] - 1) {
        return kSectionDistance / 2.0;
    }
    return kSectionDistance;
}

-(id)tableView:(id)arg1 viewForHeaderInSection:(long long)arg2 {
    UITableViewHeaderFooterView *original = %orig;
    [original setBackgroundColor:[UIColor clearColor]];
    if ([original isKindOfClass:NSClassFromString(@"UITableViewHeaderFooterView")]) {
        [original _setBackgroundViewColor:[UIColor clearColor]];
    }
    return original;
}

-(id)tableView:(id)arg1 viewForFooterInSection:(long long)arg2 {
    UITableViewHeaderFooterView *original = %orig;
    [original setBackgroundColor:[UIColor clearColor]];
    if ([original isKindOfClass:NSClassFromString(@"UITableViewHeaderFooterView")]) {
        [original _setBackgroundViewColor:[UIColor clearColor]];
    }
    return original;
}

%end

%hook PSTableCell

%property (nonatomic, strong) UIView *shadowMaskView;
%property (nonatomic, strong) UIView *shadowView;
%property (nonatomic, assign) shadowViewBehaviour behaviour;

-(id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2 specifier:(id)arg3 {
    if ((self = %orig)) {
        self.behaviour = shadowViewBehaviourCenter;
        
        self.shadowMaskView = [[UIView alloc] init];
        self.shadowMaskView.layer.masksToBounds = YES;
        self.shadowMaskView.backgroundColor = [UIColor clearColor];
        
        self.shadowView = [[UIView alloc] init];
        self.shadowView.backgroundColor = [UIColor whiteColor];
        [self.shadowMaskView addSubview:self.shadowView];
        
        [self addSubview:self.shadowMaskView];
    }
    return self;
}

-(void)setFrame:(CGRect)frame {
    %orig(CGRectMake(kCellIndentation, frame.origin.y, frame.size.width - kCellIndentation * 2, frame.size.height));
}

-(void)layoutSubviews {
    %orig;
    if (self.behaviour == shadowViewBehaviourLonly) {
        self.shadowMaskView.frame = self.bounds;
        self.shadowMaskView.layer.masksToBounds = NO;
        self.shadowView.frame = self.bounds;
    }else if (self.behaviour == shadowViewBehaviourTop) {
        self.shadowMaskView.layer.masksToBounds = YES;
        self.shadowMaskView.frame = CGRectMake(-kCellIndentation, -kSectionDistance, self.frame.size.width + kCellIndentation * 2, self.frame.size.height + kSectionDistance);
        self.shadowView.frame = CGRectMake(kCellIndentation, kSectionDistance, self.frame.size.width, self.shadowMaskView.frame.size.height - kSectionDistance + kCellIndentation * 2);
    }else if (self.behaviour == shadowViewBehaviourCenter) {
        self.shadowMaskView.layer.masksToBounds = YES;
        self.shadowMaskView.frame = CGRectMake(-kCellIndentation, 0, self.frame.size.width + kCellIndentation * 2, self.frame.size.height);
        self.shadowView.frame = CGRectMake(kCellIndentation, -kCellIndentation*2, self.frame.size.width, self.shadowMaskView.frame.size.height + kCellIndentation * 4);
    }else{
        self.shadowMaskView.layer.masksToBounds = YES;
        self.shadowMaskView.frame = CGRectMake(-kCellIndentation, 0, self.frame.size.width + kCellIndentation * 2, self.frame.size.height + kSectionDistance);
        self.shadowView.frame = CGRectMake(kCellIndentation, -kCellIndentation * 2, self.frame.size.width, self.shadowMaskView.frame.size.height - kSectionDistance + kCellIndentation * 2);
    }
    self.shadowView.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.shadowView.bounds cornerRadius:self.layer.cornerRadius].CGPath;
    [self sendSubviewToBack:self.shadowMaskView];
}

-(BOOL)_shouldHideSeparator {
    return YES;
}

-(void)showSelectedBackgroundView:(BOOL)arg1 animated:(BOOL)arg2 {
    if (arg1) {
        self.shadowView.backgroundColor = [UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0];
        self.textLabel.textColor = [UIColor whiteColor];
        self.detailTextLabel.textColor = [UIColor colorWithWhite:1.0 alpha:0.8];
    }else{
        self.shadowView.backgroundColor = [UIColor whiteColor];
        self.textLabel.textColor = [UIColor blackColor];
        self.detailTextLabel.textColor = [UIColor colorWithRed:142.0/255.0 green:142.0/255.0 blue:147.0/255.0 alpha:1.0];
    }
}

%end

%hook PSSwitchTableCell

-(UISwitch *)newControl {
    UISwitch *original = %orig;
    [original setOnTintColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0]];
    return original;
}

%end

%end

%ctor {
    NSString *bundleIdentifier = [NSBundle mainBundle].bundleIdentifier;
    if ([bundleIdentifier isEqualToString:@"com.apple.Preferences"]) {
        %init(Prefs);
    }
}
