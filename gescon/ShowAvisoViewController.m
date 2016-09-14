//
//  ShowAvisoViewController.m
//  gescon
//
//  Created by Joshua Friso on 9/13/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "ShowAvisoViewController.h"
#import <Realm/Realm.h>

@interface ShowAvisoViewController ()

@end

@implementation ShowAvisoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nomeShowAvisoLabel.text = self.avisoChegada.tituloAvisoLista;
    self.contatoShowAvisoLabel.text = self.avisoChegada.contatoAvisoLista;
    if (self.avisoChegada.infoVeiculo == 0) {
        self.infoVeiculoShowAvisoLabel.text = @"SIM";
    }else if (self.avisoChegada.infoVeiculo == 1){
        self.infoVeiculoShowAvisoLabel.text = @"NÃO";
    }
    self.modeloShowAvisoLabel.text = self.avisoChegada.modeloVeiculo;
    self.corShowAvisoLabel.text = self.avisoChegada.corVeiculo;
    if (self.avisoChegada.infoCadastroVeiculo == 0) {
        self.infoCadastroShowAvisoLabel.text = @"SIM";
    }else if (self.avisoChegada.infoCadastroVeiculo == 1){
        self.infoCadastroShowAvisoLabel.text = @"NÃO";
    }
    self.prevShowAvisoLabel.text = self.avisoChegada.prevChegada;
    self.qtdShowAvisoLabel.text = self.avisoChegada.qtdPessoas;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)botaoFinalizarAviso:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Atenção!!!" message:@"O Condômino chegou?" preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        
        RLMRealm *realm = [RLMRealm defaultRealm];
        
        [realm beginWriteTransaction];
        [realm deleteObject:_avisoChegada];
        [realm commitWriteTransaction];
        
        [self.navigationController popViewControllerAnimated:YES];
        
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *actionCancel){}];
    
    [alert addAction:defaultAction];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:YES completion:nil];
    
    
    
    NSLog(@"Botão delete acionado");
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
