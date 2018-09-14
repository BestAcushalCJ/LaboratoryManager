//
//  mainViewController.m
//  laboratoryManager_version1.0
//
//  Created by BestAcushlaCJ on 2017/3/10.
//  Copyright © 2017年 BestAcushlaCJ. All rights reserved.
//

//请假 课程三个界面可以共用同样的数据
//在请假的单元格上增加相应的事件响应即可
//停课界面 应该是获取老师通知 然后显示即可
//报修的逻辑功能位置

#import "mainViewController.h"
#import "coursesViewController.h"
#import "quitViewController.h"
#import "fixViewController.h"
#import "settingViewController.h"

@interface mainViewController ()

@end

@implementation mainViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置导航栏的相关参数
    self.navigationItem.title = @"实验室管理系统";
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //自动调整子视图的大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    
    NSArray* temp01 = [NSArray arrayWithObjects:@"课程", nil];
    NSArray* temp03 = [NSArray arrayWithObjects:@"报修", nil];
    NSArray* temp02 = [NSArray arrayWithObjects:@"请假", nil];
    NSArray* temp04 = [NSArray arrayWithObjects:@"设置", nil];
    
    _arrayData = [[NSMutableArray alloc] initWithObjects:temp01, temp02, temp03, temp04, nil];
    
//    _arrayData = [[NSMutableArray alloc] initWithObjects:@"课程", @"保修", @"请假", @"设置", nil];
    
    [self.view addSubview: _tableView];
    
    //当数据视图的数据源发生变化时
    //更新数据视图，重新加载数据
    [_tableView reloadData];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}


//默认返回1
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
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
    cell.textLabel.text = [[_arrayData objectAtIndex:indexPath.section] objectAtIndex:0];
    
    //设置文字子标题
    cell.detailTextLabel.text = @"子标题";
    
    //显示单元格右边的肩头
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //获取选中的单元格序号
    NSInteger selectedNum = indexPath.section;
    
    //根据选中的单元格 弹出不同的窗口
    if(selectedNum == 0)
    {
        coursesViewController* vc01 = [[coursesViewController alloc] init];
        [self.navigationController pushViewController:vc01 animated:YES];
    }
    else if(selectedNum == 1)
    {
        quitViewController* vc02 = [[quitViewController alloc] init];
        [self.navigationController pushViewController:vc02 animated:YES];
    }
    else if(selectedNum == 2)
    {
        fixViewController* vc03 = [[fixViewController alloc] init];
        [self.navigationController pushViewController:vc03 animated:YES];
    }
    else
    {
        settingViewController* vc04 = [[settingViewController alloc] init];
        [self.navigationController pushViewController:vc04 animated:YES];
    }
    
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
