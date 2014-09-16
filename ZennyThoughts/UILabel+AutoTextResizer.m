//
//  UILabel+AutoTextResizer.m
//  ZennyThoughts
//
//  Created by Alex Alexander on 9/15/14.
//  Copyright (c) 2014 Alex Alexander. All rights reserved.
//

#import "UILabel+AutoTextResizer.h"

@implementation UILabel (AutoTextResizer)

- (NSString*) autoResizeText:(NSString*)quoteText fitInLabel:(UILabel*)quoteLabel {
    int maxDesiredFontSize = 26;
    int minFontSize = 14;
    CGFloat labelWidth = 280;
    CGFloat labelRequiredHeight = 100;
    
    /* This is where we define the ideal font that the Label wants to use.
     Use the font you want to use and the largest font size you want to use. */
    UIFont *font = [UIFont fontWithName:@"Avenir" size:maxDesiredFontSize];
    
    int i;
    /* Time to calculate the needed font size.
     This for loop starts at the largest font size, and decreases by two point sizes (i=i-2)
     Until it either hits a size that will fit or hits the minimum size we want to allow (i > 10) */
    for(i = maxDesiredFontSize; i > minFontSize; i=i-2)
    {
        // Set the new font size.
        font = [font fontWithSize:i];
        // You can log the size you're trying: NSLog(@"Trying size: %u", i);
        
        /* This step is important: We make a constraint box
         using only the fixed WIDTH of the UILabel. The height will
         be checked later. */
        CGSize constraintSize = CGSizeMake(labelWidth, MAXFLOAT);
        
        // This step checks how tall the label would be with the desired font.
        CGSize labelSize = [quoteText sizeWithFont:font constrainedToSize:constraintSize lineBreakMode:UILineBreakModeWordWrap];
        
        /* Here is where you use the height requirement!
         Set the value in the if statement to the height of your UILabel
         If the label fits into your required height, it will break the loop
         and use that font size. */
        if(labelSize.height <= labelRequiredHeight)
            break;
    }
    // You can see what size the function is using by outputting: NSLog(@"Best size is: %u", i);
    
    // Set the UILabel's font to the newly adjusted font.
    quoteLabel.font = font;
    
    // Put the text into the UILabel outlet variable.
    return quoteText;
}

@end
