//
//  loginController.h
//  laboratoryManager_version1.0
//
//  Created by BestAcushlaCJ on 2017/3/10.
//  Copyright © 2017年 BestAcushlaCJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loginController : UIViewController
{
    //登陆界面的组成
    //用户名提示：输入框
    //密码提示：输入框
    //登陆按钮
    //注册按钮
    
    //用户提示label
    UILabel* _lbUserName;
    //密码提示label
    UILabel* _lbPassword;
    
    //用户输入框
    UITextField* _tfUserName;
    //密码输入框
    UITextField* _tfPassword;
    
    //登陆按钮
    UIButton* btLogin;
    
}

@end
