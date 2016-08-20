//
//  NoticiasTableViewController.m
//  gescon
//
//  Created by Joshua Friso on 8/18/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "NoticiasTableViewController.h"
#import "NoticiaTableViewCell.h"
#import "Noticia.h"
#import "NoticiaViewController.h"

@interface NoticiasTableViewController ()

@end

@implementation NoticiasTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrayNoticia = [Noticia allObjects];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _arrayNoticia.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Noticia *noticia = _arrayNoticia[indexPath.row];
    
    NoticiaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NoticiaCell" forIndexPath:indexPath];
    
    cell.tituloNoticia.text = noticia.tituloNovaNoticia;
    cell.descricaoNoticia.text = noticia.descricaoNovaNoticia;
    cell.noticia = noticia;
    
    
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

//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    [self performSegueWithIdentifier:@"SetaShowNoticia" sender: nil];
//}


#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"SetaShowNoticia"]) {
        
        NoticiaTableViewCell *cell = sender;
        
        NoticiaViewController *nvc = segue.destinationViewController;
        
        nvc.noticia = cell.noticia;
    }
    
}


@end
