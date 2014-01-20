//
//  UIFont+Nerdery.m
//  ArbitraryAnimation
//
//  Created by Ben Dolmar on 10/12/13.
//  Copyright (c) 2013 The Nerdery. All rights reserved.
//

#import "UIFont+Nerdery.h"
#import "UIFontDescriptor+Nerdery.h"
#import <CoreText/CoreText.h>

@implementation UIFont (Nerdery)

- (UIFont *)fontWithProportionalNumberSpacing
{
    return [self fontWithProportionalNumberSpacingSize:self.pointSize];
}

- (UIFont *)fontWithProportionalNumberSpacingSize:(CGFloat)fontSize
{
    
    UIFontDescriptor *originalDescriptor = [self fontDescriptor];
    UIFontDescriptor *timeDescriptor = [originalDescriptor fontDescriptorWithProportionalNumberSpacing];
    return [UIFont fontWithDescriptor: timeDescriptor size: fontSize];
}

@end
