//
//  ViewController.m
//  Copy_demo
//
//  Created by XianCheng Wang on 2018/8/21.
//  Copyright © 2018年 XianCheng Wang. All rights reserved.
//

#import "ViewController.h"
#import "CopyLabel.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"CopyLabel";
    CopyLabel *copy = [[CopyLabel alloc] initWithFrame:CGRectMake(50,44, [UIScreen mainScreen].bounds.size.width - 100,35)];
    copy.text = @"清明时节雨纷纷，路上行人欲断魂。";
    copy.textColor = [UIColor yellowColor];
    copy.backgroundColor = [UIColor darkGrayColor];
    copy.textAlignment = NSTextAlignmentCenter;
    copy.font = [UIFont boldSystemFontOfSize:14];
    [self.view addSubview:copy];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
