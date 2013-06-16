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
        
        NSLog(@"Today is: %d/%d/%d.",[today month],[today day],[today year]);
        
        Date *randomDay = [[Date alloc] initWithMonth:6 day:7 year:2001];
        NSLog(@"randomDay: %@",randomDay);
        [randomDay next];
        NSLog(@"randomDay next: %@",randomDay);
        [randomDay prev];
        
        //Demonstrating day sets to previous months last day
        NSLog(@"randomDay prev: %@",randomDay);
        for(int i = 1;i <= 45; ++i){
            [randomDay prev];
            NSLog(@"randomDay retracted once to: %@",randomDay);
        }
        
        //Demonstrating prev: method.
        [randomDay prev:45];
        NSLog(@"rolled back 45 days:%@",randomDay);
        
        
        //Independence day fireworks reminder
        Date *independenceDay = [[Date alloc] initWithMonth:7 day:4 year:1776];
        independenceDay.reminder = @"Fireworks tonight.";
        NSLog(@"Independence Day: %@",independenceDay);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([Jun20AppDelegate class]));
    }
}
