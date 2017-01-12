//
//  Dice.m
//  ThreeLow
//
//  Created by Chris Jones on 2017-01-11.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "Dice.h"
#import "GameManager.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dieFaces = @{@1:@"⚀", @2:@"⚁", @3:@"⚂", @4:@"⚃", @5:@"⚄", @6:@"⚅"};
    }
    return self;
}


@end
