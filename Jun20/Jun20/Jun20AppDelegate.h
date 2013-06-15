//
//  HelloAppDelegate.h
//  Hello
//
//  Created by Andrew Cheung on 6/13/13.
//  Copyright (c) 2013 edu.nyu.scps. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Jun20AppDelegate : UIResponder <UIApplicationDelegate>
{
    View *view;
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
