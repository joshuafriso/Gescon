//
//  NewComentTableViewCell.h
//  gescon
//
//  Created by Joshua Friso on 9/17/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Forum.h"

@interface NewComentTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nomeNewComentLabel;

@property (weak, nonatomic) IBOutlet UILabel *dataNewComentLabel;

@property (weak, nonatomic) IBOutlet UILabel *detalhesNewComentLabel;

@property Forum *forumNewComent;

@end
