//
//  NovoProdutoTableViewController.m
//  gescon
//
//  Created by Joshua Friso on 8/27/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "NovoProdutoTableViewController.h"
#import "Produto.h"

@interface NovoProdutoTableViewController ()

@end

@implementation NovoProdutoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 0;
}
- (IBAction)botaoCancel:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion: ^{
        
    }];
}
- (IBAction)botaoDone:(id)sender {
    Produto *produto = [[Produto alloc]initWithTituloProd:_tituloNovoProd.text];
    
    produto.precoProduto = [[NSNumber alloc] initWithFloat:[self.valorNovoProd.text doubleValue]];
    produto.usuario = [[NSUserDefaults standardUserDefaults] objectForKey:@"nomeUsuario"];
    produto.contatoProd = _telefoneNovoProd.text;
    produto.descProduto = _descNovoProd.text;
    
    RLMRealm *realm = [RLMRealm defaultRealm];
    
    [realm beginWriteTransaction];
    [realm addOrUpdateObject:produto];
    [realm commitWriteTransaction];
    
    [self dismissViewControllerAnimated:YES completion: ^{
        
    }];
    NSLog(@"Botão done novo produto acionado");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
