//
//  promptView.m
//  laboratoryManager_version1.0
//
//  Created by BestAcushlaCJ on 2017/3/22.
//  Copyright © 2017年 BestAcushlaCJ. All rights reserved.
//

#import "promptView.h"

@implementation promptView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame andStr:(NSString*)str
{
    self = [super initWithFrame:frame];
    
    if(self)
    {
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label.center = self.center;
        _label.backgroundColor = [UIColor whiteColor];
        _label.textAlignment = NSTextAlignmentLeft;
        _label.text = str;
        
        self.backgroundColor = [UIColor clearColor];
        
        _backgroundView = [[UIView alloc] initWithFrame:self.bounds];
        _backgroundView.backgroundColor = [UIColor blackColor];
        _backgroundView.alpha = 0.1;
        
        //弹出的视图在5秒后自动消失
        [self performSelector:@selector(hide) withObject:self afterDelay:5];
        
    }
    
    return self;
}

- (void)hide
{
    //使用动画不好看
//    [UIView animateWithDuration:10 animations:^{
//        _label.frame =CGRectMake(-200, _backgroundView.center.y, 200, 200);
//    } completion:^(BOOL finished) {
        [_backgroundView removeFromSuperview];
        [_label removeFromSuperview];
        
        [self removeFromSuperview];
        
//    }];
}



-(void)showPromptViewOnView:(UIView *)view
{
    [view addSubview:_backgroundView];
    [view addSubview:_label];
    
    [UIView animateWithDuration:0.2 animations:^{
        _label.frame =CGRectMake(100, _backgroundView.center.y, 200, 200); }];
}

@end
