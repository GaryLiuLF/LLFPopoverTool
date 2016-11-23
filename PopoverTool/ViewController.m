//
//  ViewController.m
//  PopoverTool
//
//  Created by gary.liu on 16/11/23.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

#import "ViewController.h"
#import "PopoverView.h"

@interface ViewController ()

@property (nonatomic, strong) PriceLabel *oldPriceLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _oldPriceLabel = [[PriceLabel alloc]initWithFrame:CGRectMake(140, 37, 74, 28)];
    _oldPriceLabel.font = [UIFont systemFontOfSize:22.0f];
    _oldPriceLabel.textColor = [UIColor blackColor];
    _oldPriceLabel.text = @"$ 999";
    _oldPriceLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_oldPriceLabel];
    
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 100)];
    lab.text = @"这是一个有趣的泡泡";
    lab.adjustsFontSizeToFitWidth = YES;
    lab.textAlignment = NSTextAlignmentCenter;
    lab.textColor = [UIColor blackColor];
    lab.backgroundColor = [UIColor clearColor];
    
    PopoverView *popoverView = [[PopoverView alloc]initWithFrame:CGRectMake(10, 300, 200, 100)];
    popoverView.fillColor = [UIColor darkGrayColor];
    
    [self.view addSubview:popoverView];
    popoverView.arrowPosition = self.btn.center.x;
    [popoverView addSubview:lab];
}


- (IBAction)btnAction:(id)sender
{
    
}



@end
