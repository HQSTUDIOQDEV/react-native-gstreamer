//
//  EaglUiView.m
//
//  Created by Alann on 13/12/2017.
//  Copyright © 2017 Kalyzee. All rights reserved.
//

#import "EaglUIView.h"

@implementation EaglUIView

+ (Class) layerClass
{
    return [CAEAGLLayer class];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self->handle = (guintptr)(id)self;
        NSLog(@"Creating video surface with pointer : %lu", self->handle);
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Removing video surface with pointer : %lu", self->handle);
}

- (guintptr)getHandle
{
    return self->handle;
}

@end

