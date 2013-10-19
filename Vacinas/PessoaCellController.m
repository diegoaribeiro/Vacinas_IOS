//
//  PessoaCellController.m
//  Vacinas
//
//  Created by Diego Ribeiro on 15/10/13.
//  Copyright (c) 2013 Diego Ribeiro. All rights reserved.
//

#import "PessoaCellController.h"

@implementation PessoaCellController

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) carregarDados:(Pessoa *)pessoa
{
//    UIImage *foto = [UIImage imageWithData:pessoa.foto];
//    [self.nome setText:pessoa.nome];
//    [self.foto setImage:foto];
    
    [self.nome setText:@"Diego"];
}

@end
