//
//  MessageFactory.m
//  FactoryDemo
//
//  Created by 吕孟霖 on 2016/11/27.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import "MessageFactory.h"
#import "Message.h"
#import "JsonKeyDefs.h"

static NSMutableDictionary<NSString *, NSString *>* messageTypeDict;

@implementation MessageFactory

+ (void)load
{
    if (!messageTypeDict) {
        messageTypeDict = [[NSMutableDictionary alloc] init];
    }
    [self registerMessageClass:[TextMessage class] forType:MessageTypeText];
}

+ (void)registerMessageClass:(Class)messageClass forType:(NSString *)messageType
{
    NSString *className = NSStringFromClass(messageClass);
    [messageTypeDict setObject:className forKey:messageType];
    NSLog(@"register class %@ for type %@", className, messageType);
}

+ (__kindof MessageBase *)messageByJsonDict:(NSDictionary *)jsonDict
{
    NSString *type = jsonDict[MessageTypeKey];
    if (!type || ![type isKindOfClass:[NSString class]]) {
        return nil;
    }
    NSString *className = messageTypeDict[type];
    if (!className) {
        return nil;
    }
    MessageBase *message = [(MessageBase *)[NSClassFromString(className) alloc] initWithJsonDict:jsonDict];
    return message;
}

@end
