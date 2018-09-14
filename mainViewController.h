//
//  mainViewController.h
//  laboratoryManager_version1.0
//
//  Created by BestAcushlaCJ on 2017/3/10.
//  Copyright © 2017年 BestAcushlaCJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mainViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>

//数据视图
@property(retain, nonatomic) UITableView* tableView;
    
//数据源
@property(retain, nonatomic) NSMutableArray* arrayData;



@end
