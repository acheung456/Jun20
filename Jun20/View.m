//
//  View.m
//  Hello
//
//  Created by Andrew Cheung on 6/13/13.
//  Copyright (c) 2013 edu.nyu.scps. All rights reserved.
//

#import "View.h"
#import "Date.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIFont *font = [UIFont systemFontOfSize: 32.0];
    UIFont *secondfont = [UIFont systemFontOfSize:20.0];
    
    Date *today = [[Date alloc] init];
    Date *randomDay = [[Date alloc] initWithMonth:-1 day:1 year:2012];
    NSLog(@"randomDay: %@",randomDay);
    
    NSString *string = @"Hello World :)";
    NSString *secondstring = [[NSString alloc] initWithFormat:@"Today is: %d/%d/%d",
                              [today month],
                              [today day],
                              [today year]];
    
    NSLog(@"secondstring is %d pixels wide",[secondstring length]);
    
    CGPoint point = CGPointMake(0.0, 0.0);
    CGPoint secondpoint = CGPointMake(
                                      (50),
                                      100);
    
    NSLog(@"Origin should be %d",(320/2)-([secondstring length]/2));
    
	[string drawAtPoint: point withFont: font];
    [secondstring drawAtPoint: secondpoint withFont:secondfont];
}


@end
