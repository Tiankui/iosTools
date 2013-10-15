//
//  appHelper.m
//  pushtest
//
//  Created by Yun on 13-9-27.
//  Copyright (c) 2013年 tiankui. All rights reserved.
//

#import "appHelper.h"

@implementation appHelper

//111
+ (NSString *) tokenNormalise:(NSData *) _deviceToken
{
    NSString *token = [[_deviceToken description]stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"<>"]];
    token = [[token description] stringByReplacingOccurrencesOfString:@" " withString:@""];
    return token;
}
@end
