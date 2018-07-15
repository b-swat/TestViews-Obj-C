//
//  MyTableViewCell.m
//  qqqqq
//
//  Created by Swat on 7/14/18.
//  Copyright © 2018 Swat. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell
{
    IBOutlet UISwitch *s;
    IBOutlet UILabel *l;
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)switch:(id)sender {
    if ([s isOn])
    {
        l.text = @"YES";
    }
    else
    {
        l.text = @"NO";
    }
}

@end
