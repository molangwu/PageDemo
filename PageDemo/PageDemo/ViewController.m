//
//  ViewController.m
//  PageDemo
//
//  Created by liangaiwu on 2020/7/16.
//  Copyright © 2020 liangaiwu. All rights reserved.
//

#import "ViewController.h"
#import "AWPageContainerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AWPageContainerView *containereView = [[AWPageContainerView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:containereView];
    
    [containereView addPage];
    [containereView addPage];
    [containereView addPage];
    
    UIView *page1 = [containereView getPageBy:0];
    page1.backgroundColor = UIColor.orangeColor;
    
    UIView *page2 = [containereView getPageBy:1];
    page2.backgroundColor = UIColor.yellowColor;
    
    UIView *page3 = [containereView getPageBy:2];
    page3.backgroundColor = UIColor.greenColor;
}


@end
