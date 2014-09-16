//
//  UILabel+AutoTextResizer.h
//  ZennyThoughts
//
//  Created by Alex Alexander on 9/15/14.
//  Copyright (c) 2014 Alex Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (AutoTextResizer)

- (NSString*) autoResizeText:(NSString*)quoteText fitInLabel:(UILabel*)quoteLabel;

@end
