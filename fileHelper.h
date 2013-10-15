//
//  fileHelper.h
//  pushtest
//
//  Created by Tiankui on 13-9-27.
//  Copyright (c) 2013年 tiankui. All rights reserved.
//

#import <Foundation/Foundation.h>

#define MLOG NSLog(@"[文件名%s]\n,[函数名%s]\n,[行号%d]\n",__FILE__,__FUNCTION__,__LINE__);

@interface fileHelper : NSObject

/*
 数据写入文件
 @params
 */
+ (void) DataToDocumentFile:(NSMutableDictionary *)data
                    filename:(NSString *)filename;

/*
 读取Document下的相应文件,并返回dic数据
 @param filename 名称字符串
 */
+ (NSMutableDictionary *) documentFileToDic:(NSString *)filename;

/*
 获得document下的文件全路径,可用于读写操作
 @param filename 传入的文件名称
 */
+ (NSString *) getDocumentFilePath:(NSString *)filename;
@end
