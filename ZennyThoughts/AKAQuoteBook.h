//
//  AKAQuoteBook.h
//  ZennyThoughts
//
//  Created by Alex Alexander on 9/14/14.
//  Copyright (c) 2014 Alex Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKAQuoteBook : NSObject {
    NSArray *_quotes;
    NSArray *_authors;
}

@property (strong, nonatomic, readonly) NSArray *quotes;
@property (strong, nonatomic, readonly) NSArray *authors;

- (int) randomQuoteNumber;
- (NSString*) quote:(int)quoteNumber;
- (NSString*) author:(int)quoteNumber;

@end
