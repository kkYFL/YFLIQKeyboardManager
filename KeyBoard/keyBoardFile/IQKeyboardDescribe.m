//
//  IQKeyboardDescribe.m
//  KeyBoard
//
//  Created by 杨丰林 on 2017/12/10.
//  Copyright © 2017年 杨丰林. All rights reserved.
//  IQKeyboard使用说明文件

#import "IQKeyboardDescribe.h"

@implementation IQKeyboardDescribe


/*
 1.关闭设置为NO, 默认值为NO.
 如果当前控制器不想使用自动管理，在viewWillAppear方法中关闭，在方法viewWillDisappear开启。
 -(void)viewWillAppear:(BOOL)animated {
 //打开
 [IQKeyboardManager sharedManager].enable = NO;
 }
 - (void)viewWillDisappear:(BOOL)animated {
 //关闭
 [IQKeyboardManager sharedManager].enable = YES;
 }
 
 2.如果产品需要当键盘弹起时，点击背景收起键盘，也是一行代码解决.
 [IQKeyboardManager sharedManager].shouldResignOnTouchOutside = YES;
 
 3.设置工具条与输入框之间的距离，默认距离是10.
 [IQKeyboardManager sharedManager].keyboardDistanceFromTextField = 100;
 
 4.管理导航栏，在点击键盘控制器当前的View上移，会导致导航控制器UInavigationBar消失，解决方案：
 <<:如果你使用的是storyboard or xib，只需将当前视图视图控制器中的UIView class变为UIScrollView
 <<:如果你使用的是代码，你就需要覆盖UIViewController中的-(void)loadView方法
 -(void)loadView
 {
 UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
 scrollView.backgroundColor = [UIColor whiteColor];
 self.view = scrollView;
 }
 
 5.设置键盘最上方工具条的现实与隐藏。YES显示，NO隐藏，默认YES。
 [IQKeyboardManager sharedManager].enableAutoToolbar = NO

 6.设置工具条右侧的Done按钮。
 //设置为文字
 [IQKeyboardManager sharedManager].toolbarDoneBarButtonItemText = @"完成";
 //设置为图片
 [IQKeyboardManager sharedManager].toolbarDoneBarButtonItemImage = [UIImage imageNamed:@"imageName"];
 
 7.设置工具条上字体的颜色。
 [IQKeyboardManager sharedManager].shouldToolbarUsesTextFieldTintColor = NO;
 [IQKeyboardManager sharedManager].toolbarTintColor = [UIColor purpleColor];
 
 8.设置某一个输入框不显示工具条。
 self.textfield5.inputAccessoryView = [[UIView alloc] init];
 
 9.设置工具条中间是否显示输入框占位文字。默认YES显示，NO不显示。
 [[IQKeyboardManager sharedManager] setShouldShowToolbarPlaceholder:NO];

 10.设置工具条中间显示占位文字的字体大小。
 [IQKeyboardManager sharedManager].placeholderFont = [UIFont systemFontOfSize:22.0];

 
 
 */


@end
