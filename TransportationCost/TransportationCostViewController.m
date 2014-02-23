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
    //乗り物を取得
    NSInteger meansIndex = self.means.selectedSegmentIndex;
    
    //選択された値によって文字列を設定
    NSString *meansName;
    switch (meansIndex) {
        case 0:
            meansName = @"電車";
        case 1:
            meansName = @"バス";
        case 2:
            meansName = @"タクシー";
        default:
            break;
    }
    
    //出発地と目的地を取得
    self.message.text = [NSString stringWithFormat:@"%@ 〜 %@：%@円で登録しました。"
                         ,self.departure.text,self.destination.text,self.cost.text];
    
}
@end
