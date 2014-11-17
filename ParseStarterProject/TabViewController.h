//
//  TabViewController.h
//  ParseStarterProject
//
//  Created by Soo-ji Lee on 2014-11-05.
//
//

#import <UIKit/UIKit.h>

@interface TabViewController : UITabBarController
@property(nonatomic, assign) UIViewController *selectedViewController;
@property(nonatomic) NSUInteger selectedIndex;
@end
