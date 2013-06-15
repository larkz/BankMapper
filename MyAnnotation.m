//
//  MyAnnotation.m
//  BankMapper
//
//  Created by Larkin on 6/15/13.
//  Copyright (c) 2013 Larkin. All rights reserved.
//



#import "MyAnnotation.h"

@implementation MyAnnotation

@synthesize coordinate, title, subtitle;

- (id) initWithCoordinate:(CLLocationCoordinate2D)coord
{
    coordinate = coord;
    return self;
}

@end