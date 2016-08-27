//
//  ProdutosTableViewCell.h
//  gescon
//
//  Created by Joshua Friso on 8/27/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Produto.h"


@interface ProdutosTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageViewProdutoAnuncio;

@property (weak, nonatomic) IBOutlet UILabel *tituloProdutoLabel;

@property (weak, nonatomic) IBOutlet UILabel *nomeUsuarioAnuncio;

@property (weak, nonatomic) IBOutlet UILabel *precoAnuncioProdutoLabel;

@property Produto *produto;

@end
