//
//  ViewController.m
//  NodataView
//
//  Created by 黄海燕 on 15/11/19.
//  Copyright © 2015年 Haiyan Huang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

-(NodataView *)nodataView
{
    if (!_nodataView) {
        _nodataView = [[[NSBundle mainBundle] loadNibNamed:@"NodataView" owner:self options:nil] firstObject];
        _nodataView.translatesAutoresizingMaskIntoConstraints = NO;
        [_nodataView.actionButton addTarget:self action:@selector(tapNodataViewAction) forControlEvents:UIControlEventTouchUpInside];
        
        
    }
    return _nodataView;
}

-(void)showPromptViewWithText:(NSString *)text
{

    [self.view addSubview:[self nodataView]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_nodataView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_nodataView)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_nodataView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_nodataView)]];
    [_nodataView setPromptText:text];
}

-(void)showNodataView
{
    
    [self showPromptViewWithText:[self promtText]];
}

-(void)hideNodataView
{
    [_nodataView removeFromSuperview];
}

-(void)tapNodataViewAction
{
    //子类重写
    NSLog(@"重新加载数据");
}

-(NSString *)promtText
{
    
    return @"网络连接失败";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self showNodataView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
