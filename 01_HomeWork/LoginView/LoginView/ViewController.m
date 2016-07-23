//
//  ViewController.m
//  LoginView
//
//  Created by Yuchao Zhou on 16/7/23.
//  Copyright © 2016年 Yuchao Zhou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	// initialize components
	loginInfoInputView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 280, 128)];
	loginInfoInputView.backgroundColor = [UIColor colorWithRed:0.99 green:0.69 blue:0.29 alpha:1.0];
	
	qqLabel = [[UILabel alloc] initWithFrame:CGRectMake(22, 26, 39, 21)];
	qqLabel.text = @"QQ:";
	
	passwordLabel = [[UILabel alloc] initWithFrame:CGRectMake(22, 78, 39, 21)];
	passwordLabel.text = @"密码:";
	
	qqTextField = [[UITextField alloc] initWithFrame:CGRectMake(69, 22, 182, 30)];
	// need to set textfield background color
	qqTextField.backgroundColor = [UIColor whiteColor];
	// by default the border style is UITextBorderStyleNone, whic is not round, is square
	qqTextField.borderStyle = UITextBorderStyleRoundedRect;
	
	passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(69, 74, 182, 30)];
	// show dot instead of plain text for password
	passwordTextField.secureTextEntry = YES;
	// need to set textfield background color
	passwordTextField.backgroundColor = [UIColor whiteColor];
	// by default the border style is UITextBorderStyleNone, whic is not round, is square
	passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
	
	loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
	loginButton.frame = CGRectMake(138, 175, 45, 30);
	// set button title
	[loginButton setTitle:@"登入" forState:UIControlStateNormal];
	// set button title text color
	[loginButton setTitleColor:[UIColor colorWithRed:0.00 green:0.47 blue:0.75 alpha:1.0] forState:UIControlStateNormal];
	
	qqInfoLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 232, 280, 21)];
	qqInfoLabel.textColor = [UIColor redColor];
	
	passwordInfoLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 254, 280, 21)];
	passwordInfoLabel.textColor = [UIColor redColor];
	
	// add view to loginInfoInputView
	[loginInfoInputView addSubview:qqLabel];
	[loginInfoInputView addSubview:passwordLabel];
	[loginInfoInputView addSubview:qqTextField];
	[loginInfoInputView addSubview:passwordTextField];
	
	// add subview to self.view
	[self.view addSubview:loginInfoInputView];
	[self.view addSubview:loginButton];
	[self.view addSubview:qqInfoLabel];
	[self.view addSubview:passwordInfoLabel];
	
	// add login button event
	[loginButton addTarget:self action:@selector(loginButtonAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

/**
 *  Read textfield input and show in bottom label
 *
 *  @param sender login button
 */
- (void)loginButtonAction:(id)sender {
	NSString *qq = qqTextField.text;
	NSString *password = passwordTextField.text;
	
	qqInfoLabel.text = [NSString stringWithFormat:@"%@QQ号的密码是:", qq];
	passwordInfoLabel.text = [NSString stringWithFormat:@"[%@]", password];
}

@end
