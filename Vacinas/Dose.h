//
//  Dose.h
//  Vacinas
//
//  Created by joão melo on 28/10/13.
//  Copyright (c) 2013 Diego Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Evento, Vacina;

@interface Dose : NSManagedObject

@property (nonatomic, retain) NSNumber * ordem;
@property (nonatomic, retain) NSNumber * mesIdeal;
@property (nonatomic, retain) Vacina *vacina;
@property (nonatomic, retain) NSSet *eventos;
@end

@interface Dose (CoreDataGeneratedAccessors)

- (void)addEventosObject:(Evento *)value;
- (void)removeEventosObject:(Evento *)value;
- (void)addEventos:(NSSet *)values;
- (void)removeEventos:(NSSet *)values;

@end
