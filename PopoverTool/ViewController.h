//
//  ViewController.h
//  PopoverTool
//
//  Created by gary.liu on 16/11/23.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PriceLabel.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *priceLab;

@property (weak, nonatomic) IBOutlet UIButton *btn;
- (IBAction)btnAction:(id)sender;

@end

