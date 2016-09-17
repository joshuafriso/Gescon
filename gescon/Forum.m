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

-(void) inserirMensagemComTexto: (NSString *) texto eUsuarioLogado: (NSString *) usuario eData: (NSDate *) data {
    
    Mensagem *m = [[Mensagem alloc] init];
    m.text = texto;
    m.usuarioLogado = usuario;
    m.dataPostagem = data;
    m.forumId = self.objectId;
    
    RLMRealm *realmForum = [RLMRealm defaultRealm];
    
    [realmForum beginWriteTransaction];
    [realmForum addObject:m];
    [realmForum commitWriteTransaction];
    
}

-(RLMResults<Mensagem *> *) getMensagens {
    
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"forumId = %d",
                         self.objectId];
    
    RLMResults<Mensagem *> *msg = [Mensagem objectsWithPredicate:pred];
    
    return msg;
}
-(void) inserirComentario: (NSString *) texto eUsuarioLogado: (NSString *) usuario eData: (NSDate *) data {
    
    NovoComent *coment = [[NovoComent alloc] init];
    coment.detalhesComent = texto;
    coment.usuarioLogado = usuario;
    coment.dataPostagem = data;
    coment.forumId = self.objectId;
    
    RLMRealm *realmForum = [RLMRealm defaultRealm];
    
    [realmForum beginWriteTransaction];
    [realmForum addObject:coment];
    [realmForum commitWriteTransaction];
    
}

-(RLMResults<NovoComent *> *) getComentario {
    
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"forumId = %d",
                         self.objectId];
    
    RLMResults<NovoComent *> *coment = [NovoComent objectsWithPredicate:pred];
    
    return coment;
}

@end
