//
//  ShowCorrespondenciaViewController.m
//  gescon
//
//  Created by Joshua Friso on 9/14/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "ShowCorrespondenciaViewController.h"
#import <Realm/Realm.h>

@interface ShowCorrespondenciaViewController ()

@end

@implementation ShowCorrespondenciaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nomeShowCorresp.text = self.corresp.nomeDestinatario;
    self.aptoShowCorresp.text = self.corresp.aptoDestino;
    self.detalheShowCorresp.text = self.corresp.detalhesCorrespondencia;
}
- (IBAction)botaoCorrespRetirada:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Atenção!!!" message:@"Condômino retirou a encomenda?" preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        
        RLMRealm *realm = [RLMRealm defaultRealm];
        
        [realm beginWriteTransaction];
        [realm deleteObject:_corresp];
        [realm commitWriteTransaction];
        
        [self.navigationController popViewControllerAnimated:YES];
        
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *actionCancel){}];
    
    [alert addAction:defaultAction];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:YES completion:nil];
    
    
    
    NSLog(@"Botão retirada acionado");

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
