//
//  AddNewComentViewController.h
//  gescon
//
//  Created by Joshua Friso on 9/17/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Forum.h"

@interface AddNewComentViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *novoComentLabel;

@property RLMResults *mensagens;

@property Forum *forum;

@end
