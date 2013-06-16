//
//  Date.h
//  Hello
//
//  Created by Andrew Cheung on 6/14/13.
//  Copyright (c) 2013 edu.nyu.scps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Date : NSObject {
    int year;
    int month;
    int day;
    NSString *reminder;
}

@property (nonatomic, strong) NSString *reminder;

- (id) initWithMonth: (int) m day: (int) d year: (int) y;
- (int) monthLength;

//Getters

- (int) year;
- (int) month;
- (int) day;

//Setters

- (void) setYear: (int) y;
- (void) setMonth: (int) m;
- (void) setDay: (int) d;

// Other Methods

- (void) next;
- (void) next: (int) distance;
- (void) prev;
- (void) prev: (int) distance;
+ (int) yearLength;

@end
