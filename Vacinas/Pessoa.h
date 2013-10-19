//
//  Pessoa.h
//  Vacinas
//
//  Created by Diego Ribeiro on 11/10/13.
//  Copyright (c) 2013 Diego Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoa : NSObject


@property (nonatomic,strong) NSString *nome;
@property (nonatomic,strong) NSDate *dataNascimento;
@property (nonatomic,strong) NSData *foto;
@property (nonatomic,strong) NSArray *vacinas;

+ (Pessoa *) initWith: (NSString *)nome data:(NSDate *)nascimento foto: (NSData *)imagem;
@end
