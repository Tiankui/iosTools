//
//  fileHelper.m
//  pushtest
//
//  Created by Yun on 13-9-27.
//  Copyright (c) 2013年 tiankui. All rights reserved.
//

#import "fileHelper.h"

@implementation fileHelper

- (id)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

+ (void)DataToDocumentFile:(NSMutableDictionary *)data filename:(NSString *)_filename
{
    NSString *filePath = [[fileHelper getDocumentFilePath:_filename]retain];
    [data writeToFile:filePath atomically:YES];
    [filePath release];
}

+ (NSMutableDictionary *)documentFileToDic:(NSString *)_filename
{
    NSString *filePath = [fileHelper getDocumentFilePath:_filename];
    NSMutableDictionary *data = [[[NSMutableDictionary alloc]initWithContentsOfFile:filePath]autorelease];
    return data;
}

+ (NSString *) getDocumentFilePath:(NSString *) _filename
{
    //C函数获取document数组
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    NSString *filename=[documentDirectory stringByAppendingPathComponent:_filename];
    return filename;
}
@end
