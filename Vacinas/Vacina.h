//
//  Vacina.h
//  Vacinas
//
//  Created by Diego Ribeiro on 11/10/13.
//  Copyright (c) 2013 Diego Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vacina : NSObject

@property (nonatomic,strong) NSString *nome;
@property (nonatomic, strong) NSArray *datasDosesTomadas;
@property (nonatomic, strong) NSArray *datasDosesRestantes;

@end
