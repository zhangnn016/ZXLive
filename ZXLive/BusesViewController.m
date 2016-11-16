//
//  BusesViewController.m
//  ZXLive
//
//  Created by niuniuzhang on 16/10/27.
//  Copyright © 2016年 niuniuzhang. All rights reserved.
//

#import "BusesViewController.h"

@interface BusesViewController ()

@end

@implementation BusesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mapView = [[MAMapView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.mapView];
    
    [self.mapView setMapType:MAMapTypeStandard];
    self.mapView.showTraffic = YES;
    
    UIBarButtonItem *leftButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(selectLeftAction:)];
    self.navigationItem.leftBarButtonItem = leftButtonItem;
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    self.mapView.showTraffic = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)selectLeftAction:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"Left Clicked" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
