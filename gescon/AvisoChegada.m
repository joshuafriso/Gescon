//
//  AvisoChegada.m
//  gescon
//
//  Created by Joshua Friso on 9/13/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "AvisoChegada.h"

@implementation AvisoChegada

-(instancetype)init{
    if (self = [super init]) {
        self.objectId = [[[NSUUID UUID] UUIDString]intValue];
    }
    return self;
}

-(instancetype) initWithTituloAviso:(NSString *)tituloAvisoLista{
    
    if(self = [self init]){
        self.tituloAvisoLista = tituloAvisoLista;
        self.objectId = [[[NSUUID UUID] UUIDString] intValue];
    }
    return self;
}

+(NSString *)primaryKey{
    
    return @"objectId";
}
-(void)encodeWithCoder:(NSCoder *)encoder
{
    //Encode the properties of the object
    [encoder encodeObject:self.tituloAvisoLista forKey:@"titulo"];

    
}

-(id)initWithCoder:(NSCoder *)decoder
{
    self = [super init];
    if ( self != nil )
    {
        //decode the properties
        self.tituloAvisoLista = [decoder decodeObjectForKey:@"titulo"];

    }
    return self;
}


@end
