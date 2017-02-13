//
//  ViewController.m
//  DWQPasswordBox
//
//  Created by 杜文全 on 15/4/16.
//  Copyright © 2015年 com.sdaj.duwenquan. All rights reserved.
//

#import "ViewController.h"
#import "DWQPasswordBoxView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addView];
}


- (void)addView {
    
    NSArray *arr = @[@"普通，下划线 分割线",
                     @"普通，下划线",
                     @"密码",
                     @"密码，分割线"];
    for (NSInteger i = 0; i < arr.count; i ++) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 40 + 80 * i, self.view.frame.size.width, 20)];
        label.textAlignment = NSTextAlignmentCenter;
        label.text = arr[i];
        [self.view addSubview:label];
        
        DWQPasswordBoxView *DWQpbv = [[DWQPasswordBoxView alloc] initWithFrame:CGRectMake(0, 60 + 80 * i, self.view.frame.size.width - 10, 60)
                                                  num:6
                                            lineColor:[UIColor blackColor]
                                             textFont:50];
        
        switch (i) {
            case 0:
            {
                //                //下划线
                //                v.hasUnderLine = YES;
                //分割线
                DWQpbv.hasSpaceLine = YES;
                //输入之后置空
                DWQpbv.emptyEditEnd = YES;
                DWQpbv.underLineAnimation = YES;
                //输入风格
                DWQpbv.BoxViewType = DWQPasswordBoxViewTypeCustom;
            }
                break;
            case 1:
            {
                //下划线
                DWQpbv.hasUnderLine = YES;
                //分割线
                DWQpbv.hasSpaceLine = NO;
                
                //输入风格
                DWQpbv.BoxViewType = DWQPasswordBoxViewTypeCustom;
            }
                break;
            case 2:
            {
                //下划线
                DWQpbv.hasUnderLine = NO;
                //分割线
                DWQpbv.hasSpaceLine = NO;
                
                //输入风格
                DWQpbv.BoxViewType  = DWQPasswordBoxViewTypeSecret;
            }
                break;
            case 3:
            {
                //下划线
                DWQpbv.hasUnderLine = NO;
                //分割线
                DWQpbv.hasSpaceLine = YES;
                
                //输入风格
                DWQpbv.BoxViewType = DWQPasswordBoxViewTypeSecret;
            }
                break;
            default:
                break;
        }
        
        
        DWQpbv.EndEditBlcok = ^(NSString *str) {
            NSLog(@"%@",str);
        };
        [self.view addSubview:DWQpbv];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
