//
//  AKAQuoteBook.m
//  ZennyThoughts
//
//  Created by Alex Alexander on 9/14/14.
//  Copyright (c) 2014 Alex Alexander. All rights reserved.
//

#import "AKAQuoteBook.h"

@implementation AKAQuoteBook

- (NSArray*) quotes {
    if(_quotes == nil) {
        _quotes = [[NSArray alloc] initWithObjects:
                   @"The Tao that can be told is not the true Tao.",
                   @"Believe me: life is in the right, always.",
                   @"cucumber \nunaccountably \ncucumbering",
                   @"There is no need for temples, no need for complicated philosophy."
                   " Our own brain, our own heart is our temple: the philosophy is kindness.",
                   nil];
    }
    return _quotes;
}
- (NSArray*) authors {
    if(_authors == nil) {
        _authors = [[NSArray alloc] initWithObjects:
                    @"Lao Tzu",
                    @"Rainer Maria-Rilke",
                    @"Paul Reps",
                    @"The Dalai Lama",
                    nil];
    }
    return _authors;
}

- (int) randomQuoteNumber {
    return arc4random_uniform(self.quotes.count);
}
- (NSString*) quote:(int)quoteNumber {
    return [self.quotes objectAtIndex:quoteNumber];
}
- (NSString*) author:(int)quoteNumber {
    return [self.authors objectAtIndex:quoteNumber];
}

@end
