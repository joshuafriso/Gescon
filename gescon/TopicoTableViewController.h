//
//  DicussaoTableViewController.h
//  gescon
//
//  Created by Joshua Friso on 8/20/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Realm/Realm.h>
#import "Forum.h"

@interface TopicoTableViewController : UITableViewController

@property RLMResults *arrayTopicoDetalhes;

@property Forum *forum;

@end