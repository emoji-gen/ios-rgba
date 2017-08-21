//
//  RGBATests.m
//  RGBATests
//
//  Created by Pine Mizune on 08/11/2017.
//  Copyright (c) 2017 Pine Mizune. All rights reserved.
//

// https://github.com/kiwi-bdd/Kiwi

@import RGBA;

SPEC_BEGIN(InitialTests)

describe(@"RGBAUtils", ^{
    context(@"toUIColor", ^{
        it(@"can parse 9 length string", ^{
            CGFloat red, green, blue, alpha;
            UIColor *color = [RGBAUtils toUIColor:@"#12345678"];
            [color getRed:&red green:&green blue:&blue alpha:&alpha];
            
            [[theValue(red) should] equal:theValue(0x12/255.0)];
            [[theValue(green) should] equal:theValue(0x34/255.0)];
            [[theValue(blue) should] equal:theValue(0x56/255.0)];
            [[theValue(alpha) should] equal:theValue(0x78/255.0)];
        });
        
        it(@"can parse 8 length string", ^{
            CGFloat red, green, blue, alpha;
            UIColor *colorRed = [RGBAUtils toUIColor:@"12345678"];
            [colorRed getRed:&red green:&green blue:&blue alpha:&alpha];
            
            [[theValue(red) should] equal:theValue(0x12/255.0)];
            [[theValue(green) should] equal:theValue(0x34/255.0)];
            [[theValue(blue) should] equal:theValue(0x56/255.0)];
            [[theValue(alpha) should] equal:theValue(0x78/255.0)];
        });
        
        it(@"can parse 5 length string", ^{
            CGFloat red, green, blue, alpha;
            UIColor *colorRed = [RGBAUtils toUIColor:@"#1234"];
            [colorRed getRed:&red green:&green blue:&blue alpha:&alpha];
            
            [[theValue(red) should] equal:theValue(0x11/255.0)];
            [[theValue(green) should] equal:theValue(0x22/255.0)];
            [[theValue(blue) should] equal:theValue(0x33/255.0)];
            [[theValue(alpha) should] equal:theValue(0x44/255.0)];
        });
        
        it(@"can parse 4 length string", ^{
            CGFloat red, green, blue, alpha;
            UIColor *colorRed = [RGBAUtils toUIColor:@"1234"];
            [colorRed getRed:&red green:&green blue:&blue alpha:&alpha];
            
            [[theValue(red) should] equal:theValue(0x11/255.0)];
            [[theValue(green) should] equal:theValue(0x22/255.0)];
            [[theValue(blue) should] equal:theValue(0x33/255.0)];
            [[theValue(alpha) should] equal:theValue(0x44/255.0)];
        });
        
        it(@"can't parse empty string", ^{
            [[theBlock(^{
                [RGBAUtils toUIColor:@""];
            }) should]
                raiseWithName:@"RGBUtilsException"
                       reason:@"empty string not allowed"];
        });
        
        it(@"can't parse 3 length string", ^{
           [[theBlock(^{
               [RGBAUtils toUIColor:@"123"];
           }) should]
                raiseWithName:@"RGBUtilsException"
                       reason:@"string length should be 4, 5, 8 or 9"];
        });
        
        it(@"can't parse 6 length string", ^{
            [[theBlock(^{
                [RGBAUtils toUIColor:@"123456"];
            }) should]
                raiseWithName:@"RGBUtilsException"
                       reason:@"string length should be 4, 5, 8 or 9"];
        });
        
        it(@"can't parse 7 length string", ^{
            [[theBlock(^{
                [RGBAUtils toUIColor:@"1234567"];
            }) should]
                raiseWithName:@"RGBUtilsException"
                       reason:@"string length should be 4, 5, 8 or 9"];
        });
        
        it(@"can't parse 10 length string", ^{
            [[theBlock(^{
                [RGBAUtils toUIColor:@"1234567890"];
            }) should]
                raiseWithName:@"RGBUtilsException"
                       reason:@"string length should be 4, 5, 8 or 9"];
        });
    });
    
    context(@"fromUIColor", ^{
        it(@"can convert to RGBA", ^{
            UIColor *color = [UIColor colorWithRed:(CGFloat)(0x01/255.0)
                                             green:(CGFloat)(0x56/255.0)
                                              blue:(CGFloat)(0x9a/255.0)
                                             alpha:(CGFloat)(0xff/255.0)];
            NSString *string = [RGBAUtils fromUIColor:color];
            [[string should] equal:@"01569AFF"];
        });
    });
});

describe(@"UIColor+RGBA", ^{
    context(@"toRGBA", ^{
        it(@"can convert RGBA string", ^{
            UIColor *color = [UIColor colorWithRed:(CGFloat)(0x01/255.0)
                                             green:(CGFloat)(0x56/255.0)
                                              blue:(CGFloat)(0x9a/255.0)
                                             alpha:(CGFloat)(0xff/255.0)];
            NSString *string = [color toRGBA];
            [[string should] equal:@"01569AFF"];
        });
    });
});

describe(@"NSString+RGBA", ^{
    context(@"RGBAtoUIColor", ^{
        it(@"can convert to UIColor", ^{
            CGFloat red, green, blue, alpha;
            UIColor *color = [@"#01569AFF" RGBAtoUIColor];
            
            [color getRed:&red green:&green blue:&blue alpha:&alpha];
            [[theValue(red) should] equal:theValue(0x01/255.0)];
            [[theValue(green) should] equal:theValue(0x56/255.0)];
            [[theValue(blue) should] equal:theValue(0x9A/255.0)];
            [[theValue(alpha) should] equal:theValue(0xFF/255.0)];
        });
    });
});

SPEC_END
