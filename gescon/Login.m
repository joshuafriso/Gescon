//
//  Login.m
//  gescon
//
//  Created by Joshua Friso on 8/14/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "Login.h"

@implementation Login

-(instancetype)init{
    if (self = [super init]) {
        self.objectId = [[NSUUID UUID] UUIDString];
    }
    return self;
}

-(instancetype)initWithLoginName:(NSString *)userLoginNome{
    
    if (self = [self init]) {
        
        self.userLoginNome = userLoginNome;
        self.objectId = [[NSUUID UUID] UUIDString];
    }
    return self;
}


-(NSString *)nomeLogin{
    return self.userLoginNome;
}

@end
