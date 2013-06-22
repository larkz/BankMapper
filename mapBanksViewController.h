//
//  mapBanksViewController.h
//  BankMapper
//
//  Created by Larkin on 6/14/13.
//  Copyright (c) 2013 Larkin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <Foundation/Foundation.h>
#import "MyAnnotation.h"
#import <CoreLocation/CoreLocation.h>

@interface mapBanksViewController : UIViewController<CLLocationManagerDelegate>
{
    IBOutlet MKMapView *mapView;
    int radius;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLLocation *currentLocation;
@property (strong, nonatomic) NSString * radiusStr;
@property (strong, nonatomic) NSString * searchURL;
@property (strong, nonatomic) NSString * bankSearchKeyword;

@property (strong, nonatomic) NSMutableArray * bankArray;


@property (nonatomic, assign) int radius;

-(void)displayMap;-(void)addPharmacies;


@end