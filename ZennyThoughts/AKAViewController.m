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
#import "UILabel+AutoTextResizer.h"

@interface AKAViewController ()

@end

@implementation AKAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.quoteBook = [[AKAQuoteBook alloc] init];
    self.mandalaBook = [[AKAMandalaBook alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    int randomQuoteNumber = [_quoteBook randomQuoteNumber];
    self.authorLabel.text = [self.quoteBook author:(randomQuoteNumber)];
    self.mandalaImageView.image = [self.mandalaBook randomMandala];
    [self.quoteLabel autoResizeText:[self.quoteBook quote:(randomQuoteNumber)]
                         fitInLabel:self.quoteLabel];
}
@end
