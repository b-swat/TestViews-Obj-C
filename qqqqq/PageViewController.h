//
//  PageViewController.h
//  TestViews
//
//  Created by Swat on 7/14/18.
//  Copyright © 2018 Swat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageViewController : UIPageViewController <UIPageViewControllerDelegate,UIPageViewControllerDataSource>
{
    NSArray<UIViewController*> *controllers;
}

@end
