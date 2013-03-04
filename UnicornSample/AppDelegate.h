//
//  AppDelegate.h
//  UnicornSample
//
//  Created by Luis Valencia on 3/3/13.
//  Copyright (c) 2013 Luis Valencia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EAGLSurface.h"
#import "MainViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    UIWindow *window;
    EAGLSurface *_surface;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EAGLSurface *_surface;
@property (nonatomic, retain) IBOutlet MainViewController *mainViewController;

@end
