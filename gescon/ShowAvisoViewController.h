//
//  ShowAvisoViewController.h
//  gescon
//
//  Created by Joshua Friso on 9/13/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AvisoChegada.h"

@interface ShowAvisoViewController : UIViewController

@property AvisoChegada *avisoChegada;

@property (weak, nonatomic) IBOutlet UILabel *nomeShowAvisoLabel;

@property (weak, nonatomic) IBOutlet UILabel *contatoShowAvisoLabel;

@property (weak, nonatomic) IBOutlet UILabel *infoVeiculoShowAvisoLabel;

@property (weak, nonatomic) IBOutlet UILabel *modeloShowAvisoLabel;

@property (weak, nonatomic) IBOutlet UILabel *corShowAvisoLabel;

@property (weak, nonatomic) IBOutlet UILabel *infoCadastroShowAvisoLabel;

@property (weak, nonatomic) IBOutlet UILabel *prevShowAvisoLabel;

@property (weak, nonatomic) IBOutlet UILabel *qtdShowAvisoLabel;

@end
