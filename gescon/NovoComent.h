//
//  NovoComent.h
//  gescon
//
//  Created by Joshua Friso on 9/17/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <Realm/Realm.h>

@interface NovoComent : RLMObject

@property int objectId;
@property NSString *detalhesComent;
@property int forumId;
@property NSString *usuarioLogado;
@property NSDate *dataPostagem;

@end