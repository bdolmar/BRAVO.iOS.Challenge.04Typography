//
//  UIFontDescriptor+Nerdery.m
//  Typography
//
//  Created by Ben Dolmar on 1/15/14.
//  Copyright (c) 2014 The Nerdery. All rights reserved.
//

#import "UIFontDescriptor+Nerdery.h"
#import <CoreText/CoreText.h>

@implementation UIFontDescriptor (Nerdery)

- (UIFontDescriptor *)fontDescriptorWithUpperCaseNumbers
{
    NSArray *numeralFeatureSettings = @[
                                         @{
                                             UIFontFeatureTypeIdentifierKey: @(kNumberSpacingType),
                                             UIFontFeatureSelectorIdentifierKey: @(kProportionalNumbersSelector)
                                             },
                                         @{
                                             UIFontFeatureTypeIdentifierKey: @(kNumberCaseType),
                                             UIFontFeatureSelectorIdentifierKey: @(kUpperCaseNumbersSelector)
                                             }];
    return [self fontDescriptorByAddingAttributes: @{UIFontDescriptorFeatureSettingsAttribute: numeralFeatureSettings}];
}


@end
