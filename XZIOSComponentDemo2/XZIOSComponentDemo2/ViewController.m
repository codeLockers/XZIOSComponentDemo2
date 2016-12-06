//
//  ViewController.m
//  XZIOSComponentDemo2
//
//  Created by 徐章 on 2016/12/6.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import "ViewController.h"

#import "XZMediator.h"
#import "ProtocolMediator.h"
#import "ComponentProtocol.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btn_Pressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btn_Pressed{

   /**
     方案一
    UIViewController *vc = [XZMediator XZViewControllerOne_viewController:@""];
    [self presentViewController:vc animated:YES completion:nil];
     */
    
    /**
     方案二
    [[XZMediator shareInstance] openURL:@"weread://controllerOne" withParams:@{}];
    */
    
    Class cls = [[ProtocolMediator shareInstance] classForProtocol:@protocol(XZViewControllerOneProtocol)];
    id bookDetailComponent = [[cls alloc] init];
    UIViewController *vc = [bookDetailComponent viewControllerOne];
    [self presentViewController:vc animated:YES completion:nil];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
