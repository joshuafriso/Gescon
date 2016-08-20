//
//  ForumTableViewController.m
//  gescon
//
//  Created by Joshua Friso on 8/20/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "ForumTableViewController.h"
#import "Forum.h"
#import "ForumTemaTableViewCell.h"
#import "TopicoTableViewController.h"
#import "AppDelegate.h"

@interface ForumTableViewController ()

@end

@implementation ForumTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrayForum = [Forum allObjects];
    
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrayForum.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ForumTemaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DicussaoCell" forIndexPath:indexPath];
    
    Forum *forum = _arrayForum[indexPath.row];
    
    if(forum.importancia == 2){
        cell.temaCellLabelForum.textColor = [UIColor redColor];
        
    }else if(forum.importancia == 1){
        cell.temaCellLabelForum.textColor = [UIColor blueColor];
    }
    cell.temaCellLabelForum.text = forum.tema;
    cell.forum = forum;
    
    
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


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"SetaDiscussaoForum"]) {
        
        ForumTemaTableViewCell *cellTema = sender;
        
        TopicoTableViewController *ttvc = segue.destinationViewController;
        
        ttvc.forum = cellTema.forum;
    }
    
}


@end
