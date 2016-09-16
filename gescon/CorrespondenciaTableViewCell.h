//
//  CorrespondenciaTableViewCell.h
//  gescon
//
//  Created by Joshua Friso on 9/14/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Correspondencia.h"

@interface CorrespondenciaTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nomeDestino;

@property Correspondencia *corresp;

@end
