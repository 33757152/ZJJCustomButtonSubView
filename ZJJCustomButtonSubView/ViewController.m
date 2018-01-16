//
//  ViewController.m
//  ZJJCustomButtonSubView
//
//  Created by 张锦江 on 2018/1/16.
//  Copyright © 2018年 ZJJ. All rights reserved.
//

#import "ViewController.h"
#import "ZJJButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ZJJButton *button = [[ZJJButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100) withType:0];
    [button setImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
    [button setTitle:@"come go" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(comeOut) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [self creatView];
}

- (void)creatView {
    ZJJButton *button = [[ZJJButton alloc] initWithFrame:CGRectMake(100, 300, 100, 40) withType:1];
    [button setImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
    [button setTitle:@"buybuy.." forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(comeOutRight) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)comeOut {
    NSLog(@"uuuuuuu......");
}

- (void)comeOutRight {
    NSLog(@"rrrrrr......");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
