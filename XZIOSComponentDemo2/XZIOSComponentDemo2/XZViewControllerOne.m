//
//  XZViewControllerOne.m
//  XZIOSComponentDemo2
//
//  Created by 徐章 on 2016/12/6.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import "XZViewControllerOne.h"
#import "XZMediator.h"
#import "ProtocolMediator.h"
#import "ComponentProtocol.h"
@interface XZViewControllerOne ()

@end

@implementation XZViewControllerOne
/**
 方案一
+ (UIViewController *)viewControllerOne:(NSDictionary *)params{
    
    XZViewControllerOne *vc = [[XZViewControllerOne alloc] init];
    return vc;
}
*/

/**
 方案二
+ (void)load{

    [[XZMediator shareInstance] registerURLPattern:@"weread://controllerOne" toHandler:^(id param) {
       
        XZViewControllerOne *vc = [[XZViewControllerOne alloc] init];
        
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:vc animated:YES completion:nil];
    }];
}
*/

+ (void)load{

    [[ProtocolMediator shareInstance] registerProtocol:@protocol(XZViewControllerOneProtocol) forClass:[self class]];
}

- (UIViewController *)viewControllerOne{

    XZViewControllerOne *vc = [[XZViewControllerOne alloc] init];
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [btn addTarget:self action:@selector(btn_Pressed) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:btn];
}

- (void)btn_Pressed{

    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
