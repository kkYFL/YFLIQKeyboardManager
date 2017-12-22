//
//  KeyboardTableViewCell.m
//  KeyBoard
//
//  Created by 杨丰林 on 2017/12/22.
//  Copyright © 2017年 杨丰林. All rights reserved.
//

#import "KeyboardTableViewCell.h"

@interface KeyboardTableViewCell ()<UITextFieldDelegate>
@property (nonatomic, strong) UITextField  *textField1;
@end

@implementation KeyboardTableViewCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initView];
    }
    return self;
}

-(void)initView{
    self.textField1 = [[UITextField alloc]init];
    self.textField1.placeholder = @"keboard";
    self.textField1.delegate = self;
    [self.contentView addSubview:self.textField1];
}



-(void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"JJ");
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    return YES;
}



-(void)layoutSubviews{
    [super layoutSubviews];
    
    [self.textField1 setFrame:CGRectMake(0, 5,[[UIScreen mainScreen]bounds].size.width, 30)];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

@end
