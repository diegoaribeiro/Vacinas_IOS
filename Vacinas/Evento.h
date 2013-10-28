//
//  Evento.h
//  Vacinas
//
//  Created by joão melo on 28/10/13.
//  Copyright (c) 2013 Diego Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Dose, Pessoa;

@interface Evento : NSManagedObject

@property (nonatomic, retain) NSDate * planejado;
@property (nonatomic, retain) NSDate * realizado;
@property (nonatomic, retain) Dose *dose;
@property (nonatomic, retain) Pessoa *pessoa;

@end
