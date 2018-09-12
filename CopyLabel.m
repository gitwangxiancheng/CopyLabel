//
//  CopyLabel.m
//  Block学习二次学习01
//
//  Created by XianCheng Wang on 2018/8/4.
//  Copyright © 2018年 XianCheng Wang. All rights reserved.
//

#import "CopyLabel.h"

@implementation CopyLabel
{
    UIColor *oldColor;
}



- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self pressAction];
    }
    return self;
}
// 初始化设置
- (void)pressAction {
    self.userInteractionEnabled = YES;
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressAction:)];
    longPress.minimumPressDuration = 0.25;
    [self addGestureRecognizer:longPress];
}

// 使label能够成为响应事件
- (BOOL)canBecomeFirstResponder {
    
    return YES;
}

// 自定义方法时才显示对就选项菜单，即屏蔽系统选项菜单
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    if (action == @selector(customCopy:)){
        
        return YES;
    }
    return NO;
}

// 父类视图
-(void)addSuperView{
    // 原背景颜色
    oldColor = self.backgroundColor;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(removeCopyLabel)];
    tap.numberOfTapsRequired = 1;
    [self.superview addGestureRecognizer:tap];
    self.alpha = 0.4;

}

-(void)removeCopyLabel{
    self.backgroundColor = oldColor;
    self.alpha = 1.0;
}

- (void)customCopy:(id)sender {
     [self removeCopyLabel];
     UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
     pasteboard.string = self.text;
}
- (void)longPressAction:(UIGestureRecognizer *)recognizer {
    // 父类视图
    [self addSuperView];
    if (recognizer.state == UIGestureRecognizerStateBegan) {
        [self becomeFirstResponder];
        UIMenuItem *copyItem = [[UIMenuItem alloc] initWithTitle:@"拷贝" action:@selector(customCopy:)];
        UIMenuController *menuController = [UIMenuController sharedMenuController];
        menuController.menuItems = [NSArray arrayWithObjects:copyItem, nil];
        [menuController setTargetRect:self.frame inView:self.superview];
        [menuController setMenuVisible:YES animated:YES];
    }
}










@end
