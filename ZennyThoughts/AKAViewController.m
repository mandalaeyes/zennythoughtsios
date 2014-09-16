//
//  AKAViewController.m
//  ZennyThoughts
//
//  Created by Alex Alexander on 9/14/14.
//  Copyright (c) 2014 Alex Alexander. All rights reserved.
//

#import "AKAViewController.h"
#import "AKAQuoteBook.h"
#import "AKAMandalaBook.h"
#import "AKARecordPlayer.h"
#import "UILabel+AutoTextResizer.h"
#import <AudioToolbox/AudioToolbox.h>

@interface AKAViewController ()

@end

@implementation AKAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.quoteBook = [[AKAQuoteBook alloc] init];
    self.mandalaBook = [[AKAMandalaBook alloc] init];
    self.recordPlayer = [[AKARecordPlayer alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Mandala Crossfade Method
- (void) crossfadeToRandomMandala:(UIImage*)randomMandala {
    
    UIImage * toImage = randomMandala;
    [UIView transitionWithView:self.mandalaImageView
                      duration:1.0f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        self.mandalaImageView.image = toImage;
                    } completion:nil];
}

#pragma mark - Text Crossfade Method
- (void) crossfadeToNewString:(NSString*)randomQuote inLabel:(UILabel*)label {
    
    NSString * toString = randomQuote;
    [UIView transitionWithView:label
                      duration:1.0f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        label.text = toString;
                    } completion:nil];
}

#pragma mark - Update Content
- (IBAction)buttonPressed {
  
    int randomQuoteNumber = [self.quoteBook randomQuoteNumber];

    NSString *randomQuote = [self.quoteLabel autoResizeText:[self.quoteBook quote:(randomQuoteNumber)]
                                                 fitInLabel:self.quoteLabel];
    NSString *correspondingAuthor = [self.quoteBook author:(randomQuoteNumber)];
    
    [self.recordPlayer playRandomRecord];
    
    [self crossfadeToNewString:randomQuote inLabel:self.quoteLabel];
    [self crossfadeToNewString:correspondingAuthor inLabel:self.authorLabel];
    [self crossfadeToRandomMandala:[self.mandalaBook randomMandala]];
}
@end
