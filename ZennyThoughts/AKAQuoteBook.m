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
                   @"cucumber \nunaccountably \ncucumbering",
                   @"Sometimes the highest form of action is inaction.",
                   @"The beginning is in the end and the end is in the beginning.",
                   @"There is no need for temples, no need for complicated philosophy. Our own brain, our own hear is our temple: the philosophy is kindness.",
                   @"True emptiness is that which transcends all things and yet is imminent in all.",
                   @"The higher the truth, the simpler it is.",
                   @"Only the hand that erases can write the true thing.",
                   @"There is one art, no more, no less. To do all things with artlessness.",
                   @"The foolish reject what they see, not what they think. The wise reject what they think, not what they see.",
                   @"Gain is delusion, loss is enlightenment.",
                   @"Does one really have to fret about enlightenment? No matter what road I travel, I'm going home.",
                   @"Wise men know that their business is to examine what is, and not to settle what is not.",
                   @"All questioning is a way of avoiding the real answer, which is always known already.",
                   @"Man is the only animal for whom his own existence is a problem which he has to solve.",
                   @"Dying's part of the wheel, right there next to being born. Being part of the whole thing, that's the blessing.",
                   @"There are more truths in twenty-four hours of a man's life than in all the philosophies.",
                   @"Knowledge is learning something every day. Wisdom is letting go of something every day.",
                   @"Truth does not need any explanation. It only needs to be seen.",
                   @"One can travel the world and see nothing. To achieve understanding, it is necessary not to see many things, but to look hard at what you do see.",
                   @"Knowing ignorance is strength; ignoring knowledge is sickness.",
                   @"Don't be too quick to draw conclusions from what happens to you; simply let it happen.",
                   @"Believe me: life is in the right, always.",
                   @"Something unknown is doing we-don't-know-what, that is what our knowledge amounts to!",
                   @"You are something the whole world is doing.",
                   nil];
    }
    return _quotes;
}
- (NSArray*) authors {
    if(_authors == nil) {
        _authors = [[NSArray alloc] initWithObjects:
                    @"Paul Reps",
                    @"Jerry Brown",
                    @"The Kabbalah",
                    @"The Dalai Lama",
                    @"Thomas Merton",
                    @"Abraham Isaac Kook",
                    @"Meister Eckhart",
                    @"Piet Hein",
                    @"Huang-Po",
                    @"Uchiyama Roshi",
                    @"Shinso",
                    @"Charles Kingsley",
                    @"Zen saying",
                    @"Erich Fromm",
                    @"Natalie Babbitt",
                    @"Raoul Vaneigem",
                    @"Zen saying",
                    @"Steve Hagen",
                    @"Giorgio Morandi",
                    @"Lao Tzu",
                    @"Rainer Maria-Rilke",
                    @"Rainer Maria-Rilke",
                    @"Alan Watts",
                    @"Alan Watts",
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
