//
//  JsonKeyDefs.h
//  FactoryDemo
//
//  Created by 吕孟霖 on 2016/11/27.
//  Copyright © 2016年 menglin. All rights reserved.
//

#ifndef JsonKeyDefs_h
#define JsonKeyDefs_h

#import <Foundation/Foundation.h>

static NSString * const MessageTypeKey = @"message_type";

static NSString * const LinkKey = @"link";

static NSString * const ContentKey = @"content";

/* message json dict example:
 {
    "message_type":"text",
    "content":"hello"
 }
 {
    "message_type:"link",
    "link":"www.baidu.com"
 }
 */


#endif /* JsonKeyDefs_h */
