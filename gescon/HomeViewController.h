//
//  HomeViewController.h
//  gescon
//
//  Created by Joshua Friso on 8/16/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Realm/Realm.h"

@interface HomeViewController : UIViewController //<UITableViewDataSource, UITableViewDelegate>


@property (weak, nonatomic) IBOutlet UILabel *bemVindoLabel;

@property (weak, nonatomic) IBOutlet UITableView *tableViewNoticias;

@property RLMResults *arrayNoticiasHome;

@end
