//
//  Login.h
//  gescon
//
//  Created by Joshua Friso on 8/14/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Login : NSObject

@property int objectId;

@property NSString *userLoginNome;

-(instancetype) initWithLoginName: (NSString *)userLoginNome;
@end
