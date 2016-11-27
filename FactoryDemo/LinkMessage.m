//
//  LinkMessage.m
//  FactoryDemo
//
//  Created by 吕孟霖 on 2016/11/27.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import "LinkMessage.h"
#import "JsonKeyDefs.h"

@implementation LinkMessage

- (instancetype)initWithJsonDict:(NSDictionary *)jsonDict
{
    self = [super initWithJsonDict:jsonDict];
    if (self) {
        NSString *urlString = jsonDict[LinkKey];
        _linkUrl = [NSURL URLWithString:urlString];
    }
    return self;
}

@end
