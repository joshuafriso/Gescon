//
//  ForumTemaTableViewCell.h
//  gescon
//
//  Created by Joshua Friso on 8/20/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Forum.h"

@interface ForumTemaTableViewCell : UITableViewCell

@property Forum *forum;

@property (weak, nonatomic) IBOutlet UIView *temaCellForumTable;

@property (weak, nonatomic) IBOutlet UILabel *temaCellLabelForum;

@end
