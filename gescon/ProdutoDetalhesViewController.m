//
//  ProdutoDetalhesViewController.m
//  gescon
//
//  Created by Joshua Friso on 8/27/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "ProdutoDetalhesViewController.h"
#import "Produto.h"

@interface ProdutoDetalhesViewController ()

@end

@implementation ProdutoDetalhesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tituloProdDetalhes.text = self.produto.tituloProduto;
    self.descProdDetalhes.text = self.produto.descProduto;
    self.valorProdDetalhes.text = [NSString stringWithFormat:@"%.2f", [_produto.precoProduto floatValue]];
    self.usuarioProdDetalhes.text = self.produto.usuario;
    self.contatoProdDetalhes.text = self.produto.contatoProd;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
