//
//  NoticiaViewController.m
//  gescon
//
//  Created by Joshua Friso on 8/19/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "NoticiaViewController.h"
#import <Realm/Realm.h>

@interface NoticiaViewController ()

@end

@implementation NoticiaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tituloNoticiaVizualizacao.text = self.noticia.tituloNovaNoticia;
    
    self.descricaoNoticiaVisualizacao.text = self.noticia.descricaoNovaNoticia;

}
- (IBAction)botaoDeleteNoticia:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Atenção!!!" message:@"Você tem certeza que deseja apagar?" preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        
        RLMRealm *realm = [RLMRealm defaultRealm];
        
        [realm beginWriteTransaction];
        [realm deleteObject:_noticia];
        [realm commitWriteTransaction];
        
        [self.navigationController popViewControllerAnimated:YES];
    
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *actionCancel){}];
    
    [alert addAction:defaultAction];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:YES completion:nil];

    
    
    NSLog(@"Botão delete acionado");
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
