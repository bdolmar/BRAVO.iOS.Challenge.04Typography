//
//  NSAttributedString+Nerdery.m
//  AnimatingChallenge
//
//  Created by Ben Dolmar on 1/20/14.
//  Copyright (c) 2014 The Nerdery. All rights reserved.
//

#import "NSAttributedString+Nerdery.h"

@implementation NSAttributedString (Nerdery)

- (NSAttributedString *)attributedStringWithKerning:(CGFloat)kernValue
{
    NSMutableAttributedString *attributedText = [self mutableCopy];
    [attributedText addAttribute:NSKernAttributeName
                           value:@(kernValue)
                           range:NSMakeRange(0, [attributedText length])];
    return attributedText;
}

- (NSAttributedString *)attributedStringWithKerningInPhotoshopUnits:(CGFloat)kernValue
{
    UIFont *font = [self attribute:NSFontAttributeName atIndex:0 effectiveRange:NULL];
    CGFloat kernInPoints = kernValue * .001 * font.pointSize;
    return [self attributedStringWithKerning:kernInPoints];
}

- (NSAttributedString *)attributedStringLineHeight:(CGFloat)lineHeight
{
    NSRange attributeRange;
    NSMutableAttributedString *attributedText = [self mutableCopy];
    NSMutableParagraphStyle *paragraphStyle = [[attributedText attribute:NSParagraphStyleAttributeName atIndex:0 effectiveRange:&attributeRange] mutableCopy];
    paragraphStyle.minimumLineHeight = lineHeight;
    paragraphStyle.maximumLineHeight = lineHeight;
    paragraphStyle.lineSpacing = 0;
    [attributedText addAttributes:@{NSParagraphStyleAttributeName: paragraphStyle} range:attributeRange];
    return attributedText;
}

@end
