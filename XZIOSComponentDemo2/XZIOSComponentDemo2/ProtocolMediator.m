//
//  ProtocolMediator.m
//  XZIOSComponentDemo2
//
//  Created by 徐章 on 2016/12/6.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import "ProtocolMediator.h"

@interface ProtocolMediator()

@property (nonatomic, strong) NSMutableDictionary *cache;
@end

@implementation ProtocolMediator

+ (instancetype)shareInstance{

    static ProtocolMediator *mediator = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediator = [[ProtocolMediator alloc] init];
    });
    return mediator;
}

- (void)registerProtocol:(Protocol *)protocol forClass:(Class)cls{

    [self.cache setObject:cls forKey:NSStringFromProtocol(protocol)];
}

- (Class)classForProtocol:(Protocol *)protocol{

    return [self.cache objectForKey:NSStringFromProtocol(protocol)];
}

- (NSMutableDictionary *)cache{

    if (!_cache) {
        _cache = [[NSMutableDictionary alloc] init];
    }
    return _cache;
}
@end
