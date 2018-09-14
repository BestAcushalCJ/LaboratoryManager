//
//  accountTool.m
//  laboratoryManager_version1.0
//
//  Created by BestAcushlaCJ on 2017/3/10.
//  Copyright © 2017年 BestAcushlaCJ. All rights reserved.
//

#import "accountTool.h"

@implementation accountTool

- (void)saveAccount:(NSArray*) account
{
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    
    //保存用户信息
    //包括：用户名 密码
    [userDefaults setObject:account forKey:@"account"];
    [userDefaults setObject:[account objectAtIndex:0] forKey:@"userName"];
    [userDefaults setObject:[account objectAtIndex:1] forKey:@"password"];
    [userDefaults setObject:[account objectAtIndex:2] forKey:@"firstStart"];
}


- (NSArray*)getAccount
{
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSArray* array = [userDefaults objectForKey:@"account"];
    
    return array;
}


- (NSString*)getUserName
{
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSString* userName = [userDefaults objectForKey:@"userName"];
    
    return userName;
}


- (NSString*)getPassword
{
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSString* password = [userDefaults objectForKey:@"password"];
    
    return password;
}

- (BOOL)getFirstStart
{
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    
    BOOL firstStart = [userDefaults objectForKey:@"firstStart"];
    
    return firstStart;
}

@end
