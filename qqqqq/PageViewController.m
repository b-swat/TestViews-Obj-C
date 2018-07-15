//
//  PageViewController.m
//  TestViews
//
//  Created by Swat on 7/14/18.
//  Copyright © 2018 Swat. All rights reserved.
//

#import "PageViewController.h"

@interface PageViewController ()

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    controllers = [[NSArray alloc] initWithObjects:[self getVC:@"Green"], [self getVC:@"Yellow"],[self getVC:@"Red"] , nil];
    self.dataSource = self;
    [self setViewControllers:@[[controllers firstObject]] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIViewController*) getVC:(NSString*) _name
{
    return [[UIStoryboard storyboardWithName:@"PageView" bundle:nil] instantiateViewControllerWithIdentifier:_name];
}





- (nullable UIViewController *)pageViewController:(nonnull UIPageViewController *)pageViewController viewControllerAfterViewController:(nonnull UIViewController *)viewController {

    NSUInteger index = [controllers indexOfObject:viewController];
    if (index == NSNotFound)
        return nil;
    NSInteger next = index + 1;
    if (next >= [controllers count]) return [controllers firstObject];
   // if (next >= [controllers count]) return nil;
    
    return [controllers objectAtIndex:next];
}

- (nullable UIViewController *)pageViewController:(nonnull UIPageViewController *)pageViewController viewControllerBeforeViewController:(nonnull UIViewController *)viewController {
    
    
    NSUInteger index = [controllers indexOfObject:viewController];
    if (index == NSNotFound)
        return nil;
    NSInteger prev = index - 1;
    if (prev < 0) return [controllers lastObject];
   // if (prev >= [controllers count]) return nil;
    
    return [controllers objectAtIndex:prev];
}




- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
    return parentSize;
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    
}

- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    
}

- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
    
}

- (void)setNeedsFocusUpdate {
 
}

- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
    return YES;
}

- (void)updateFocusIfNeeded {
 }

@end
