//
//  ViewController.m
//  ZJJCustomButtonSubView
//
//  Created by 张锦江 on 2018/1/16.
//  Copyright © 2018年 ZJJ. All rights reserved.
//

#import "ChangeLocationView.h"

@implementation ChangeLocationView

+ (void)changeButton:(UIButton *)button location:(ButtonLocation)location spacing:(CGFloat)space {
    button.imageView.hidden = NO;
    CGSize imageSize = button.imageView.frame.size;
    CGSize labelSize = button.titleLabel.frame.size;
    if (location == ButtonLocation1) {
        button.imageEdgeInsets = UIEdgeInsetsMake(-(labelSize.height+space)/2,
                                                  labelSize.width/2,
                                                  (labelSize.height+space)/2,
                                                  -labelSize.width/2
                                                  );
        button.titleEdgeInsets = UIEdgeInsetsMake((imageSize.height+space)/2,
                                                  -imageSize.width,
                                                  -(imageSize.height+space)/2,
                                                  0
                                                  );
    } else if (location == ButtonLocation2) {
        button.imageEdgeInsets = UIEdgeInsetsMake((labelSize.height+space)/2,
                                                  labelSize.width/2,
                                                  -(labelSize.height+space)/2,
                                                  -labelSize.width/2
                                                  );
        button.titleEdgeInsets = UIEdgeInsetsMake(-(imageSize.height+space)/2,
                                                  -imageSize.width,
                                                  (imageSize.height+space)/2,
                                                  0
                                                  );
    } else if (location == ButtonLocation3) {
        button.imageEdgeInsets = UIEdgeInsetsMake(0,
                                                  labelSize.width+space/2,
                                                  0,
                                                  -(labelSize.width+space/2)
                                                  );
        button.titleEdgeInsets = UIEdgeInsetsMake(0,
                                                  -(imageSize.width+space/2),
                                                  0,
                                                  imageSize.width+space/2
                                                  );
    } else {}
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
