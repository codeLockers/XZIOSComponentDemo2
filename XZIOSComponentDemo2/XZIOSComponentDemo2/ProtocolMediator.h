//
//  ProtocolMediator.h
//  XZIOSComponentDemo2
//
//  Created by 徐章 on 2016/12/6.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProtocolMediator : NSObject

+ (instancetype)shareInstance;

- (void)registerProtocol:(Protocol *)protocol forClass:(Class)cls;

- (Class)classForProtocol:(Protocol *)protocol;
@end
