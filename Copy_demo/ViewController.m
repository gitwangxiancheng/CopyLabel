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
    CopyLabel *copy = [[CopyLabel alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width,50)];
    copy.text = @"清明时节雨纷纷，路上行人欲断魂。";
    copy.textAlignment = NSTextAlignmentCenter;
    copy.backgroundColor = [UIColor yellowColor];
    copy.textColor = [UIColor redColor];
    copy.font = [UIFont boldSystemFontOfSize:16];
    [self.view addSubview:copy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
