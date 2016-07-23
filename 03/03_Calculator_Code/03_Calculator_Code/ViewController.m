//
//  ViewController.m
//  03_Calculator_Code
//
//  Created by Yuchao Zhou on 16/7/20.
//  Copyright © 2016年 Yuchao Zhou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	// 1.初始化UI控件，申请空间
	txt1 = [[UITextField alloc] initWithFrame:CGRectMake(26, 71, 80, 30)];
	// by default, textfield's border style is none, need to set here
	txt1.borderStyle = UITextBorderStyleRoundedRect;
	
	txt2 = [[UITextField alloc] initWithFrame:CGRectMake(136, 71, 80, 30)];
	txt2.borderStyle = UITextBorderStyleRoundedRect;
	
	// +号
	UILabel *plusLabel = [[UILabel alloc] initWithFrame:CGRectMake(114, 75, 11, 21)];
	plusLabel.text = @"+";
	// label居中
	plusLabel.textAlignment = NSTextAlignmentCenter;
	// 设置字体
	plusLabel.font = [UIFont systemFontOfSize:17];
	// 设置颜色
	plusLabel.textColor = [UIColor orangeColor];
	
	// =号
	UILabel *equalLabel = [[UILabel alloc] initWithFrame:CGRectMake(224, 75, 11, 21)];
	equalLabel.text = @"=";
	
	// result label
	resultLabel = [[UILabel alloc] initWithFrame:CGRectMake(260, 75, 44, 21)];
	
	// 按钮
	UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	// 设置button的背景颜色
	[button setBackgroundColor:[UIColor grayColor]];
	// 设置按钮的坐标
	button.frame = CGRectMake(26, 168, 91, 38);
	// 设置按钮的文字
	[button setTitle:@"计算" forState:UIControlStateNormal];
	
	
	// 2.把所有初始化的控件添加到视图里面显示
	// self:指的是当前的view controller
	// self.view:指的是storyboard里面最大的那个view
	[self.view addSubview:txt1];
	[self.view addSubview:txt2];
	[self.view addSubview:plusLabel];
	[self.view addSubview:equalLabel];
	[self.view addSubview:resultLabel];
	[self.view addSubview:button];
	
	// 3.为按钮设置响应事件
	[button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

// 点击按钮响应事件
- (void) buttonClick:(id)sender {
	// 1.获取输入框的值
	NSString *str1 = txt1.text;
	NSString *str2 = txt2.text;
	
	// 2.加起来
	int result = [str1 intValue] + [str2 intValue];
	
	// 3.把计算的值付给最后的label
	resultLabel.text = [NSString stringWithFormat:@"%d", result];
}
@end
