//
//  DicussaoTableViewController.m
//  gescon
//
//  Created by Joshua Friso on 8/20/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "TopicoTableViewController.h"
#import "TopicosTableViewCell.h"
#import "Forum.h"
#import "NewComentTableViewCell.h"

@interface TopicoTableViewController ()

@end

@implementation TopicoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrayTopicoDetalhes = [self.forum getMensagens];
    self.arrayComentarios = [NovoComent allObjects];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 100;
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
    Mensagem *msg;
    NovoComent *coment;
    
    int i, j,count;
    count = 0;
    for( i = 0; i < _arrayTopicoDetalhes.count; i++){
        if(![_arrayTopicoDetalhes isEqual:nil]){
            msg = _arrayTopicoDetalhes[i];
            if ([msg.tipoMensagem isEqualToString:@"Topico"]) {
                count++ ;
            }
        }
    }
    for (j = 0; j < _arrayComentarios.count; j++) {
        if(![_arrayComentarios isEqual:nil]){
            coment  = _arrayComentarios[j];
            if ([coment.tipoComent isEqualToString: @"Coment"]){
                count++ ;
            }
        }

    }
    return count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell;
    
    Mensagem *msg = _arrayTopicoDetalhes[indexPath.row];
    
    NovoComent *coment = _arrayComentarios[indexPath.row];
    
    NSLog(@"%@", msg.tipoMensagem);
    
    if ([msg.tipoMensagem  isEqual: @"Topico"]) {
        TopicosTableViewCell *cellTopico = [tableView dequeueReusableCellWithIdentifier:@"MensagemTopicoForum" forIndexPath:indexPath];
        
        if(msg.forumId == _forum.objectId){
            
            cellTopico.nomeUsuarioDiscussao.text = msg.usuarioLogado;
            cellTopico.detalhesDicussao.text = msg.text;
            cellTopico.dataPostagemDiscussao.text = msg.dataPostagem.description;
            cell = cellTopico;
        }
    }else if([coment.tipoComent isEqual: @"Coment"] && coment.forumId == msg.forumId){
        NewComentTableViewCell *cellComent = [tableView dequeueReusableCellWithIdentifier:@"NewComentCell" forIndexPath:indexPath];
        if (msg.forumId == _forum.objectId) {
            
            cellComent.nomeNewComentLabel.text = coment.usuarioLogado;
            cellComent.detalhesNewComentLabel.text = coment.detalhesComent;
            cellComent.dataNewComentLabel.text = coment.dataPostagem.description;
            cell = cellComent;
        }
    }
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
