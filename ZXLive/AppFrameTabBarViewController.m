//
//  AppFrameTabBarViewController.m
//  ZXLive
//
//  Created by niuniuzhang on 16/10/27.
//  Copyright © 2016年 niuniuzhang. All rights reserved.
//

#import "AppFrameTabBarViewController.h"
#import "HomeBaseViewController.h"
#import "BusesViewController.h"
#import "NewsViewController.h"
#import "ArticlesViewController.h"
#import "PersonalViewController.h"
#import "BaseNavigationViewController.h"


#define kClassKey   @"classString"
#define kTitleKey   @"titleString"
#define kImgKey     @"imgString"
#define kSelImgKey  @"selImgString"

@interface AppFrameTabBarViewController ()

@end

@implementation AppFrameTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *childItems = @[
                            @{
                                kClassKey   :   @"BusesViewController",
                                kTitleKey   :   @"公交",
                                kImgKey     :   @"tabbar_buses",
                                kSelImgKey  :   @"tabbar_buses"
                                },
                            @{
                                kClassKey   :   @"NewsViewController",
                                kTitleKey   :   @"新闻",
                                kImgKey     :   @"tabbar_news",
                                kSelImgKey  :   @"tabbar_news"
                                },
                            
                            @{
                                kClassKey   :   @"ArticlesViewController",
                                kTitleKey   :   @"阅读",
                                kImgKey     :   @"tabbar_articles",
                                kSelImgKey  :   @"tabbar_articles"
                                },
                            @{
                                kClassKey   :   @"PersonalViewController",
                                kTitleKey   :   @"我的",
                                kImgKey     :   @"tabbar_personal",
                                kSelImgKey  :   @"tabbar_personal"
                                }
                            ];
    
    [childItems enumerateObjectsUsingBlock:^(NSDictionary *dict, NSUInteger idx, BOOL *stop) {
        UIViewController *vc = [NSClassFromString(dict[kClassKey]) new];
        vc.title = dict[kTitleKey];
        BaseNavigationViewController *nav = [[BaseNavigationViewController alloc] initWithRootViewController:vc];
        UITabBarItem *item = nav.tabBarItem;
        item.title = dict[kTitleKey];
        item.image = [UIImage imageNamed:dict[kImgKey]];
        item.selectedImage = [UIImage imageNamed:dict[kSelImgKey]];

        [self addChildViewController:nav];
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
