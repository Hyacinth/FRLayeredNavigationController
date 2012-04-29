//
//  SampleContentViewController.h
//  FancyVCTest
//
//  Created by Johannes Weiß on 4/24/12.
//  Copyright (c) 2012 factis research GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SampleContentViewController : UIViewController<UIScrollViewDelegate> {
    UIImageView *imageView;
    UIScrollView *scrollView;
}

@end