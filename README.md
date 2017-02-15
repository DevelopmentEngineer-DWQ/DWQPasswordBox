＃DWQPasswordBox
![(logo)](http://chuantu.biz/t5/47/1487062141x1904247604.png)
可高度自定义的密码输入框

##DWQPasswordBoxView

* 此控件提供了几种常见密码框的方式

##相关属性设置
* 输入完成回调  void(^EndEditBlcok)(NSString *text);

* 样式  BoxViewType;

* 是否需要分隔符 hasSpaceLine;

* 是否有下标线 hasUnderLine;

* 是否需要输入之后清空，再次输入使用,默认为NO emptyEditEnd;

* 是否添加下划线的动画,默认NO underLineAnimation;

##有问题反馈
在使用中有任何问题，欢迎反馈给我，可以用以下联系方式跟我交流

* 邮件(duwenquan0414@gmail.com)
* 邮件(439878592@qq.com)
* QQ: 439878592

##代码示例

```objective-c
DWQPasswordBoxView *DWQpbv = [[DWQPasswordBoxView alloc] initWithFrame:CGRectMake(0, 60, 200, 60)
                                                  num:6
                                            lineColor:[UIColor blackColor]
                                             textFont:50];
 //                //下划线
                //                v.hasUnderLine = YES;
                //分割线
                DWQpbv.hasSpaceLine = YES;
                //输入之后置空
                DWQpbv.emptyEditEnd = YES;
                DWQpbv.underLineAnimation = YES;
                //输入风格
                DWQpbv.BoxViewType = DWQPasswordBoxViewTypeCustom;
```
