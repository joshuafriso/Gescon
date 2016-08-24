//
//  NovaDiscussaoViewController.m
//  gescon
//
//  Created by Joshua Friso on 8/20/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "NovaDiscussaoViewController.h"
#import "AppDelegate.h"
#import "Forum.h"

@interface NovaDiscussaoViewController ()

@end

@implementation NovaDiscussaoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)botaoCancelNovaDisc:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)botaoImportanciaNovaDisc:(id)sender {
}
- (IBAction)botaoDoneNovaDisc:(id)sender {
    Forum *forumNova = [[Forum alloc] initWithTema:_temaNovaDiscussao.text];
    forumNova.importancia = (int)_importanciaNovaDiscussao.selectedSegmentIndex;
    
    [forumNova inserirMensagemComTexto:_detalhesNovaDiscussao.text eUsuarioLogado:[[NSUserDefaults standardUserDefaults] objectForKey:@"nomeUsuario"] eData:[NSDate date]];
    
    RLMRealm *realmForum = [RLMRealm defaultRealm];
    
    [realmForum beginWriteTransaction];
    [realmForum addObject:forumNova];
    [realmForum commitWriteTransaction];
    
    [self dismissViewControllerAnimated:YES completion: ^{
        
    }];
    NSLog(@"Botão salvar dicussao precionado");
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
