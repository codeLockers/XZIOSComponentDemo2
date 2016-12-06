//
//  XZMediator.h
//  XZIOSComponentDemo2
//
//  Created by 徐章 on 2016/12/6.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

typedef void (^componentBlock)(id param);

@interface XZMediator : NSObject
/**
 方案一
+ (UIViewController *)XZViewControllerOne_viewController:(NSString *)bookId;
 */

/**
 方案二
+ (instancetype)shareInstance;
- (void)registerURLPattern:(NSString *)urlPattern toHandler:(componentBlock)block;
- (void)openURL:(NSString *)url withParams:(id)params;
 */
@end
