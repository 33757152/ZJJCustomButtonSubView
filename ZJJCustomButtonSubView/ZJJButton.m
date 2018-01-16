//
//  ZJJButton.m
//  ZJJCustomButtonSubView
//
//  Created by 张锦江 on 2018/1/16.
//  Copyright © 2018年 ZJJ. All rights reserved.
//

#import "ZJJButton.h"

@interface ZJJButton ()

@property (nonatomic, assign) CGSize buttonSize;
@property (nonatomic, assign) NSInteger typeInt;

@end

@implementation ZJJButton

- (instancetype)initWithFrame:(CGRect)frame withType:(NSInteger)type{
    self = [super initWithFrame:frame];
    if (self) {
        self.buttonSize = frame.size;
        self.typeInt = type;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.layer.cornerRadius = 5.0f;
    self.imageView.clipsToBounds = YES;
    self.titleLabel.adjustsFontSizeToFitWidth = YES;
    if (_typeInt == 0) {
        self.imageView.frame = CGRectMake(_buttonSize.width*3/15, _buttonSize.width/15, _buttonSize.width*3/5, _buttonSize.width*3/5);
        self.titleLabel.frame = CGRectMake(0, _buttonSize.height*11/15, _buttonSize.width, _buttonSize.width/5);
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }else if (_typeInt == 1) {
        self.imageView.frame = CGRectMake(_buttonSize.width/15, (_buttonSize.height-_buttonSize.width/5)/2, _buttonSize.width/5, _buttonSize.width/5);
        self.titleLabel.frame = CGRectMake(_buttonSize.width/3, (_buttonSize.height-_buttonSize.width/5)/2, _buttonSize.width*3/5, _buttonSize.width/5);
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
