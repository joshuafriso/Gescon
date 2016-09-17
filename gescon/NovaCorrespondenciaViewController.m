//
//  NovaCorrespondenciaViewController.m
//  gescon
//
//  Created by Joshua Friso on 9/14/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "NovaCorrespondenciaViewController.h"
#import "AppDelegate.h"
#import "Correspondencia.h"

@interface NovaCorrespondenciaViewController ()

@end

@implementation NovaCorrespondenciaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)botaoCancelNovaCorresp:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)botaoDoneNovaCorresp:(id)sender {
    
    Correspondencia *corresp = [[Correspondencia alloc] initWithNomeDest:_nomeCorrespLabelNova.text];
    
    corresp.aptoDestino = _aptoCorrespLabelNova.text;
    corresp.detalhesCorrespondencia = _detalhesCorrespNova.text;
    
    RLMRealm *realm = [RLMRealm defaultRealm];
    
    [realm beginWriteTransaction];
    [realm addObject:corresp];
    [realm commitWriteTransaction];
    
    [self dismissViewControllerAnimated:YES completion: ^{
        
    }];
    NSLog(@"Botão salvar correspondencia precionado");
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
