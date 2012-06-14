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
    
    NSURL *luluURL = [[NSURL alloc] initWithString:
                  @"http://finance.yahoo.com/d/quotes.csv?s=LULU&f=sllt1"];
    NSError *error;
    NSString *lulu = [[NSString alloc]
                        initWithContentsOfURL: luluURL
                        encoding: NSUTF8StringEncoding  
                        error: &error
                        ];
    
    if(lulu == nil) {
        lulu = [error localizedDescription];
    }
    
    NSString *luluPrice = [[lulu substringFromIndex:NSMaxRange([lulu rangeOfString:@"<b>"])] substringToIndex:5];
    
    lulu = [NSString stringWithFormat:@"%@%@",@"Latest LULU price is: " ,luluPrice];
    
    // NSString *string = @"Hello, World!";
    CGPoint point = CGPointMake(10,10);
    [lulu drawAtPoint: point withFont: font];
}



@end
