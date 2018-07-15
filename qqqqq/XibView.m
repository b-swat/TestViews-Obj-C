//
//  XibView.m
//  qqqqq
//
//  Created by Swat on 7/14/18.
//  Copyright © 2018 Swat. All rights reserved.
//

#import "XibView.h"

@implementation XibView

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        [[UINib nibWithNibName:@"XibView" bundle:nil] instantiateWithOwner:self options:nil];
        [self addSubview:self.view];
        self.view.frame = self.bounds;
    }
    return self;
}

@end
