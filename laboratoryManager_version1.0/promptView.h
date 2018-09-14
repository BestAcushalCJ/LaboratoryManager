//
//  promptView.h
//  laboratoryManager_version1.0
//
//  Created by BestAcushlaCJ on 2017/3/22.
//  Copyright © 2017年 BestAcushlaCJ. All rights reserved.
//

#import <UIKit/UIKit.h>

//弹出窗口
@interface promptView : UIView

//调整背景的阴影
@property (retain, nonatomic) UIView* backgroundView;

//显示我们想要提示的内容
@property (retain, nonatomic) UILabel* label;

- (instancetype)initWithFrame:(CGRect)frame andStr:(NSString*)str;
- (void)showPromptViewOnView:(UIView *)view;

@end
