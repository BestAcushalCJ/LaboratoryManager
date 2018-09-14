//
//  quitDetailsViewController.m
//  laboratoryManager_version1.0
//
//  Created by BestAcushlaCJ on 2017/3/13.
//  Copyright © 2017年 BestAcushlaCJ. All rights reserved.
//

#import "quitDetailsViewController.h"

@interface quitDetailsViewController ()

@end

@implementation quitDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [_swCheck addTarget:self action:@selector(pressSwitch) forControlEvents:UIControlEventValueChanged];
    
    [_btnSubmit addTarget:self action:@selector(pressSubmit) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pressSwitch
{
    if ([_swCheck isOn])
    {
        NSLog(@"switch is on");
    }
    else
    {
        NSLog(@"switch is off");
    }
}


- (void)pressSubmit
{
    NSLog(@"submit success");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
