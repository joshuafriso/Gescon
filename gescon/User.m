//
//  User.m
//  gescon
//
//  Created by Joshua Friso on 10/11/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "User.h"

@implementation User

-(instancetype)init{
    if(self =[super init]){
        self.id = [[[NSUUID UUID] UUIDString]intValue];
    }
    return self;
}

+(NSString *)primaryKey{
    return @"id";
}

-(void)encodeWithCoder:(NSCoder *)encoder
{
    //Encode the properties of the object
    [encoder encodeObject:self.userName forKey:@"userName"];
    
}

-(id)initWithCoder:(NSCoder *)decoder
{
    self = [super init];
    if ( self != nil )
    {
        //decode the properties
        self.userName = [decoder decodeObjectForKey:@"userName"];
    }
    return self;
}



// Specify default values for properties

//+ (NSDictionary *)defaultPropertyValues
//{
//    return @{};
//}

// Specify properties to ignore (Realm won't persist these)

//+ (NSArray *)ignoredProperties
//{
//    return @[];
//}

@end
