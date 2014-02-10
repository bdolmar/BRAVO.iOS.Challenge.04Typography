//
//  NRDViewController.m
//  Typography
//
//  Created by Ben Dolmar on 1/14/14.
//  Copyright (c) 2014 Ben Dolmar. All rights reserved.
//

#import "NRDViewController.h"
#import "UIFontDescriptor+Nerdery.h"
#import "NSAttributedString+Nerdery.h"
@import CoreText;

@interface NRDViewController ()

@property (nonatomic, weak) IBOutlet UILabel *headlineLabel;

@end

@implementation NRDViewController


#pragma mark - View Controller Methods

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self updateLabelFont];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(notificationReceived:)
                                                 name:UIContentSizeCategoryDidChangeNotification
                                               object:nil];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)notificationReceived:(NSNotification *)notification
{
    if ([notification.name isEqualToString:UIContentSizeCategoryDidChangeNotification]) {
        [self updateLabelFont];
    }
}

- (void)updateLabelFont
{
    UIFontDescriptor *headlineDescriptor = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline];
    UIFontDescriptor *hoeflerText = [UIFontDescriptor fontDescriptorWithName:@"Hoefler Text" size:headlineDescriptor.pointSize];
    
    hoeflerText = [hoeflerText fontDescriptorWithUpperCaseNumbers];
    self.headlineLabel.font = [UIFont fontWithDescriptor:hoeflerText size:0.0];
    self.headlineLabel.textAlignment = NSTextAlignmentCenter;
    self.headlineLabel.text = @"There are 31,536,000\nseconds in a year.";
    self.headlineLabel.attributedText = [[self.headlineLabel.attributedText attributedStringWithKerningInPhotoshopUnits:-20] attributedStringLineHeight:self.headlineLabel.font.pointSize*1.15];
}


@end
