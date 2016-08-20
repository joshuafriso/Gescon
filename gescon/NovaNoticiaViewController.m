//
//  NovaNoticiaViewController.m
//  gescon
//
//  Created by Joshua Friso on 8/19/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "NovaNoticiaViewController.h"
#import "AppDelegate.h"
#import "Noticia.h"

@interface NovaNoticiaViewController ()

@end

@implementation NovaNoticiaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)botaoCancelNovaNoticia:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)botaoDoneNovaNoticia:(id)sender {
    
    Noticia *noticia = [[Noticia alloc] initWithTitulo:_tituloNovaNoticia.text];
    
    noticia.descricaoNovaNoticia = _descricaoNovaNoticia.text;
    
    RLMRealm *realm = [RLMRealm defaultRealm];
    
    [realm beginWriteTransaction];
    [realm addOrUpdateObject:noticia];
    [realm commitWriteTransaction];
    
    [self dismissViewControllerAnimated:YES completion: ^{
        
    }];
    NSLog(@"Botão salvar noticia precionado");
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