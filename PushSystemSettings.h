//
//  PushSystemSettings.h
//  测试程序
//
//  Created by 雨天记忆 on 2017/3/23.
//  Copyright © 2017年 雨天记忆. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PushSystemSettings : NSObject

//str是ios10之前跳转填写的字符 注意：（prefs 第一个字母P要大写）
+ (void)pushSystemSetForString:(NSString *)str;

@end
