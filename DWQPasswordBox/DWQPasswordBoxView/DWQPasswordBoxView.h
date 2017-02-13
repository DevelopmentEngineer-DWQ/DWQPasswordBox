//
//  DWQPasswordBoxView.h
//  DWQPasswordBox
//
//  Created by 杜文全 on 15/4/16.
//  Copyright © 2015年 com.sdaj.duwenquan. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,DWQPasswordBoxViewType) {
    DWQPasswordBoxViewTypeCustom,//普通样式
    DWQPasswordBoxViewTypeSecret//密码风格
};
@interface DWQPasswordBoxView : UIView

//输入完成回调
@property (nonatomic, copy) void(^EndEditBlcok)(NSString *text);

//样式
@property (nonatomic, assign) DWQPasswordBoxViewType BoxViewType;

//是否需要分隔符
@property (nonatomic, assign) BOOL hasSpaceLine;
//是否有下标线
@property (nonatomic, assign) BOOL hasUnderLine;

//是否需要输入之后清空，再次输入使用,默认为NO
@property (nonatomic, assign) BOOL emptyEditEnd;

//是否添加下划线的动画,默认NO
@property (nonatomic, assign) BOOL underLineAnimation;

- (instancetype)initWithFrame:(CGRect)frame
                          num:(NSInteger)num
                    lineColor:(UIColor *)lColor
                     textFont:(CGFloat)font;

- (void)beginEdit;
- (void)endEdit;

@end
