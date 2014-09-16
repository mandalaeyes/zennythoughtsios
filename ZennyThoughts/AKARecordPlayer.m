//
//  AKARecordPlayer.m
//  ZennyThoughts
//
//  Created by Alex Alexander on 9/15/14.
//  Copyright (c) 2014 Alex Alexander. All rights reserved.
//

#import "AKARecordPlayer.h"
#import <AudioToolbox/AudioToolbox.h>

@implementation AKARecordPlayer {
    SystemSoundID randomRecord;
}

- (NSArray*) records {
    if(_records == nil) {
        _records = [[NSArray alloc] initWithObjects:
                    @"guit1",
                    @"guit2",
                    @"guit3",
                    @"guit4",
                    nil];
    }
    return _records;
}

- (void) playRandomRecord {
    int randomNumber = arc4random_uniform(self.records.count);
    NSString *soundPath = [[NSBundle mainBundle]
                           pathForResource:[self.records objectAtIndex:randomNumber] ofType:@"mp3"];
    NSURL *soundURL = [NSURL fileURLWithPath:soundPath];
    AudioServicesCreateSystemSoundID(CFBridgingRetain(soundURL), &randomRecord);
    AudioServicesPlaySystemSound(randomRecord);
}

@end
