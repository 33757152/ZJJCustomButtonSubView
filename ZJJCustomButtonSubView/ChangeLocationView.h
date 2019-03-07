//
//  ViewController.m
//  ZJJCustomButtonSubView
//
//  Created by 张锦江 on 2018/1/16.
//  Copyright © 2018年 ZJJ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ButtonLocation) {
    /** 图片在上,文字在下 */
    ButtonLocation1 = 1,
    /** 图片在下,文字在上 */
    ButtonLocation2,
    /** 图片在右,文字在左 */
    ButtonLocation3
};

@interface ChangeLocationView : UIView

+ (void)changeButton:(UIButton *)button location:(ButtonLocation)location spacing:(CGFloat)space;

@end

NS_ASSUME_NONNULL_END
