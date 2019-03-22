#line 1 "/Users/gabrielefilipponi/Desktop/Progetti/FlatPrefs/FlatPrefs/FlatPrefs.xm"
#import "Header.h"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class PSViewController; @class PSSwitchTableCell; @class PSListController; @class PSTableCell; 


#line 3 "/Users/gabrielefilipponi/Desktop/Progetti/FlatPrefs/FlatPrefs/FlatPrefs.xm"
static id (*_logos_orig$Prefs$PSViewController$_navControllerToCreateManagedSearchPaletteForNavController$)(_LOGOS_SELF_TYPE_NORMAL PSViewController* _LOGOS_SELF_CONST, SEL, id); static id _logos_method$Prefs$PSViewController$_navControllerToCreateManagedSearchPaletteForNavController$(_LOGOS_SELF_TYPE_NORMAL PSViewController* _LOGOS_SELF_CONST, SEL, id); static UINavigationController * (*_logos_orig$Prefs$PSListController$navigationController)(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL); static UINavigationController * _logos_method$Prefs$PSListController$navigationController(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL); static PSTableCell * (*_logos_orig$Prefs$PSListController$tableView$cellForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static PSTableCell * _logos_method$Prefs$PSListController$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static double (*_logos_orig$Prefs$PSListController$tableView$heightForHeaderInSection$)(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL, UITableView *, long long); static double _logos_method$Prefs$PSListController$tableView$heightForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL, UITableView *, long long); static double (*_logos_orig$Prefs$PSListController$tableView$heightForFooterInSection$)(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL, UITableView *, long long); static double _logos_method$Prefs$PSListController$tableView$heightForFooterInSection$(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL, UITableView *, long long); static id (*_logos_orig$Prefs$PSListController$tableView$viewForHeaderInSection$)(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL, id, long long); static id _logos_method$Prefs$PSListController$tableView$viewForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL, id, long long); static id (*_logos_orig$Prefs$PSListController$tableView$viewForFooterInSection$)(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL, id, long long); static id _logos_method$Prefs$PSListController$tableView$viewForFooterInSection$(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST, SEL, id, long long); static PSTableCell* (*_logos_orig$Prefs$PSTableCell$initWithStyle$reuseIdentifier$specifier$)(_LOGOS_SELF_TYPE_INIT PSTableCell*, SEL, long long, id, id) _LOGOS_RETURN_RETAINED; static PSTableCell* _logos_method$Prefs$PSTableCell$initWithStyle$reuseIdentifier$specifier$(_LOGOS_SELF_TYPE_INIT PSTableCell*, SEL, long long, id, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$Prefs$PSTableCell$setFrame$)(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST, SEL, CGRect); static void _logos_method$Prefs$PSTableCell$setFrame$(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST, SEL, CGRect); static void (*_logos_orig$Prefs$PSTableCell$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST, SEL); static void _logos_method$Prefs$PSTableCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$Prefs$PSTableCell$_shouldHideSeparator)(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$Prefs$PSTableCell$_shouldHideSeparator(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$Prefs$PSTableCell$showSelectedBackgroundView$animated$)(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST, SEL, BOOL, BOOL); static void _logos_method$Prefs$PSTableCell$showSelectedBackgroundView$animated$(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST, SEL, BOOL, BOOL); static UISwitch * (*_logos_orig$Prefs$PSSwitchTableCell$newControl)(_LOGOS_SELF_TYPE_NORMAL PSSwitchTableCell* _LOGOS_SELF_CONST, SEL); static UISwitch * _logos_method$Prefs$PSSwitchTableCell$newControl(_LOGOS_SELF_TYPE_NORMAL PSSwitchTableCell* _LOGOS_SELF_CONST, SEL); 



static id _logos_method$Prefs$PSViewController$_navControllerToCreateManagedSearchPaletteForNavController$(_LOGOS_SELF_TYPE_NORMAL PSViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return NULL;
}





__attribute__((used)) static UIImage * _logos_method$Prefs$PSListController$shadowImage(PSListController * __unused self, SEL __unused _cmd) { return (UIImage *)objc_getAssociatedObject(self, (void *)_logos_method$Prefs$PSListController$shadowImage); }; __attribute__((used)) static void _logos_method$Prefs$PSListController$setShadowImage(PSListController * __unused self, SEL __unused _cmd, UIImage * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$Prefs$PSListController$shadowImage, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static UINavigationController * _logos_method$Prefs$PSListController$navigationController(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    UINavigationController *original = _logos_orig$Prefs$PSListController$navigationController(self, _cmd);
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

static PSTableCell * _logos_method$Prefs$PSListController$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * table, NSIndexPath * index) {
    PSTableCell *cell = _logos_orig$Prefs$PSListController$tableView$cellForRowAtIndexPath$(self, _cmd, table, index);
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

static double _logos_method$Prefs$PSListController$tableView$heightForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * table, long long section) {
    if ([self tableView:table titleForHeaderInSection:section] || [self tableView:table viewForHeaderInSection:section]) {
        return _logos_orig$Prefs$PSListController$tableView$heightForHeaderInSection$(self, _cmd, table, section);
    }
    if (section != 0) {
        return kSectionDistance / 2.0;
    }else{
        return kSectionDistance * 2;
    }
    return kSectionDistance;
}

static double _logos_method$Prefs$PSListController$tableView$heightForFooterInSection$(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * table, long long section) {
    if ([self tableView:table titleForFooterInSection:section] || [self tableView:table viewForFooterInSection:section]) {
        return _logos_orig$Prefs$PSListController$tableView$heightForFooterInSection$(self, _cmd, table, section);
    }
    if (section != [self numberOfSectionsInTableView:table] - 1) {
        return kSectionDistance / 2.0;
    }
    return kSectionDistance;
}

static id _logos_method$Prefs$PSListController$tableView$viewForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, long long arg2) {
    UITableViewHeaderFooterView *original = _logos_orig$Prefs$PSListController$tableView$viewForHeaderInSection$(self, _cmd, arg1, arg2);
    [original setBackgroundColor:[UIColor clearColor]];
    if ([original isKindOfClass:NSClassFromString(@"UITableViewHeaderFooterView")]) {
        [original _setBackgroundViewColor:[UIColor clearColor]];
    }
    return original;
}

static id _logos_method$Prefs$PSListController$tableView$viewForFooterInSection$(_LOGOS_SELF_TYPE_NORMAL PSListController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, long long arg2) {
    UITableViewHeaderFooterView *original = _logos_orig$Prefs$PSListController$tableView$viewForFooterInSection$(self, _cmd, arg1, arg2);
    [original setBackgroundColor:[UIColor clearColor]];
    if ([original isKindOfClass:NSClassFromString(@"UITableViewHeaderFooterView")]) {
        [original _setBackgroundViewColor:[UIColor clearColor]];
    }
    return original;
}





__attribute__((used)) static UIView * _logos_method$Prefs$PSTableCell$shadowMaskView(PSTableCell * __unused self, SEL __unused _cmd) { return (UIView *)objc_getAssociatedObject(self, (void *)_logos_method$Prefs$PSTableCell$shadowMaskView); }; __attribute__((used)) static void _logos_method$Prefs$PSTableCell$setShadowMaskView(PSTableCell * __unused self, SEL __unused _cmd, UIView * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$Prefs$PSTableCell$shadowMaskView, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
__attribute__((used)) static UIView * _logos_method$Prefs$PSTableCell$shadowView(PSTableCell * __unused self, SEL __unused _cmd) { return (UIView *)objc_getAssociatedObject(self, (void *)_logos_method$Prefs$PSTableCell$shadowView); }; __attribute__((used)) static void _logos_method$Prefs$PSTableCell$setShadowView(PSTableCell * __unused self, SEL __unused _cmd, UIView * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$Prefs$PSTableCell$shadowView, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
__attribute__((used)) static shadowViewBehaviour _logos_method$Prefs$PSTableCell$behaviour(PSTableCell * __unused self, SEL __unused _cmd) { NSValue * value = objc_getAssociatedObject(self, (void *)_logos_method$Prefs$PSTableCell$behaviour); shadowViewBehaviour rawValue; [value getValue:&rawValue]; return rawValue; }; __attribute__((used)) static void _logos_method$Prefs$PSTableCell$setBehaviour(PSTableCell * __unused self, SEL __unused _cmd, shadowViewBehaviour rawValue) { NSValue * value = [NSValue valueWithBytes:&rawValue objCType:@encode(shadowViewBehaviour)]; objc_setAssociatedObject(self, (void *)_logos_method$Prefs$PSTableCell$behaviour, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static PSTableCell* _logos_method$Prefs$PSTableCell$initWithStyle$reuseIdentifier$specifier$(_LOGOS_SELF_TYPE_INIT PSTableCell* __unused self, SEL __unused _cmd, long long arg1, id arg2, id arg3) _LOGOS_RETURN_RETAINED {
    if ((self = _logos_orig$Prefs$PSTableCell$initWithStyle$reuseIdentifier$specifier$(self, _cmd, arg1, arg2, arg3))) {
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

static void _logos_method$Prefs$PSTableCell$setFrame$(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGRect frame) {
    _logos_orig$Prefs$PSTableCell$setFrame$(self, _cmd, CGRectMake(kCellIndentation, frame.origin.y, frame.size.width - kCellIndentation * 2, frame.size.height));
}

static void _logos_method$Prefs$PSTableCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$Prefs$PSTableCell$layoutSubviews(self, _cmd);
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

static BOOL _logos_method$Prefs$PSTableCell$_shouldHideSeparator(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return YES;
}

static void _logos_method$Prefs$PSTableCell$showSelectedBackgroundView$animated$(_LOGOS_SELF_TYPE_NORMAL PSTableCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1, BOOL arg2) {
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





static UISwitch * _logos_method$Prefs$PSSwitchTableCell$newControl(_LOGOS_SELF_TYPE_NORMAL PSSwitchTableCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    UISwitch *original = _logos_orig$Prefs$PSSwitchTableCell$newControl(self, _cmd);
    [original setOnTintColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0]];
    return original;
}





static __attribute__((constructor)) void _logosLocalCtor_8fc6ede1(int __unused argc, char __unused **argv, char __unused **envp) {
    NSString *bundleIdentifier = [NSBundle mainBundle].bundleIdentifier;
    if ([bundleIdentifier isEqualToString:@"com.apple.Preferences"]) {
        {Class _logos_class$Prefs$PSViewController = objc_getClass("PSViewController"); MSHookMessageEx(_logos_class$Prefs$PSViewController, @selector(_navControllerToCreateManagedSearchPaletteForNavController:), (IMP)&_logos_method$Prefs$PSViewController$_navControllerToCreateManagedSearchPaletteForNavController$, (IMP*)&_logos_orig$Prefs$PSViewController$_navControllerToCreateManagedSearchPaletteForNavController$);Class _logos_class$Prefs$PSListController = objc_getClass("PSListController"); MSHookMessageEx(_logos_class$Prefs$PSListController, @selector(navigationController), (IMP)&_logos_method$Prefs$PSListController$navigationController, (IMP*)&_logos_orig$Prefs$PSListController$navigationController);MSHookMessageEx(_logos_class$Prefs$PSListController, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$Prefs$PSListController$tableView$cellForRowAtIndexPath$, (IMP*)&_logos_orig$Prefs$PSListController$tableView$cellForRowAtIndexPath$);MSHookMessageEx(_logos_class$Prefs$PSListController, @selector(tableView:heightForHeaderInSection:), (IMP)&_logos_method$Prefs$PSListController$tableView$heightForHeaderInSection$, (IMP*)&_logos_orig$Prefs$PSListController$tableView$heightForHeaderInSection$);MSHookMessageEx(_logos_class$Prefs$PSListController, @selector(tableView:heightForFooterInSection:), (IMP)&_logos_method$Prefs$PSListController$tableView$heightForFooterInSection$, (IMP*)&_logos_orig$Prefs$PSListController$tableView$heightForFooterInSection$);MSHookMessageEx(_logos_class$Prefs$PSListController, @selector(tableView:viewForHeaderInSection:), (IMP)&_logos_method$Prefs$PSListController$tableView$viewForHeaderInSection$, (IMP*)&_logos_orig$Prefs$PSListController$tableView$viewForHeaderInSection$);MSHookMessageEx(_logos_class$Prefs$PSListController, @selector(tableView:viewForFooterInSection:), (IMP)&_logos_method$Prefs$PSListController$tableView$viewForFooterInSection$, (IMP*)&_logos_orig$Prefs$PSListController$tableView$viewForFooterInSection$);{ char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIImage *)); class_addMethod(_logos_class$Prefs$PSListController, @selector(shadowImage), (IMP)&_logos_method$Prefs$PSListController$shadowImage, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIImage *)); class_addMethod(_logos_class$Prefs$PSListController, @selector(setShadowImage:), (IMP)&_logos_method$Prefs$PSListController$setShadowImage, _typeEncoding); } Class _logos_class$Prefs$PSTableCell = objc_getClass("PSTableCell"); MSHookMessageEx(_logos_class$Prefs$PSTableCell, @selector(initWithStyle:reuseIdentifier:specifier:), (IMP)&_logos_method$Prefs$PSTableCell$initWithStyle$reuseIdentifier$specifier$, (IMP*)&_logos_orig$Prefs$PSTableCell$initWithStyle$reuseIdentifier$specifier$);MSHookMessageEx(_logos_class$Prefs$PSTableCell, @selector(setFrame:), (IMP)&_logos_method$Prefs$PSTableCell$setFrame$, (IMP*)&_logos_orig$Prefs$PSTableCell$setFrame$);MSHookMessageEx(_logos_class$Prefs$PSTableCell, @selector(layoutSubviews), (IMP)&_logos_method$Prefs$PSTableCell$layoutSubviews, (IMP*)&_logos_orig$Prefs$PSTableCell$layoutSubviews);MSHookMessageEx(_logos_class$Prefs$PSTableCell, @selector(_shouldHideSeparator), (IMP)&_logos_method$Prefs$PSTableCell$_shouldHideSeparator, (IMP*)&_logos_orig$Prefs$PSTableCell$_shouldHideSeparator);MSHookMessageEx(_logos_class$Prefs$PSTableCell, @selector(showSelectedBackgroundView:animated:), (IMP)&_logos_method$Prefs$PSTableCell$showSelectedBackgroundView$animated$, (IMP*)&_logos_orig$Prefs$PSTableCell$showSelectedBackgroundView$animated$);{ char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIView *)); class_addMethod(_logos_class$Prefs$PSTableCell, @selector(shadowMaskView), (IMP)&_logos_method$Prefs$PSTableCell$shadowMaskView, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIView *)); class_addMethod(_logos_class$Prefs$PSTableCell, @selector(setShadowMaskView:), (IMP)&_logos_method$Prefs$PSTableCell$setShadowMaskView, _typeEncoding); } { char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIView *)); class_addMethod(_logos_class$Prefs$PSTableCell, @selector(shadowView), (IMP)&_logos_method$Prefs$PSTableCell$shadowView, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIView *)); class_addMethod(_logos_class$Prefs$PSTableCell, @selector(setShadowView:), (IMP)&_logos_method$Prefs$PSTableCell$setShadowView, _typeEncoding); } { char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(shadowViewBehaviour)); class_addMethod(_logos_class$Prefs$PSTableCell, @selector(behaviour), (IMP)&_logos_method$Prefs$PSTableCell$behaviour, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(shadowViewBehaviour)); class_addMethod(_logos_class$Prefs$PSTableCell, @selector(setBehaviour:), (IMP)&_logos_method$Prefs$PSTableCell$setBehaviour, _typeEncoding); } Class _logos_class$Prefs$PSSwitchTableCell = objc_getClass("PSSwitchTableCell"); MSHookMessageEx(_logos_class$Prefs$PSSwitchTableCell, @selector(newControl), (IMP)&_logos_method$Prefs$PSSwitchTableCell$newControl, (IMP*)&_logos_orig$Prefs$PSSwitchTableCell$newControl);}
    }
}
