//
//  ImageToDataTransformer.m
//  Vacinas
//
//  Created by joão melo on 28/10/13.
//  Copyright (c) 2013 Diego Ribeiro. All rights reserved.
//

#import "ImageToDataTransformer.h"

@implementation ImageToDataTransformer

+ (BOOL)allowsReverseTransformation {
	return YES;
}


+ (Class)transformedValueClass {
	return [NSData class];
}


- (id)transformedValue:(id)value {
	return UIImagePNGRepresentation(value);
}


- (id)reverseTransformedValue:(id)value {
	return [[UIImage alloc] initWithData:value];
}

@end
