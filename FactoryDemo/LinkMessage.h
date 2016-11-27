//
//  LinkMessage.h
//  FactoryDemo
//
//  Created by 吕孟霖 on 2016/11/27.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import "Message.h"

static NSString * const MessageTypeLink = @"link";

@interface LinkMessage : MessageBase

@property(nonatomic, strong, readonly)NSURL *linkUrl;

@end
