//
//  NSString+RGBA.m
//  Pods
//
//  Created by Pine Mizune on 2017/08/22.
//
//

#import "RGBAUtils.h"
#import "NSString+RGBA.h"

NS_ASSUME_NONNULL_BEGIN

@implementation NSString (RGBA)

- (UIColor*)RGBAtoUIColor {
    return [RGBAUtils toUIColor:self];
}

@end

NS_ASSUME_NONNULL_END
