//
//  HomeViewController.m
//  gescon
//
//  Created by Joshua Friso on 8/16/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "HomeViewController.h"


@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *userName = [[NSUserDefaults standardUserDefaults] objectForKey:@"nomeUsuario"];
    NSString *mensagemBemvindo = [NSString stringWithFormat:@"Bem-vindo, %@", userName];
    
    self.bemVindoLabel.text = mensagemBemvindo;
    
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
