//
//  KeyboardViewController.m
//  KeyBoard
//
//  Created by 杨丰林 on 2017/12/1.
//  Copyright © 2017年 杨丰林. All rights reserved.
//

#import "KeyboardViewController.h"
#import "IQKeyboardManager.h"

@interface KeyboardViewController ()

@end

@implementation KeyboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [IQKeyboardManager sharedManager].enable = YES;
    [IQKeyboardManager sharedManager].keyboardDistanceFromTextField = 100;
    //[IQKeyboardManager sharedManager].preventShowingBottomBlankSpace = YES;
    //[IQKeyboardManager sharedManager].enableAutoToolbar = NO;
    //设置为文字
//    [IQKeyboardManager sharedManager].toolbarDoneBarButtonItemText = @"完成";
//    //设置为图片
//    [IQKeyboardManager sharedManager].toolbarDoneBarButtonItemImage = [UIImage imageNamed:@"imageName"];
    
    
    [IQKeyboardManager sharedManager].shouldToolbarUsesTextFieldTintColor = NO;
    [IQKeyboardManager sharedManager].toolbarTintColor = [UIColor purpleColor];
}






-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end
