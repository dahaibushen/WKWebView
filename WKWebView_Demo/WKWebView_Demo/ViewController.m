//
//  ViewController.m
//  WKWebView_Demo
//
//  Created by 胡义勇 on 2018/8/10.
//  Copyright © 2018年 胡义勇. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,weak) id      weakPoint;
@property (nonatomic,assign) id    assignPoint;
@property (nonatomic,strong) id    strongPoint;
@end

@implementation ViewController
- (void)loadView{
    
    [super loadView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.strongPoint = [NSDate date];
    NSLog(@"11strong属性：%p",self.strongPoint);
    self.weakPoint = self.strongPoint;
    self.assignPoint = self.strongPoint;
    self.strongPoint = nil;
    
    NSLog(@"33weak属性：%p :",_weakPoint);
    NSLog(@"22assign属性：%p :",&_assignPoint);
    //测试代码，不用提交
    [self addTestContent];
}
- (void)addTestContent{
    
}

@end
