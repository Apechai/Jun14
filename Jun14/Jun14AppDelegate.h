//
//  Jun14AppDelegate.h
//  Jun14
//
//  Created by Matthew Fong on 6/13/12.
//  Copyright (c) 2012 Goldman Sachs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Jun14AppDelegate : UIResponder <UIApplicationDelegate>{
    View *view;
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
