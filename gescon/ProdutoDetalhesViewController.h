//
//  ProdutoDetalhesViewController.h
//  gescon
//
//  Created by Joshua Friso on 8/27/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Produto.h"

@interface ProdutoDetalhesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *tituloProdDetalhes;
@property (weak, nonatomic) IBOutlet UITextView *descProdDetalhes;
@property (weak, nonatomic) IBOutlet UILabel *valorProdDetalhes;
@property (weak, nonatomic) IBOutlet UILabel *usuarioProdDetalhes;
@property (weak, nonatomic) IBOutlet UILabel *contatoProdDetalhes;

@property Produto *produto;

@end
