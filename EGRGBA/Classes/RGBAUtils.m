//
//  EGRGBAUtils.h
//  iOS RGBA
//
//  Created by Pine Mizune on 2017/08/11.
//
//

#import "RGBAUtils.h"

NS_ASSUME_NONNULL_BEGIN

static NSString *const EGRGBUtilsException = @"EGRGBUtilsException";

@implementation RGBAUtils

+ (UIColor*)toUIColor:(NSString*)string {
    if (![string length]) {
        [NSException raise:EGRGBUtilsException format:@"empty string not allowed"];
    }
    
    int pos = [string hasPrefix:@"#"] ? 1 : 0;
    NSScanner *scanner = [NSScanner scannerWithString:string];
    scanner.scanLocation = pos;
    
    unsigned rgbaColor;
    [scanner scanHexInt:&rgbaColor];
    
    if ([string length] - pos == 4) {
        unsigned red = rgbaColor >> 12 & 0x0f;
        unsigned green = rgbaColor >> 8 & 0x0f;
        unsigned blue = rgbaColor >> 4 & 0x0f;
        unsigned alpha = rgbaColor & 0x0f;
        return [UIColor colorWithRed:(red << 4 | red) / (CGFloat)0xff
                               green:(green << 4 | green) / (CGFloat)0xff
                                blue:(blue << 4 | blue) / (CGFloat)0xff
                               alpha:(alpha << 4 | alpha) / (CGFloat)0xff];
    }
    
    if ([string length] - pos == 8) {
        unsigned red = rgbaColor >> 24 & 0xff;
        unsigned green = rgbaColor >> 16 & 0xff;
        unsigned blue = rgbaColor >> 8 & 0xff;
        unsigned alpha = rgbaColor & 0xff;
        return [UIColor colorWithRed:red / (CGFloat)0xff
                               green:green / (CGFloat)0xff
                                blue:blue / (CGFloat)0xff
                               alpha:alpha / (CGFloat)0xff];
    }
    
    @throw [NSException exceptionWithName:EGRGBUtilsException
                                   reason:@"string length should be 4, 5, 8 or 9"
                                 userInfo:nil];
}

+ (NSString*)toRGBA :(UIColor*)color {
    return nil;
}

@end

NS_ASSUME_NONNULL_END
