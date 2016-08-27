//
//  Produto.m
//  gescon
//
//  Created by Joshua Friso on 8/27/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "Produto.h"

@implementation Produto

-(instancetype)init{
    if (self = [super init]) {
        self.objectIdProd = [[[NSUUID UUID] UUIDString] intValue];
    }
    return self;
}
-(instancetype)initWithTituloProd:(NSString *)tituloProduto{
    
    if (self = [self init]) {
        self.tituloProduto = tituloProduto;
        self.objectIdProd = [[[NSUUID UUID] UUIDString] intValue];

    }
    return self;
}

+(NSString *)primaryKey{
    return @"objectIdProd";
}


-(void)encodeWithCoder: (NSCoder *)encoder{
    [encoder encodeObject:self.tituloProduto forKey:@"tituloNovoProd"];
}

-(id)initWithCoder: (NSCoder *)decoder{
    self = [super init];
    if (self != nil) {
        self.tituloProduto = [decoder decodeObjectForKey:@"tituloNovoProd"];
    }
    return self;
}

@end
