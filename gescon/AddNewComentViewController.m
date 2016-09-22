//
//  AddNewComentViewController.m
//  gescon
//
//  Created by Joshua Friso on 9/17/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "AddNewComentViewController.h"
#import "AppDelegate.h"
#import "NovoComent.h"

@interface AddNewComentViewController ()

@end

@implementation AddNewComentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)botaoCancelNewComent:(id)sender {
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)botaoDoneNewComent:(id)sender {
    
    NovoComent *novoComent = [[NovoComent alloc] initWithTipo: @"Coment"];
    
    novoComent.usuarioLogado = [[NSUserDefaults standardUserDefaults]objectForKey:@"nomeUsuario"];
    novoComent.dataPostagem = [NSDate date];
    novoComent.detalhesComent = _novoComentLabel.text;
    novoComent.forumId = self.forum.objectId;
    
//    [novoComent inserirComentario:_novoComentLabel.text eUserComent:[[NSUserDefaults standardUserDefaults]objectForKey:@"nomeUsuario"] eDataPost:[NSDate date] eTipo:@"Coment"];
    
    RLMRealm *realmComent = [RLMRealm defaultRealm];
    
    [realmComent beginWriteTransaction];
    [realmComent addObject:novoComent];
    [realmComent commitWriteTransaction];
    
    [self dismissViewControllerAnimated:YES completion:^{
    }];
    
    NSLog(@"Botão done novo comentário precionado");
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
