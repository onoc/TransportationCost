//
//  TransportationCostViewController.m
//  TransportationCost
//
//  Created by 小野塚 充博 on 2014/02/15.
//  Copyright (c) 2014年 onozuka. All rights reserved.
//

#import "TransportationCostViewController.h"

@interface TransportationCostViewController ()

@end

@implementation TransportationCostViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //日付の挿入
    NSDate *now = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];

    //画面に出力
    self.applicationDate.text = [formatter stringFromDate:now];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)record:(id)sender {
}
@end
