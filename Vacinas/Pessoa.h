//
//  Pessoa.h
//  Vacinas
//
//  Created by joão melo on 10/11/13.
//  Copyright (c) 2013 Diego Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Evento;

@interface Pessoa : NSManagedObject

@property (nonatomic, retain) id foto;
@property (nonatomic, retain) NSDate * nascimento;
@property (nonatomic, retain) NSString * nome;
@property (nonatomic, retain) NSString * tipoSanguineo;
@property (nonatomic, retain) NSString * descricao;
@property (nonatomic, retain) NSSet *eventos;
@end

@interface Pessoa (CoreDataGeneratedAccessors)

- (void)addEventosObject:(Evento *)value;
- (void)removeEventosObject:(Evento *)value;
- (void)addEventos:(NSSet *)values;
- (void)removeEventos:(NSSet *)values;

@end
