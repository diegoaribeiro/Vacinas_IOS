//
//  Vacina.h
//  Vacinas
//
//  Created by joão melo on 28/10/13.
//  Copyright (c) 2013 Diego Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Dose;

@interface Vacina : NSManagedObject

@property (nonatomic, retain) NSString * nome;
@property (nonatomic, retain) NSString * apelido;
@property (nonatomic, retain) NSString * descricao;
@property (nonatomic, retain) NSNumber * isCriada;
@property (nonatomic, retain) NSSet *doses;
@end

@interface Vacina (CoreDataGeneratedAccessors)

- (void)addDosesObject:(Dose *)value;
- (void)removeDosesObject:(Dose *)value;
- (void)addDoses:(NSSet *)values;
- (void)removeDoses:(NSSet *)values;

@end
