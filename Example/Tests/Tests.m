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

describe(@"EGRGBAUtils", ^{
    context(@"toUIColor", ^{
        it(@"foo", ^{
            
            [[@"foo" should] equal:@"foo"];
        });
    });
});

SPEC_END

