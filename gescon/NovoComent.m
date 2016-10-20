//
//  NovoComent.m
//  gescon
//
//  Created by Joshua Friso on 9/17/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//
#import "Mensagem.h"
#import "NovoComent.h"

@implementation NovoComent

-(instancetype) init{
    if (self = [super init]) {
        self.comentId = [[[NSUUID UUID]UUIDString] intValue];
    }
    return self;
}
-(instancetype)initWithTipo: (NSString *) tipoComent{
    if (self = [self init]) {
        self.tipoComent = tipoComent;
        self.comentId = [[[NSUUID UUID]UUIDString]intValue];
    }
    return self;
}

+(NSString *) primaryKey{
    return @"comentId";
}
+(NSDictionary *) linkingObjectsProperties{
    return @{
             @"owners": [RLMPropertyDescriptor descriptorWithClass:Mensagem.class propertyName:@"coment"],
             };
}
@end
