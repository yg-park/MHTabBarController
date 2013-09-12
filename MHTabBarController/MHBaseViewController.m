//
//  MHBaseViewController.m
//  RRASpaceWxM
//
//  Created by Park Yeon Gu on 13. 9. 9..
//  Copyright (c) 2013년 SELab. All rights reserved.
//

#import "MHBaseViewController.h"
#import "MHTabBarController.h"


@implementation MHBaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)getTabHeight
{
    return MHTabBarHeight;
}

- (void)setMHTabBarHidden:(BOOL)hidden
{
    NSString *hiddenString = (hidden == YES) ? @"YES" : @"NO";
    [[NSNotificationCenter defaultCenter] postNotificationName:MHNotificationTabHide object:hiddenString];
}

- (void)supportRotateOrientation:(UIInterfaceOrientationMask)mask
{
    NSNumber *value = [[NSNumber alloc] initWithInt:mask];
    [[NSNotificationCenter defaultCenter] postNotificationName:MHNotificationRotateOrientation object:value];
}

@end
