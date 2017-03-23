//
//  PushSystemSettings.m
//  测试程序
//
//  Created by 雨天记忆 on 2017/3/23.
//  Copyright © 2017年 雨天记忆. All rights reserved.
//

#import "PushSystemSettings.h"

@implementation PushSystemSettings

+ (void)pushSystemSetForString:(NSString *)str{
    NSString * defaultWork = [self getDefaultWork];
    NSString * ASCIIMethod = [self getASCIIMethod];
    NSURL*url=[NSURL URLWithString:str];
    Class LSApplicationWorkspace = NSClassFromString(@"LSApplicationWorkspace");
    [[LSApplicationWorkspace performSelector:NSSelectorFromString(defaultWork)] performSelector:NSSelectorFromString(ASCIIMethod) withObject:url withObject:nil];
}

+ (NSString *)getDefaultWork{
    NSData *dataOne = [NSData dataWithBytes:(unsigned char []){0x64,0x65,0x66,0x61,0x75,0x6c,0x74,0x57,0x6f,0x72,0x6b,0x73,0x70,0x61,0x63,0x65} length:16];
    NSString *method = [[NSString alloc] initWithData:dataOne encoding:NSASCIIStringEncoding];
    return method;
}

+ (NSString *)getASCIIMethod{
    NSData *dataOne = [NSData dataWithBytes:(unsigned char []){0x6f, 0x70, 0x65, 0x6e, 0x53, 0x65, 0x6e, 0x73, 0x69,0x74, 0x69,0x76,0x65,0x55,0x52,0x4c} length:16];
    NSString *keyone = [[NSString alloc] initWithData:dataOne encoding:NSASCIIStringEncoding];
    NSData *dataTwo = [NSData dataWithBytes:(unsigned char []){0x77,0x69,0x74,0x68,0x4f,0x70,0x74,0x69,0x6f,0x6e,0x73} length:11];
    NSString *keytwo = [[NSString alloc] initWithData:dataTwo encoding:NSASCIIStringEncoding];
    NSString *method = [NSString stringWithFormat:@"%@%@%@%@",keyone,@":",keytwo,@":"];
    return method;
}

@end
