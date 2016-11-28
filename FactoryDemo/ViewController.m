//
//  ViewController.m
//  FactoryDemo
//
//  Created by 吕孟霖 on 2016/11/27.
//  Copyright © 2016年 menglin. All rights reserved.
//

#import "ViewController.h"
#import "Message.h"
#import "LinkMessage.h"
#import "MLMessageFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *textMessageJson = @"{\"message_type\":\"text\",\"content\":\"hello\"}";
    NSString *linkMessageJson = @"{\"message_type\":\"link\",\"link\":\"http://www.baidu.com\"}";
    NSDictionary *textMessageDict = [NSJSONSerialization JSONObjectWithData:[textMessageJson dataUsingEncoding:NSUTF8StringEncoding] options:0 error:nil];
    NSDictionary *linkMessageDict = [NSJSONSerialization JSONObjectWithData:[linkMessageJson dataUsingEncoding:NSUTF8StringEncoding] options:0 error:nil];
    TextMessage *textMessage = [MLMessageFactory messageByJsonDict:textMessageDict];
    NSLog(@"text message content:%@",textMessage.content);
    LinkMessage *linkMessage = [MLMessageFactory messageByJsonDict:linkMessageDict];
    NSLog(@"link message url:%@",linkMessage.linkUrl);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
