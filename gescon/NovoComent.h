//
//  NovoComent.h
//  gescon
//
//  Created by Joshua Friso on 9/17/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <Realm/Realm.h>
#import "Forum.h"

@interface NovoComent : RLMObject

@property int comentId;
@property NSString *detalhesComent;
@property int forumId;
@property NSString *usuarioLogado;
@property NSDate *dataPostagem;
@property NSString *tipoComent;

@property Forum *forum;

-(instancetype)initWithTipo: (NSString *) tipoComent;

//-(void) inserirComentario: (NSString *) detalhes eUserComent: (NSString *) userComent eDataPost: (NSDate *) dataPost eTipo: (NSString *) typeComent;
//-(RLMResults<NovoComent *> *) getComent;

@end
