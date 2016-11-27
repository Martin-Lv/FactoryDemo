//
//  MessageBase.h
//  FactoryDemo
//
//  Created by 吕孟霖 on 2016/11/27.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const MessageTypeText = @"text";

@interface MessageBase : NSObject

@property(nonatomic, strong, readonly)NSString *messageType;

- (instancetype)initWithJsonDict:(NSDictionary *)jsonDict;

@end

@interface TextMessage : MessageBase

@property (nonatomic, strong, readonly)NSString *content;

@end


