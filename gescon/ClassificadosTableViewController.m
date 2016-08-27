//
//  ClassificadosTableViewController.m
//  gescon
//
//  Created by Joshua Friso on 8/27/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "ClassificadosTableViewController.h"
#import "Produto.h"
#import "NovoProdutoTableViewController.h"
#import "ProdutosTableViewCell.h"

@interface ClassificadosTableViewController ()

@end

@implementation ClassificadosTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrayClassificados = [Produto allObjects];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _arrayClassificados.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Produto *prod = _arrayClassificados[indexPath.row];
    
    ProdutosTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ShowClassificadosCell" forIndexPath:indexPath];
    
    cell.tituloProdutoLabel.text = prod.tituloProduto;
    cell.nomeUsuarioAnuncio.text = prod.usuario;
    cell.precoAnuncioProdutoLabel.text = [NSString stringWithFormat:@"%.2f", [prod.precoProduto floatValue]];
    cell.produto = prod;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"SetaMostraProduto"]) {
        
        ProdutosTableViewCell *cell = sender;
        
        ClassificadosTableViewController *ctvc = segue.destinationViewController;
        ctvc.produto = cell.produto;
        
    }
}


@end
