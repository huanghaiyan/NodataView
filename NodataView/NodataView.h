//
//  NodataView.h
//  NodataView
//
//  Created by 黄海燕 on 15/11/19.
//  Copyright © 2015年 Haiyan Huang. All rights reserved.
//

#import <UIKit/UIKit.h>


//没有数据时的提示view
@interface NodataView : UIView
@property (weak, nonatomic) IBOutlet UIImageView *NoDataImageView;
@property (weak, nonatomic) IBOutlet UILabel *nodataLabel;
@property (weak, nonatomic) IBOutlet UILabel *checkLabel;

@property (weak, nonatomic) IBOutlet UIButton *actionButton;

-(void) setPromptText:(NSString *) promptText;
@end
