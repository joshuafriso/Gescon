//
//  AvisoChegadaTableViewCell.h
//  gescon
//
//  Created by Joshua Friso on 9/13/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AvisoChegada.h"

@interface AvisoChegadaTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *tituloListaAvisoChegada;

@property AvisoChegada *avisoChegada;

@end
