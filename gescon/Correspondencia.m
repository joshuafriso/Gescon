//
//  Correspondencia.m
//  gescon
//
//  Created by Joshua Friso on 9/14/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "Correspondencia.h"

@implementation Correspondencia

-(instancetype)init{
    if (self = [super init]) {
        self.objectId = [[[NSUUID UUID] UUIDString]intValue];
    }
    return self;
}
-(instancetype) initWithNomeDest:(NSString *)nomeDestinatario{
    if(self = [self init]){
        self.nomeDestinatario = nomeDestinatario;
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
    [encoder encodeObject:self.nomeDestinatario forKey:@"nomeDest"];
   }

-(id)initWithCoder:(NSCoder *)decoder
{
    self = [super init];
    if ( self != nil )
    {
        //decode the properties
        self.nomeDestinatario = [decoder decodeObjectForKey:@"nomeDest"];

    }
    return self;
}

@end
