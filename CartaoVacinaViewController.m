//
//  CartaoVacinaViewController.m
//  Vacinas
//
//  Created by Diego Ribeiro on 28/10/13.
//  Copyright (c) 2013 Diego Ribeiro. All rights reserved.
//

#import "CartaoVacinaViewController.h"


@interface CartaoVacinaViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *cartaoVacinaCollection;
@property (weak, nonatomic) IBOutlet UIImageView *FotoImage;
@property (weak, nonatomic) IBOutlet UILabel *nomeLabel;

@property(strong, nonatomic) NSMutableArray *doses;

@end

@implementation CartaoVacinaViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void) viewWillAppear:(BOOL)animated
{
    [self carregarInformacoes];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSInteger numeroCelulas = [self.doses count] + 1;
    return numeroCelulas;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell;
    if(indexPath.item < [self.doses count] )
    {
        cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"CelulaDose" forIndexPath:indexPath];
        
    }
    else
    {
        cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"AdicionarVacinaCel" forIndexPath:indexPath];
    
    }
    
    return cell;
}


- (void) carregarInformacoes
{
    self.doses = [[NSMutableArray alloc] initWithObjects:@"dose 1", @"dose 2", nil];
    
    [self.nomeLabel setText:@"Diego Ribeiro"];
    
}
@end
