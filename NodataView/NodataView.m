//
//  NodataView.m
//  NodataView
//
//  Created by 黄海燕 on 15/11/19.
//  Copyright © 2015年 Haiyan Huang. All rights reserved.
//

#import "NodataView.h"

@implementation NodataView



- (void)awakeFromNib
{
    [super awakeFromNib];
    self.actionButton.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.actionButton.layer.borderWidth = .5f;
    self.actionButton.layer.cornerRadius = 4;
    self.actionButton.layer.masksToBounds = YES;
}


-(void) setPromptText:(NSString *) promptText
{
    _nodataLabel.text = promptText;
}



@end
