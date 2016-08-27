//
//  ClassificadosTableViewController.h
//  gescon
//
//  Created by Joshua Friso on 8/27/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Realm/Realm.h"
#import "Produto.h"

@interface ClassificadosTableViewController : UITableViewController

@property RLMResults *arrayClassificados;

@property Produto *produto;

@end
