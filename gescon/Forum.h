//
//  Forum.h
//  gescon
//
//  Created by Joshua Friso on 8/20/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <Realm/Realm.h>
#import "Mensagem.h"
#import "NovoComent.h"

@interface Forum : RLMObject

@property int objectId;
@property NSString *tema;
@property int importancia;

-(instancetype) initWithTema: (NSString *) tema;
-(void) inserirMensagemComTexto: (NSString *) texto eUsuarioLogado: (NSString *) usuario eData: (NSDate *) data;
-(void) inserirComentario: (NSString *) texto eUsuarioLogado: (NSString *) usuario eData: (NSDate *) data;
-(RLMResults<Mensagem *> *) getMensagens;
-(RLMResults<NovoComent *> *) getComentario;

@end

