//
//  EAGLSurface.m
//  UnicornSample
//
//  Created by Luis Valencia on 3/3/13.
//  Copyright (c) 2013 Luis Valencia. All rights reserved.
//

#import "EAGLSurface.h"

@implementation EAGLSurface

+ (Class) layerClass{
    return [CAEAGLLayer class];
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //Catch it
        CAEAGLLayer* eaglLayer = (CAEAGLLayer *)[self layer];
        
        //Configuration
        NSDictionary* config = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:NO],
                                kEAGLDrawablePropertyRetainedBacking,
                                kEAGLColorFormatRGB565,
                                kEAGLDrawablePropertyColorFormat,
                                nil];
        
        //Set Properties
        [eaglLayer setOpaque:YES];
        [eaglLayer setDrawableProperties:config];
        
        //Set the Current Context
        _context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
        [EAGLContext setCurrentContext:_context];
    }
    return self;
}
- (void) makeRender {
    [_context presentRenderbuffer:GL_RENDERBUFFER];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
