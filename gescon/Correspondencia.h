//
//  Correspondencia.h
//  gescon
//
//  Created by Joshua Friso on 9/14/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <Realm/Realm.h>

@interface Correspondencia : RLMObject

@property int objectId;
@property NSString *nomeDestinatario;
@property NSString *aptoDestino;
@property NSString *detalhesCorrespondencia;

-(instancetype)initWithNomeDest: (NSString *) nomeDestinatario;

@end
