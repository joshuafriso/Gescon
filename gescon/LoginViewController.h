//
//  LoginViewController.h
//  gescon
//
//  Created by Joshua Friso on 8/14/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Realm/Realm.h"


@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *loginLabel;

@property (weak, nonatomic) IBOutlet UITextField *senhaLabel;

@property RLMResults *users;

- (IBAction)botaoEntrar:(id)sender;

@end
