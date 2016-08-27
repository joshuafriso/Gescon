//
//  NovoProdutoTableViewController.h
//  gescon
//
//  Created by Joshua Friso on 8/27/16.
//  Copyright © 2016 Joshua Friso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NovoProdutoTableViewController : UITableViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *tituloNovoProd;
@property (weak, nonatomic) IBOutlet UICollectionView *fotosNovoProdCollectionView;
@property (weak, nonatomic) IBOutlet UITextView *descNovoProd;
@property (weak, nonatomic) IBOutlet UITextField *valorNovoProd;
@property (weak, nonatomic) IBOutlet UITextField *telefoneNovoProd;

@end
