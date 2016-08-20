//
//  NoticiaViewController.h
//  gescon
//
//  Created by Joshua Friso on 8/19/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Noticia.h"

@interface NoticiaViewController : UIViewController

@property Noticia *noticia;

@property (weak, nonatomic) IBOutlet UILabel *tituloNoticiaVizualizacao;

@property (weak, nonatomic) IBOutlet UITextView *descricaoNoticiaVisualizacao;

@end
