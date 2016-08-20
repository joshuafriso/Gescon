//
//  DiscussaoTableViewCell.h
//  gescon
//
//  Created by Joshua Friso on 8/20/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Forum.h"

@interface TopicosTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nomeUsuarioDiscussao;
@property (weak, nonatomic) IBOutlet UILabel *detalhesDicussao;
@property (weak, nonatomic) IBOutlet UILabel *dataPostagemDiscussao;

@property Forum *forum;


@end
