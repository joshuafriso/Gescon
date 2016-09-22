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
//-(void) inserirComentario: (NSString *) detalhes eUserComent: (NSString *) userComent eDataPost: (NSDate *) dataPost eTipo: (NSString *) typeComent{
//    
//    NovoComent *coment = [[NovoComent alloc] init];
//    coment.detalhesComent = detalhes;
//    coment.usuarioLogado = userComent;
//    coment.dataPostagem = dataPost;
//    coment.forumId = self.forum.objectId;
//    coment.tipoComent = typeComent;
//    
//    RLMRealm *realmComent = [RLMRealm defaultRealm];
//    
//    [realmComent beginWriteTransaction];
//    [realmComent addObject:coment];
//    [realmComent commitWriteTransaction];
//}
//
//-(RLMResults<NovoComent *> *) getComent{
//    
//    NSPredicate *pred = [NSPredicate predicateWithFormat:@"forumId = %d",
//                         self.forum.objectId];
//    RLMResults<NovoComent *> *coment = [NovoComent objectsWithPredicate:pred];
//    return coment;
//}

@end
