//
//  ViewController.m
//  ZJJCustomButtonSubView
//
//  Created by 张锦江 on 2018/1/16.
//  Copyright © 2018年 ZJJ. All rights reserved.
//

#import "ViewController.h"
#import "ChangeLocationView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self button1];
    [self button2];
    [self button3];
}

- (void)button1 {
    UIButton *button = [self creatButton];
    button.frame = CGRectMake(50, 60, 60, 60);
    [ChangeLocationView changeButton:button location:ButtonLocation1 spacing:3];
    [self.view addSubview:button];
}

- (void)button2 {
    UIButton *button = [self creatButton];
    button.frame = CGRectMake(50, 170, 60, 60);
    [ChangeLocationView changeButton:button location:ButtonLocation2 spacing:3];
    [self.view addSubview:button];
}

- (void)button3 {
    UIButton *button = [self creatButton];
    button.frame = CGRectMake(50, 280, 60, 60);
    [ChangeLocationView changeButton:button location:ButtonLocation3 spacing:3];
    [self.view addSubview:button];
}

- (UIButton *)creatButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor cyanColor];
    [button setTitle:@"ok" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    return button;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
