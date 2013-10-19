//
//  PessoaCellController.h
//  Vacinas
//
//  Created by Diego Ribeiro on 15/10/13.
//  Copyright (c) 2013 Diego Ribeiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pessoa.h"

@interface PessoaCellController : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *foto;
@property (weak, nonatomic) IBOutlet UILabel *nome;
@property (weak, nonatomic) IBOutlet UILabel *aviso;

- (void) carregarDados: (Pessoa *)pessoa;
@end

