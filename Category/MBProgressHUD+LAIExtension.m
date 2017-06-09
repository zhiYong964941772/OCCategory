//
//  NSObject+LAIExtension.m
//  流媒体
//
//  Created by huazhan Huang on 2017/5/26.
//  Copyright © 2017年 zhiYong_lai. All rights reserved.
//

#import "MBProgressHUD+LAIExtension.h"

@implementation MBProgressHUD (LAIExtension)
+(instancetype)shareProgress{
   static MBProgressHUD *hud;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        hud = [[self alloc]init];
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        [window insertSubview:hud atIndex:1];
        hud.center = window.center;
    });
    return hud;
}
- (void)showProgress{
    [self showAnimated:YES];
}
- (void)hideProgress{
    [self hideAnimated:YES];
}
@end
