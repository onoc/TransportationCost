//
//  TransportationCostViewController.h
//  TransportationCost
//
//  Created by 小野塚 充博 on 2014/02/15.
//  Copyright (c) 2014年 onozuka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TransportationCostViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *applicationDate;
@property (weak, nonatomic) IBOutlet UISegmentedControl *means;
@property (weak, nonatomic) IBOutlet UITextField *departure;
@property (weak, nonatomic) IBOutlet UITextField *destination;
@property (weak, nonatomic) IBOutlet UITextField *cost;
@property (weak, nonatomic) IBOutlet UILabel *message;

- (IBAction)record:(id)sender;
@end
