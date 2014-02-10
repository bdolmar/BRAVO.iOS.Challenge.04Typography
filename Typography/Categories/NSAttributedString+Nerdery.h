//
//  NSAttributedString+Nerdery.h
//  AnimatingChallenge
//
//  Created by Ben Dolmar on 1/20/14.
//  Copyright (c) 2014 The Nerdery. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSAttributedString (Nerdery)

- (NSAttributedString *)attributedStringWithKerning:(CGFloat)kernValue;

- (NSAttributedString *)attributedStringWithKerningInPhotoshopUnits:(CGFloat)kernValue;

- (NSAttributedString *)attributedStringLineHeight:(CGFloat)lineHeight;

@end
