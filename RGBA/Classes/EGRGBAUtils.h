//
//  EGRGBAUtils.h
//  iOS RGBA
//
//  Created by Pine Mizune on 2017/08/11.
//
//

NS_ASSUME_NONNULL_BEGIN

@interface EGRGBAUtils : NSObject

+ (UIColor*)toUIColor:(NSString*)string;
+ (NSString*)toRGBA:(UIColor*)color;

@end

NS_ASSUME_NONNULL_END
