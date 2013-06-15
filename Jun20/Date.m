//
//  Date.m
//  Hello
//
//  Created by Andrew Cheung on 6/14/13.
//  Copyright (c) 2013 edu.nyu.scps. All rights reserved.
//

#import "Date.h"

@implementation Date

- (id) initWithMonth:(int)m day:(int)d year:(int)y {
    self = [super init];
    if (self){
        year = y;
        month = m;
        day = d;
    }
    return self;
}

- (id) init {
    self = [super init];
    if (self){
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        
        NSDate *today = [[NSDate alloc] init];
        NSUInteger unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit;
        NSDateComponents *components = [calendar components:unitFlags fromDate:today];
        
        year = components.year;
        month = components.month;
        day = components.day;
    }
    
    return self;
}

- (int) monthLength{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setYear:year];
    [components setMonth:month];
    [components setDay:day];
    
    NSRange range = [calendar
                     rangeOfUnit:NSDayCalendarUnit
                     inUnit:NSMonthCalendarUnit
                     forDate:[calendar dateFromComponents:components]
                     ];
 
    return range.length;
}

- (NSString *) description{
    return [NSString stringWithFormat:@"%d/%d/%d",month,day,year];
}

- (int) year {
    return year;
}

- (int) month {
    return month;
}

- (int) day {
    return day;
}


- (void) setYear: (int) y {
    year = y;
}

- (void) setMonth: (int) m {
    if (m < 1 || m > 12) {
        NSLog(@"Month (%d) is invalid.",m);
        return;
    }
    
    month = m;
    
}

- (void) setDay:(int)d{
    if (d < 1 || d > 31){
        NSLog(@"Day (%d) is invalid.",d);
        return;
    }
    day = d;
}

- (BOOL) isEqual: (Date *)  another {
    return year == another.year
        && month == another.month
        && day == another.day;
}

- (void) next {
    if (day < [self monthLength]){
        ++day;
        return;
    }
    day =1;
    
    if (month < [Date yearLength]){
        ++month;
        return;
    }
    month = 1;
    ++year;
}


- (void) next:(int)distance {
    if (distance < 1){
        NSLog(@"Distance must be greater than 0.");
        return;
    }
    
    for (int i = 1; i <= distance; ++i){
        [self next];
    }
}

+ (int) yearLength {
    return 12;
}

@end
