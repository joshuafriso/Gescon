//
//  ShowCorrespondenciaViewController.h
//  gescon
//
//  Created by Joshua Friso on 9/14/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Correspondencia.h"

@interface ShowCorrespondenciaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nomeShowCorresp;
@property (weak, nonatomic) IBOutlet UILabel *aptoShowCorresp;
@property (weak, nonatomic) IBOutlet UITextView *detalheShowCorresp;

@property Correspondencia *corresp;

@end
