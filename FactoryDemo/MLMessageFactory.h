//
//  MessageFactory.h
//  FactoryDemo
//
//  Created by 吕孟霖 on 2016/11/27.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Message.h"

@interface MLMessageFactory : NSObject

+ (void)registerMessageClass:(Class)messageClass forType:(NSString *)messageType;

+ (__kindof MessageBase *)messageByJsonDict:(NSDictionary *)jsonDict;

@end
