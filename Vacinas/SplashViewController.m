//
//  ViewController.m
//  Vacinas
//
//  Created by Diego Ribeiro on 11/10/13.
//  Copyright (c) 2013 Diego Ribeiro. All rights reserved.
//

#import "SplashViewController.h"
#import "TabelaPessoasViewController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated{
    
    
    sleep(2);
    NSLog(@"apareceu");
    TabelaPessoasViewController *tela = [[TabelaPessoasViewController alloc] init];
    
//    [tela setModalPresentationStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:tela animated:YES completion:nil];
    
    
}


@end
