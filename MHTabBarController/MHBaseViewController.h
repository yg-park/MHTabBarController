//
//  MHBaseViewController.h
//  RRASpaceWxM
//
//  Created by Park Yeon Gu on 13. 9. 9..
//  Copyright (c) 2013년 SELab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MHBaseViewController : UIViewController

- (CGFloat)getTabHeight;
- (void)setMHTabBarHidden:(BOOL)hidden;
- (void)supportRotateOrientation:(UIInterfaceOrientationMask)mask;

@end
