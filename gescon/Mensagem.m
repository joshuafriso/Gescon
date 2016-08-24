//
//  Mensagem.m
//  gescon
//
//  Created by Carl Osorio on 8/23/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "Mensagem.h"

@implementation Mensagem

-(instancetype)init{
    if (self = [super init]) {
        self.objectId = [[[NSUUID UUID]UUIDString]intValue];
    }
    return self;
}

+(NSString *) primaryKey{
    return @"objectId";
}

@end
