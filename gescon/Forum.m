//
//  Forum.m
//  gescon
//
//  Created by Joshua Friso on 8/20/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "Forum.h"

@implementation Forum

-(instancetype)init{
    if (self = [super init]) {
        self.objectId = [[[NSUUID UUID]UUIDString]intValue];
    }
    return self;
}

-(instancetype)initWithTema:(NSString *)tema{
    if (self = [self init]) {
        self.tema = tema;
        self.objectId = [[[NSUUID UUID] UUIDString] intValue];
    }
    return self;
}

+(NSString *) primaryKey{
    return @"objectId";
}

-(void)encodeWithCoder:(NSCoder *)encoder
{
    //Encode the properties of the object
    [encoder encodeObject:self.tema forKey:@"tema"];
    
}

-(id)initWithCoder:(NSCoder *)decoder
{
    self = [super init];
    if ( self != nil )
    {
        //decode the properties
        self.tema = [decoder decodeObjectForKey:@"tema"];
    }
    return self;
}



@end
