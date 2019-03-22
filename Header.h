//
//  Header.h
//  FlatPrefs
//
//  Created by gabriele filipponi on 22/03/2019.
//

#ifndef Header_h
#define Header_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#define kCellIndentation 12.0
#define kCellRadius 12.0
#define kSectionDistance 12.0

typedef enum : NSUInteger {
    shadowViewBehaviourTop,
    shadowViewBehaviourCenter,
    shadowViewBehaviourBottom,
    shadowViewBehaviourLonly
} shadowViewBehaviour;

@interface PSTableCell : UITableViewCell
@property (nonatomic, strong) UIView *shadowMaskView;
@property (nonatomic, strong) UIView *shadowView;
@property (nonatomic, assign) shadowViewBehaviour behaviour;
@end

@interface PSListController : UIViewController
@property (nonatomic, strong) UIImage *shadowImage;
-(long long)rowsForGroup:(long long)arg1 ;
-(id)tableView:(id)arg1 titleForHeaderInSection:(long long)arg2 ;
-(id)tableView:(id)arg1 titleForFooterInSection:(long long)arg2 ;
-(id)tableView:(id)arg1 viewForHeaderInSection:(long long)arg2 ;
-(id)tableView:(id)arg1 viewForFooterInSection:(long long)arg2 ;
-(long long)numberOfSectionsInTableView:(id)arg1 ;
@end

@interface _UINavigationControllerManagedSearchPalette : UIView
-(void)_setShadowAlpha:(double)arg1;
@end

@interface UITableViewHeaderFooterView (FlatPrefs)
-(void)_setBackgroundViewColor:(id)arg1 ;
@end

#endif /* Header_h */
