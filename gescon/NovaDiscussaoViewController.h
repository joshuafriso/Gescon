//
//  NovaDiscussaoViewController.h
//  gescon
//
//  Created by Joshua Friso on 8/20/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NovaDiscussaoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *temaNovaDiscussao;

@property (weak, nonatomic) IBOutlet UISegmentedControl *importanciaNovaDiscussao;

@property (weak, nonatomic) IBOutlet UITextView *detalhesNovaDiscussao;


@end
