//
//  AvisoChegada.h
//  gescon
//
//  Created by Joshua Friso on 9/13/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <Realm/Realm.h>

@interface AvisoChegada : RLMObject

@property int objectId;

@property NSString *tituloAvisoLista;
@property NSString *contatoAvisoLista;
@property int infoVeiculo;
@property NSString *modeloVeiculo;
@property NSString *corVeiculo;
@property int infoCadastroVeiculo;
@property NSString *prevChegada;
@property NSString *qtdPessoas;

-(instancetype) initWithTituloAviso: (NSString *) tituloAvisoLista;


@end
