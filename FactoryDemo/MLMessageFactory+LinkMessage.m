//
//  MessageFactory+LinkMessage.m
//  FactoryDemo
//
//  Created by 吕孟霖 on 2016/11/27.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import "MLMessageFactory+LinkMessage.h"
#import "LinkMessage.h"

@implementation MLMessageFactory (LinkMessage)

+ (void)load
{
    [self registerMessageClass:[LinkMessage class] forType:MessageTypeLink];
}

@end
