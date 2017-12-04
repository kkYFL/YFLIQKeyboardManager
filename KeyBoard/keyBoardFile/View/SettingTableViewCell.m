//
//  SettingTableViewCell.m
//  KeyBoard
//
//  Created by 杨丰林 on 2017/12/4.
//  Copyright © 2017年 杨丰林. All rights reserved.
//

#import "SettingTableViewCell.h"

@interface SettingTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *statusTitleLab;
@property (weak, nonatomic) IBOutlet UISwitch *statusSwitch;

@end
@implementation SettingTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (IBAction)statusChangeAction:(UISwitch *)sender forEvent:(UIEvent *)event {
    
    if (sender.on) {
        
    }else{
        
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
