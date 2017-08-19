//
//  UIColor+RGBA.m
//  Pods
//
//  Created by Pine Mizune on 2017/08/19.
//
//

#import "RGBAUtils.h"
#import "UIColor+RGBA.h"


NS_ASSUME_NONNULL_BEGIN

@implementation UIColor (RGBA)

- (NSString*)toRGBA {
    return [RGBAUtils fromUIColor:self];
}

@end

NS_ASSUME_NONNULL_END
