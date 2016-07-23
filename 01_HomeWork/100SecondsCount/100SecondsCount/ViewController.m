//
//  ViewController.m
//  100SecondsCount
//
//  Created by Yuchao Zhou on 16/7/23.
//  Copyright © 2016年 Yuchao Zhou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
	NSTimer *countDownTimer;
	int countTime;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	countTime = 100;
	countDownTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerTick:) userInfo:nil repeats:YES];

}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)timerTick:(NSTimer *)timer {
	if (countTime >= 0) {
		if (countTime == 0) {
			NSLog(@"%d boomshakalaka", countTime);
		} else {
			NSLog(@"%d", countTime);
		}
		countTime--;
	} else {
		[timer invalidate];
		timer = nil;
	}
}

@end
