//
//  AKARecordPlayer.h
//  ZennyThoughts
//
//  Created by Alex Alexander on 9/15/14.
//  Copyright (c) 2014 Alex Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface AKARecordPlayer : NSObject {
    NSArray *_records;
}

@property (strong, nonatomic, readonly) NSArray *records;

- (void) playRandomRecord;

@end
