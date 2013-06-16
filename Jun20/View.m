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
    // Max INT: 2147483647
    
    NSString *string = @"Hello World :)";
    NSString *secondstring = [[NSString alloc] initWithFormat:@"Today is: %d/%d/%d",
                              [today month],
                              [today day],
                              [today year]];
    
    CGPoint point = CGPointMake(0.0, 0.0);
    CGPoint secondpoint = CGPointMake(
                                      (50),
                                      100);
    
	[string drawAtPoint: point withFont: font];
    [secondstring drawAtPoint: secondpoint withFont:secondfont];
}


@end
