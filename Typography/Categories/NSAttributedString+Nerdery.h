//
//  NSAttributedString+Nerdery.h
//  AnimatingChallenge
//
//  Created by Ben Dolmar on 1/20/14.
//  Copyright (c) 2014 The Nerdery. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSAttributedString (Nerdery)

- (NSMutableAttributedString *)attributedStringWithKerning:(NSNumber *)kernValue;

- (NSMutableAttributedString *)attributedStringWithKerningInPhotoshopUnits:(NSNumber *)kernValue;

- (NSMutableAttributedString *)attributedStringLineHeight:(NSNumber *)lineHeight;

@end
