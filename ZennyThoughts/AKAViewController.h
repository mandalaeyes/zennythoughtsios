//
//  AKAViewController.h
//  ZennyThoughts
//
//  Created by Alex Alexander on 9/14/14.
//  Copyright (c) 2014 Alex Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AKAQuoteBook;
@class AKAMandalaBook;
@class AKARecordPlayer;

@interface AKAViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *quoteLabel;
@property (strong, nonatomic) IBOutlet UILabel *authorLabel;
@property (strong, nonatomic) IBOutlet UIImageView *mandalaImageView;
@property (strong, nonatomic) AKAQuoteBook *quoteBook;
@property (strong, nonatomic) AKAMandalaBook *mandalaBook;
@property (strong, nonatomic) AKARecordPlayer *recordPlayer;


- (IBAction)buttonPressed;
- (void) crossfadeToRandomMandala:(UIImage*)randomMandala;
- (void) crossfadeToNewString:(NSString*)randomQuote inLabel:(UILabel*)label;

@end
