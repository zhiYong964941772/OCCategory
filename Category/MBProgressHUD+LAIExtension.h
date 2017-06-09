//
//  NSObject+LAIExtension.h
//  流媒体
//
//  Created by huazhan Huang on 2017/5/26.
//  Copyright © 2017年 zhiYong_lai. All rights reserved.
//

#import <MBProgressHUD.h>

@interface MBProgressHUD (LAIExtension)
+(instancetype)shareProgress;
-(void)showProgress;
-(void)hideProgress;
@end
