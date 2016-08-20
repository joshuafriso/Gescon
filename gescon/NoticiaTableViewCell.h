//
//  NoticiaTableViewCell.h
//  gescon
//
//  Created by Joshua Friso on 8/18/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Noticia.h"

@interface NoticiaTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *tituloNoticia;

@property (weak, nonatomic) IBOutlet UILabel *descricaoNoticia;

@property Noticia *noticia;

@end
