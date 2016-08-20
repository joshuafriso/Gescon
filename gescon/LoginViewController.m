//
//  LoginViewController.m
//  gescon
//
//  Created by Joshua Friso on 8/14/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "LoginViewController.h"
#import "HomeViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)botaoEntrar:(id)sender {
    self.userLogin = _loginLabel.text;
    self.userSenha = _senhaLabel.text;
    
    if ([self.userLogin isEqualToString: @"Teste01"] && [self.userSenha isEqualToString:@"1234"]) {
        _loginLabel.text = @"Tester";
        
        [[NSUserDefaults standardUserDefaults] setObject:_loginLabel.text forKey:@"nomeUsuario"];
        [[NSUserDefaults standardUserDefaults]synchronize];
        
        [self performSegueWithIdentifier:@"TabBar" sender:sender];
        
    }else{
        
        UIAlertController *alertLogin = [UIAlertController alertControllerWithTitle:@"Ops!!!" message:@"Login ou senha incorretos!" preferredStyle: UIAlertControllerStyleAlert];
        
        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {}];
        
        [alertLogin addAction:defaultAction];
        
        [self presentViewController:alertLogin animated:YES completion:nil];
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//#pragma mark - Navigation
//
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([segue.identifier isEqualToString:@"TabBar"]) {
//       
//    }
//}


@end
