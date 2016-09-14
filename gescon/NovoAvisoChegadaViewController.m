//
//  NovoAvisoChegadaViewController.m
//  gescon
//
//  Created by Joshua Friso on 9/13/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "NovoAvisoChegadaViewController.h"
#import "AppDelegate.h"
#import "AvisoChegada.h"

@interface NovoAvisoChegadaViewController ()

@end

@implementation NovoAvisoChegadaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)botaoValidaVeiculo:(id)sender {
}
- (IBAction)botaoValidaCadastroVeiculo:(id)sender {
}
- (IBAction)botaoCancel:(id)sender {
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)botaoDone:(id)sender {
    
    AvisoChegada *avisoChegada = [[AvisoChegada alloc] initWithTituloAviso:_textNomeNovoAviso.text];
    avisoChegada.contatoAvisoLista = _contatoNovoAviso.text;
    avisoChegada.infoVeiculo = (int)_infoVeiculoAviso.selectedSegmentIndex;
    avisoChegada.modeloVeiculo = _modeloVeiculoAviso.text;
    avisoChegada.corVeiculo = _corVeiculoAviso.text;
    avisoChegada.infoCadastroVeiculo = (int)_infoCadastroVeiculoAviso.selectedSegmentIndex;
    avisoChegada.prevChegada = _infoPrevisaoChegada.text;
    avisoChegada.qtdPessoas = _qtdPessoasAviso.text;
    
    RLMRealm *realmAviso = [RLMRealm defaultRealm];
    
    [realmAviso beginWriteTransaction];
    [realmAviso addObject:avisoChegada];
    [realmAviso commitWriteTransaction];
    
    [self dismissViewControllerAnimated:YES completion: ^{
        
    }];
    NSLog(@"Botão salvar aviso precionado");
    
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
