//
//  Mensagem.h
//  gescon
//
//  Created by Carl Osorio on 8/23/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <Realm/Realm.h>

@interface Mensagem : RLMObject

@property int objectId;
@property NSString *text;
@property int forumId;
@property NSString *usuarioLogado;
@property NSDate *dataPostagem;
@property NSString *tipoMensagem;

@end