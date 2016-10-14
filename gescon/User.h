//
//  User.h
//  gescon
//
//  Created by Joshua Friso on 10/11/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <Realm/Realm.h>

@interface User : RLMObject
@property int id;
@property NSString *userName;
@property NSString *password;
@property NSString *tipoUser;
@end

// This protocol enables typed collections. i.e.:
// RLMArray<User>
RLM_ARRAY_TYPE(User)
