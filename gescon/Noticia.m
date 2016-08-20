//
//  Noticia.m
//  gescon
//
//  Created by Joshua Friso on 8/18/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "Noticia.h"

@implementation Noticia

-(instancetype)init{
    if (self = [super init]) {
        self.objectId = [[[NSUUID UUID] UUIDString]intValue];
    }
    return self;
}

-(instancetype) initWithTitulo: (NSString *) tituloNovaNoticia{
    
    if(self = [self init]){
        self.tituloNovaNoticia = tituloNovaNoticia;
        self.objectId = [[[NSUUID UUID] UUIDString] intValue];
    }
    return self;
}

-(instancetype)initWithDescricao: (NSString *) descricaoNovaNoticia{
    
    if (self = [self init]) {
        
        self.descricaoNovaNoticia = descricaoNovaNoticia;
        self.objectId = [[[NSUUID UUID] UUIDString]intValue];
    }
    return self;
}

+(NSString *)primaryKey{
    
    return @"objectId";
}

-(NSString *)description{
    return self.descricaoNovaNoticia;
}

-(void)encodeWithCoder:(NSCoder *)encoder
{
    //Encode the properties of the object
    [encoder encodeObject:self.tituloNovaNoticia forKey:@"titulo"];
    [encoder encodeObject:self.descricaoNovaNoticia forKey:@"descricaoNovaNot"];
    
}

-(id)initWithCoder:(NSCoder *)decoder
{
    self = [super init];
    if ( self != nil )
    {
        //decode the properties
        self.tituloNovaNoticia = [decoder decodeObjectForKey:@"titulo"];
        self.descricaoNovaNoticia = [decoder decodeObjectForKey:@"descricaoNovaNot"];
    }
    return self;
}


@end
