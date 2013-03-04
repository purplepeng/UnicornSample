//
//  EAGLSurface.h
//  UnicornSample
//
//  Created by Luis Valencia on 3/3/13.
//  Copyright (c) 2013 Luis Valencia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface EAGLSurface : UIView
{
    @private
    EAGLContext *_context;
}

- (void) makeRender;

@end
