//
//  fixDetailsViewController.h
//  laboratoryManager_version1.0
//
//  Created by BestAcushlaCJ on 2017/3/13.
//  Copyright © 2017年 BestAcushlaCJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface fixDetailsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lbClass;

@property (weak, nonatomic) IBOutlet UILabel *lbFixNum;

@property (weak, nonatomic) IBOutlet UILabel *lbFixInstruction;

@property (weak, nonatomic) IBOutlet UITextField *tfClass;

@property (weak, nonatomic) IBOutlet UITextField *tfFixNum;

@property (weak, nonatomic) IBOutlet UITextView *tvFixInstruction;

@property (weak, nonatomic) IBOutlet UIButton *btnSubmit;

@end
