//
//  Forum.h
//  gescon
//
//  Created by Joshua Friso on 8/20/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <Realm/Realm.h>

@interface Forum : RLMObject

@property int objectId;
@property NSString *tema;
@property int importancia;
@property NSString *detalhes;
@property NSString *usuarioLogado;
@property NSDate *dataPostagem;

-(instancetype) initWithTema: (NSString *) tema;

@end
