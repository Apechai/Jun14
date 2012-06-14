//
//  View.m
//  Jun14
//
//  Created by Matthew Fong on 6/13/12.
//  Copyright (c) 2012 Goldman Sachs. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor purpleColor];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void) drawRect: (CGRect) rect
{
    // Drawing code
    UIFont *font = [UIFont systemFontOfSize: 14.0];
    
    NSURL *url = [[NSURL alloc] initWithString:
                  @"http://finance.yahoo.com/d/quotes.csv?s=LULU&f=sllt1"];
    NSError *error;
    NSString *string = [[NSString alloc]
                        initWithContentsOfURL: url
                        encoding: NSUTF8StringEncoding  
                        error: &error
                        ];
    
    if(string == nil) {
        string = [error localizedDescription];
    }
    // NSString *string = @"Hello, World!";
    CGPoint point = CGPointMake(0,0);
    [string drawAtPoint: point withFont: font];
}



@end
