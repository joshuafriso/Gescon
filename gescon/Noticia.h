//
//  Noticia.h
//  gescon
//
//  Created by Joshua Friso on 8/18/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Realm/Realm.h>

@interface Noticia : RLMObject

@property int objectId;
@property NSString *tituloNovaNoticia;
@property NSString *descricaoNovaNoticia;

-(instancetype) initWithTitulo: (NSString *) tituloNovaNoticia;

-(instancetype) initWithDescricao: (NSString *) descricaoNovaNoticia;

@end
