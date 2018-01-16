//
//  ZJJButton.h
//  ZJJCustomButtonSubView
//
//  Created by 张锦江 on 2018/1/16.
//  Copyright © 2018年 ZJJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZJJButton : UIButton

/**type
 0 : image up , title down.
 1 : image left , title right.
 */

- (instancetype)initWithFrame:(CGRect)frame withType:(NSInteger)type;

@end
