//
//  ComponentProtocol.h
//  XZIOSComponentDemo2
//
//  Created by 徐章 on 2016/12/6.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@protocol XZViewControllerOneProtocol <NSObject>

- (UIViewController *)viewControllerOne;

@end

@interface ComponentProtocol : NSObject

@end
