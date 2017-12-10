//
//  NaviViewController.m
//  KeyBoard
//
//  Created by 杨丰林 on 2017/12/10.
//  Copyright © 2017年 杨丰林. All rights reserved.
//

#import "NaviViewController.h"
#import "IQKeyboardManager.h"

@interface NaviViewController ()
@property (nonatomic, strong) UITextField *textfield1;
@property (nonatomic, strong) UITextField *textfield2;
@property (nonatomic, strong) UITextField *textfield3;
@property (nonatomic, strong) UITextField *textfield4;
@property (nonatomic, strong) UITextField *textfield5;

@end

@implementation NaviViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
}

-(void)initView{
    //
    //[[IQKeyboardManager sharedManager] setShouldShowToolbarPlaceholder:NO];
    //
    [IQKeyboardManager sharedManager].placeholderFont = [UIFont systemFontOfSize:22.0];
    
    
    self.textfield1 = [[UITextField alloc]init];
    self.textfield1.placeholder = @"TextField1";
    self.textfield1.backgroundColor = [UIColor greenColor];
    
    self.textfield2 = [[UITextField alloc]init];
    self.textfield2.placeholder = @"TextField2";
    self.textfield2.backgroundColor = [UIColor greenColor];

    self.textfield3 = [[UITextField alloc]init];
    self.textfield3.placeholder = @"TextField3";
    self.textfield3.backgroundColor = [UIColor greenColor];

    self.textfield4 = [[UITextField alloc]init];
    self.textfield4.placeholder = @"TextField4";
    self.textfield4.backgroundColor = [UIColor greenColor];
    

    self.textfield5 = [[UITextField alloc]init];
    self.textfield5.placeholder = @"TextField5";
    self.textfield5.backgroundColor = [UIColor greenColor];
    self.textfield5.inputAccessoryView = [[UIView alloc] init];


    
    [self.textfield1 setFrame:CGRectMake(10, 10, 200, 20)];
    [self.view addSubview:self.textfield1];
    
    [self.textfield2 setFrame:CGRectMake(10, 40, 200, 20)];
    [self.view addSubview:self.textfield2];

    [self.textfield3 setFrame:CGRectMake(10, 70, 200, 20)];
    [self.view addSubview:self.textfield3];

    
    [self.textfield4 setFrame:CGRectMake(10, 100, 200, 20)];
    [self.view addSubview:self.textfield4];

    [self.textfield5 setFrame:CGRectMake(10, 130, 200, 20)];
    [self.view addSubview:self.textfield5];


}


-(void)loadView
{
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    scrollView.backgroundColor = [UIColor whiteColor];
    self.view = scrollView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
