//
//  Pessoa.m
//  Vacinas
//
//  Created by Diego Ribeiro on 11/10/13.
//  Copyright (c) 2013 Diego Ribeiro. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa


+ (Pessoa *) initWith: (NSString *)nome data:(NSDate *)nascimento foto: (NSData *)imagem
{
    Pessoa *pessoa = [[Pessoa alloc]init];
    
    [pessoa setNome:nome];
    [pessoa setFoto:imagem];
    [pessoa setDataNascimento:nascimento];
    
    return pessoa;
}
@end
