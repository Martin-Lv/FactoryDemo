//
//  MessageBase.m
//  FactoryDemo
//
//  Created by 吕孟霖 on 2016/11/27.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import "Message.h"
#import "JsonKeyDefs.h"

@implementation MessageBase

- (instancetype)initWithJsonDict:(NSDictionary *)jsonDict
{
    self = [super init];
    if (self) {
        _messageType = jsonDict[MessageTypeKey];
    }
    return self;
}

@end

@implementation TextMessage

- (instancetype)initWithJsonDict:(NSDictionary *)jsonDict
{
    self = [super initWithJsonDict:jsonDict];
    if (self) {
        _content = jsonDict[ContentKey];
    }
    return self;
}

@end
