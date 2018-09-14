//
//  remindViewController.m
//  laboratoryManager_version1.0
//
//  Created by BestAcushlaCJ on 2017/3/20.
//  Copyright © 2017年 BestAcushlaCJ. All rights reserved.
//

#import "remindViewController.h"

@interface remindViewController ()

@end

@implementation remindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"提醒方式";
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //自动调整子视图的大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    //是否开启推送在系统设定直接设置 app没有权限
    _arrayData = [NSMutableArray arrayWithObjects:@"短信提醒", @"邮件提醒",  nil];
    
    //重新加载数据
    [_tableView reloadData];
    
    [self.view addSubview:_tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//每组单元格数量
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrayData.count;
}


//分组数量
//默认返回1
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //   return _arrayData.count;
    return 1;
}


//创建单元格
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* str = @"id";
    
    //尝试获取可以复用的单元格
    //如果得不到，返回为nil
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:str];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
    }
    
    //单元格文字赋值
    cell.textLabel.text = [_arrayData objectAtIndex:indexPath.row];
    
    UISwitch* sw = [[UISwitch alloc] initWithFrame:CGRectZero];
    
    [sw addTarget:self action:@selector(updateSwitchAtIndexPath:) forControlEvents:UIControlEventValueChanged];
    
    //单元格右方显示开关
    cell.accessoryView = sw;
    
    return cell;
}

- (void)updateSwitchAtIndexPath:(UISwitch*) sw
{
    if ([sw isOn])
    {
        NSLog(@"switch is on");
    }
    else
    {
        NSLog(@"switch is off");
    }
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
