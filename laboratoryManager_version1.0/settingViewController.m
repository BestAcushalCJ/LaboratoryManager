//
//  settingViewController.m
//  laboratoryManager_version1.0
//
//  Created by BestAcushlaCJ on 2017/3/11.
//  Copyright © 2017年 BestAcushlaCJ. All rights reserved.
//

#import "settingViewController.h"
#import "remindViewController.h"
#import "feedbackViewController.h"
#import "aboutViewController.h"
#import "loginController.h"

@interface settingViewController ()

@end

@implementation settingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"设置";
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //自动调整子视图的大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    //创建导航栏的右边按钮
    UIBarButtonItem* back = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    
    self.navigationItem.leftBarButtonItem = back;
    
    //测试数据
    //数据连通的时候 到时候动态建立数组来存取课程信息
    NSArray* temp01 = [NSArray arrayWithObjects:@"提醒方式", nil];
    NSArray* temp02 = [NSArray arrayWithObjects:@"意见反馈", nil];
    NSArray* temp03 = [NSArray arrayWithObjects:@"关于", nil];
    NSArray* temp04 = [NSArray arrayWithObjects:@"登出", nil];
    
    _arrayData = [NSMutableArray arrayWithObjects:temp01, temp02, temp03, temp04, nil];
    
    //重新加载数据
    [_tableView reloadData];
    
    [self.view addSubview:_tableView];

}


- (void)pressBack
{
    //返回到上一层视图
    [self.navigationController popViewControllerAnimated:YES];
}


//每组单元格数量
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}


//分组数量
//默认返回1
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //   return _arrayData.count;
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
    //可以用来提示课程名字
    cell.detailTextLabel.text = @"子标题";
    
    //显示单元格右边的肩头
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger selectNum = indexPath.section;
    
    if (selectNum == 0)
    {
        remindViewController* temp = [[remindViewController alloc] init];
        [self.navigationController pushViewController:temp animated:YES];
    }
    else if (selectNum == 1)
    {
        feedbackViewController* temp = [[feedbackViewController alloc] init];
        [self.navigationController pushViewController:temp animated:YES];
    }
    else if (selectNum == 2)
    {
        aboutViewController* temp = [[aboutViewController alloc] init];
        [self.navigationController pushViewController:temp animated:YES];
    }
    else
    {
        //切换到登陆界面
        loginController* temp = [[loginController alloc] init];
        [self presentViewController:temp animated:YES completion:nil];
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
