//
//  AKAMandalaBook.h
//  ZennyThoughts
//
//  Created by Alex Alexander on 9/15/14.
//  Copyright (c) 2014 Alex Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKAMandalaBook : NSObject {
    NSArray *_mandalas;
}

@property (strong, nonatomic, readonly) NSArray *mandalas;

- (UIImage*) randomMandala;

@end
