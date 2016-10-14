//
//  LoginViewController.m
//  gescon
//
//  Created by Joshua Friso on 8/14/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import "LoginViewController.h"
#import "HomeViewController.h"
#import <Realm/Realm.h>
#import "User.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.users = [User allObjects];
    
}

-(BOOL)shouldAutorotate{
    return NO;
}
+(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait+UIInterfaceOrientationMaskPortraitUpsideDown;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (IBAction)botaoEntrar:(id)sender {
    
    self.users = [User objectsWhere:@"userName = %@  AND password = %@", _loginLabel.text, _senhaLabel.text];
    int validator = _users.count;
    
    
//    self.userLogin = _loginLabel.text;
//    self.userSenha = _senhaLabel.text;
    
    
//    NSURL *serverURL = [NSURL URLWithString:@"https://db.gesconapp.com.br/"];
//    [RLMSyncUser all];
//    
//    RLMSyncCredential *usernameCredential = [RLMSyncCredential credentialWithUsername:self.userLogin password:self.userSenha actions:RLMAuthenticationActionsUseExistingAccount];
//    [RLMSyncUser authenticateWithCredential:usernameCredential authServerURL:serverURL onCompletion:^(RLMSyncUser *user, NSError *error){
    
    if ((validator > 0) && (validator < 2 )) {
        
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
