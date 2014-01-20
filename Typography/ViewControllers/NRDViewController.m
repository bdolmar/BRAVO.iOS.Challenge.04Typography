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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIFontDescriptor *headlineDescriptor = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline];
    UIFontDescriptor *hoeflerText = [UIFontDescriptor fontDescriptorWithName:@"Hoefler Text" size:headlineDescriptor.pointSize];
    NSLog(@"hoeflerText: %@", hoeflerText);
    
    hoeflerText = [hoeflerText fontDescriptorWithProportionalNumberSpacing];
    self.headlineLabel.font = [UIFont fontWithDescriptor:hoeflerText size:0.0];
    self.headlineLabel.textAlignment = NSTextAlignmentCenter;
    self.headlineLabel.text = @"There are 31,536,000\nseconds in a year.";
    self.headlineLabel.attributedText = [[self.headlineLabel.attributedText attributedStringWithKerningInPhotoshopUnits:@(-20)] attributedStringLineHeight:@(hoeflerText.pointSize*1.15)];
    [self.headlineLabel sizeToFit];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
