//
//  Produto.h
//  gescon
//
//  Created by Joshua Friso on 8/27/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <Realm/Realm.h>

@interface Produto : RLMObject

@property int objectIdProd;

@property NSString *tituloProduto;

@property NSNumber<RLMFloat> *precoProduto;

@property NSString *usuario;

@property NSString *urlImagemAnuncio;

@property NSString *descProduto;

@property NSString *contatoProd;

-(instancetype) initWithTituloProd: (NSString *) tituloProduto;


@end
