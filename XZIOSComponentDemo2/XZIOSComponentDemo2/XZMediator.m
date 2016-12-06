//
//  XZMediator.m
//  XZIOSComponentDemo2
//
//  Created by 徐章 on 2016/12/6.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import "XZMediator.h"

@interface XZMediator()

@property (nonatomic, strong) NSMutableDictionary *cache;

@end

@implementation XZMediator

/**
  方案一
+ (UIViewController *)XZViewControllerOne_viewController:(NSString *)bookId {
    Class cls = NSClassFromString(@"XZViewControllerOne");
    return [cls performSelector:NSSelectorFromString(@"viewControllerOne:") withObject:@{@"bookId":bookId}];
}
*/

/**
 方案二
+ (instancetype)shareInstance{

    static XZMediator *mediator = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediator = [[XZMediator alloc] init];
    });
    return mediator;
}

- (void)registerURLPattern:(NSString *)urlPattern toHandler:(componentBlock)block{

    [self.cache setObject:block forKey:urlPattern];
}

- (void)openURL:(NSString *)url withParams:(id)params{

    componentBlock block = self.cache[url];
    if (block)
        block(params);
}

- (NSMutableDictionary *)cache{

    if (!_cache) {
        _cache = [[NSMutableDictionary alloc] init];
    }
    return _cache;
}
*/
@end
