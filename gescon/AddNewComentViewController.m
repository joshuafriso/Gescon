//
//  AddNewComentViewController.m
//  gescon
//
//  Created by Joshua Friso on 9/17/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "AddNewComentViewController.h"
#import "AppDelegate.h"
#import "Forum.h"

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
    
    Forum *forumNewcoment = [[Forum alloc] initWithTema:nil];
    
    [forumNewcoment inserirComentario:_novoComentLabel.text eUsuarioLogado:[[NSUserDefaults standardUserDefaults]objectForKey:@"nomeUsuario"] eData:[NSDate date]];
    
    RLMRealm *realmComent = [RLMRealm defaultRealm];
    
    [realmComent beginWriteTransaction];
    [realmComent addObject:forumNewcoment];
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
