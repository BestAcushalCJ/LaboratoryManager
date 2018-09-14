//
//  accountTool.h
//  laboratoryManager_version1.0
//
//  Created by BestAcushlaCJ on 2017/3/10.
//  Copyright © 2017年 BestAcushlaCJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface accountTool : NSObject

//存储账号信息
- (void)saveAccount:(NSArray*) account;

//获得账号信息
- (NSArray*)getAccount;

//获得用户名
- (NSString*)getUserName;

//获得用户密码
- (NSString*)getPassword;

//获取是否第一次启动
- (BOOL)getFirstStart;

@end
