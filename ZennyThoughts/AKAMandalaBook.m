//
//  AKAMandalaBook.m
//  ZennyThoughts
//
//  Created by Alex Alexander on 9/15/14.
//  Copyright (c) 2014 Alex Alexander. All rights reserved.
//

#import "AKAMandalaBook.h"

@implementation AKAMandalaBook

- (NSArray*) mandalas {
    if(_mandalas == nil) {
        _mandalas = [[NSArray alloc] initWithObjects:
                    [UIImage imageNamed:@"doodle1"],
                    [UIImage imageNamed:@"doodle2"],
                    [UIImage imageNamed:@"doodle3"],
                    [UIImage imageNamed:@"doodle4"],
                    [UIImage imageNamed:@"doodle5"],
                    [UIImage imageNamed:@"doodle6"],
                     nil];
    }
    return _mandalas;
}

- (UIImage*) randomMandala {
    int randomNumber = arc4random_uniform(self.mandalas.count);
    return [self.mandalas objectAtIndex:randomNumber];
}

@end
