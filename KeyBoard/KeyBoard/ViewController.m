//
//  ViewController.m
//  KeyBoard
//
//  Created by 杨丰林 on 2017/11/30.
//  Copyright © 2017年 杨丰林. All rights reserved.
//

#import "ViewController.h"
#import "KeyboardViewController.h"
#import "KeyboardComplexViewController.h"
#import "SettingViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *table;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.table reloadData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
        cell.backgroundColor = [UIColor colorWithRed:240/255.0 green:255/255.0 blue:240/255.0 alpha:1];
    }
    
    if (indexPath.row ==0) {
        [cell.textLabel setText:@"VC+Textfield"];
    }else if (indexPath.row ==1){
        [cell.textLabel setText:@"ComplexVC+Textfield"];
    }else if (indexPath.row ==2){
        [cell.textLabel setText:@"ManagerSettingVC"];
    }else{
        [cell.textLabel setText:@""];
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.row ==0) {
        KeyboardViewController *VC = [[KeyboardViewController alloc]initWithNibName:@"KeyboardViewController" bundle:nil];
        [self.navigationController pushViewController:VC animated:YES];
    }else if (indexPath.row ==1){
        KeyboardComplexViewController  *VC = [[KeyboardComplexViewController alloc]initWithNibName:@"KeyboardComplexViewController" bundle:nil];
        [self.navigationController pushViewController:VC animated:YES];
    }else if (indexPath.row == 2){
        SettingViewController *settingVC = [[SettingViewController alloc]initWithNibName:@"SettingViewController" bundle:nil];
        [self.navigationController pushViewController:settingVC animated:YES];
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50.0f;
}


@end
