//
//  ViewController.m
//  ViewLoadSpike
//
//  Created by u16suzu on 2014/02/05.
//  Copyright (c) 2014年 IGNIS LTD. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()
@property (nonatomic) UIView*titleView;
@property (nonatomic) CustomView*customView;
@end

@implementation ViewController

- (void)loadView
{
    [super loadView];
    NSLog(@"%s", __func__);
    [self.view addSubview:self.titleView];
    [self.view addSubview:self.customView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%s", __func__);
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"%s", __func__);
 
    CGRect titleViewFrame = CGRectMake(50, 50, 50, 50);
    self.titleView.frame = titleViewFrame;
    
    CGRect customViewFrame = CGRectMake(50, 100, 300, 100);
    self.customView.frame = customViewFrame;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Views

- (UIView*)titleView{
    if(!_titleView){
        _titleView = [UIView new];
        _titleView.backgroundColor = [UIColor redColor];
    }
    return _titleView;
}

- (CustomView*)customView{
    if(!_customView){
        _customView = [CustomView new];
    }
    return _customView;
}

#pragma mark - UIActionSheetDelegate 
// 他のオブジェクトのデリゲート

@end
