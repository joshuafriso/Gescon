//
//  NovoComent.m
//  gescon
//
//  Created by Joshua Friso on 9/17/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "NovoComent.h"

@implementation NovoComent

-(instancetype) init{
    if (self = [super init]) {
        self.objectId = [[[NSUUID UUID]UUIDString] intValue];
    }
    return self;
}

+(NSString *) primaryKey{
    return @"objectId";
}

@end
