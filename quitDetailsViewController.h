//
//  quitDetailsViewController.h
//  laboratoryManager_version1.0
//
//  Created by BestAcushlaCJ on 2017/3/13.
//  Copyright © 2017年 BestAcushlaCJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface quitDetailsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lbUserName;

@property (weak, nonatomic) IBOutlet UILabel *lbCourse;

@property (weak, nonatomic) IBOutlet UILabel *lbTime;

@property (weak, nonatomic) IBOutlet UILabel *lbReason;

@property (weak, nonatomic) IBOutlet UILabel *lbCheck;

@property (weak, nonatomic) IBOutlet UITextField *tfUserName;

@property (weak, nonatomic) IBOutlet UITextField *tfCourse;

@property (weak, nonatomic) IBOutlet UITextField *tfTime;

@property (weak, nonatomic) IBOutlet UITextView *tvReason;

@property (weak, nonatomic) IBOutlet UISwitch *swCheck;

@property (weak, nonatomic) IBOutlet UIButton *btnSubmit;


@end
