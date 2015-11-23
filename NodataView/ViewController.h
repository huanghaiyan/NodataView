//
//  ViewController.h
//  NodataView
//
//  Created by 黄海燕 on 15/11/19.
//  Copyright © 2015年 Haiyan Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NodataView.h"
@interface ViewController : UIViewController
@property (nonatomic,strong) NodataView *nodataView;

-(NSString *) promtText;
-(NodataView *) nodataView;
-(void) showPromptViewWithText:(NSString *) text;
-(void) showNodataView;
-(void) hideNodataView;
-(void) tapNodataViewAction;
@end

