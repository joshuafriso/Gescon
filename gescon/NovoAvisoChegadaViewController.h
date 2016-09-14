//
//  NovoAvisoChegadaViewController.h
//  gescon
//
//  Created by Joshua Friso on 9/13/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NovoAvisoChegadaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textNomeNovoAviso;
@property (weak, nonatomic) IBOutlet UITextField *contatoNovoAviso;
@property (weak, nonatomic) IBOutlet UISegmentedControl *infoVeiculoAviso;
@property (weak, nonatomic) IBOutlet UITextField *modeloVeiculoAviso;
@property (weak, nonatomic) IBOutlet UITextField *corVeiculoAviso;
@property (weak, nonatomic) IBOutlet UISegmentedControl *infoCadastroVeiculoAviso;
@property (weak, nonatomic) IBOutlet UITextField *infoPrevisaoChegada;
@property (weak, nonatomic) IBOutlet UITextField *qtdPessoasAviso;

@end
