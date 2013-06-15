//
//  main.m
//  Hello
//
//  Created by Andrew Cheung on 6/13/13.
//  Copyright (c) 2013 edu.nyu.scps. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Jun20AppDelegate.h"
#import "Date.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        
        NSLog(@"A year has %d months.",[Date yearLength]);
        
        Date *today = [[Date alloc] init];
        
        NSLog(@"Today is: %d %d, %d.",[today month],[today day],[today year]);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([Jun20AppDelegate class]));
    }
}
