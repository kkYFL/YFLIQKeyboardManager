//
//  KeyboardTableController.m
//  KeyBoard
//
//  Created by 杨丰林 on 2017/12/22.
//  Copyright © 2017年 杨丰林. All rights reserved.
//

#import "KeyboardTableController.h"
#import "KeyboardTableViewCell.h"

@interface KeyboardTableController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation KeyboardTableController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    //[tableView registerClass:[<#classCell#> class] forCellReuseIdentifier:<#kReuseIdentifier#>];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.dataSource = self;
    tableView.delegate = self;
    //tableView.backgroundColor=[UIColor colorWithHex:<#0xFFFFFF#>];
    [self.view addSubview:tableView];
    
    [self.tableView reloadData];

}

#pragma mark - UITableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 15;;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"cellIdentifier";
    KeyboardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[KeyboardTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 40.0f;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
