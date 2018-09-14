//
//  loginController.m
//  laboratoryManager_version1.0
//
//  Created by BestAcushlaCJ on 2017/3/10.
//  Copyright © 2017年 BestAcushlaCJ. All rights reserved.
//

#import "loginController.h"
#import "mainViewController.h"

@interface loginController ()

@end

@implementation loginController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor grayColor];
    
    //用户名提示标签创建
    _lbUserName = [[UILabel alloc] init];
    _lbUserName.frame = CGRectMake(20, 180, 80, 40);
    _lbUserName.text = @"用户名";
    _lbUserName.font = [UIFont systemFontOfSize:20];
    _lbUserName.textAlignment = NSTextAlignmentLeft;
    
    //用户密码标签创建
    _lbPassword = [[UILabel alloc] init];
    _lbPassword.frame = CGRectMake(20, 260, 80, 40);
    _lbPassword.text = @"密码";
    _lbPassword.font = [UIFont systemFontOfSize:20];
    _lbPassword.textAlignment = NSTextAlignmentLeft;
    
    //用户名文本域
    _tfUserName = [[UITextField alloc] init];
    _tfUserName.frame = CGRectMake(120, 180, 240, 40);
    _tfUserName.placeholder = @"请输入用户名";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    
    //用户密码文本域
    _tfPassword = [[UITextField alloc] init];
    _tfPassword.frame = CGRectMake(120, 260, 240, 40);
    _tfPassword.placeholder = @"请输入密码";
    _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
    _tfPassword.secureTextEntry = YES;
    
    //登陆和注册按钮创建
    btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btLogin.frame = CGRectMake(145,380, 80, 40);
    btLogin.titleLabel.font = [UIFont systemFontOfSize:18];
    [btLogin setTitle:@"登陆" forState:UIControlStateNormal];
    
    [btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_lbUserName];
    [self.view addSubview:_lbPassword];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfPassword];
    [self.view addSubview:btLogin];

}

- (void)pressLogin
{
    NSString* userName = @"Alex";
    NSString* password = @"123";
    
    //获取用户输入的用户名 密码
    NSString* inputUserName = _tfUserName.text;
    NSString* inputPassword = _tfPassword.text;
    
    //创建提示框
    UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"用户名或密码错误" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* actionOK = [UIAlertAction actionWithTitle:@"重新输入" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        //将输入域清空以等待下一次输入
        _tfUserName.text = @"";
        _tfPassword.text = @"";
    }];
    
    [alertController addAction:actionOK];
    
    if([inputUserName isEqualToString:userName] && [inputPassword isEqualToString:password])
    {
        //跳转到下一界面
        mainViewController* mainView = [[mainViewController alloc] init];
        
        UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:mainView];
        
        [self presentViewController:nav animated:YES completion:nil];
        
        [UIApplication sharedApplication].keyWindow.rootViewController = nav;
    }
    //弹出提示信息
    else
        [self presentViewController:alertController animated:YES completion:nil];
}


//当点击空白时 键盘消失
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //回收键盘对象
    [_tfUserName resignFirstResponder];
    [_tfPassword resignFirstResponder];
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
