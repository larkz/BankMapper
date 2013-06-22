//
//  mainMenuViewController.h
//  BankMapper
//
//  Created by Larkin on 6/13/13.
//  Copyright (c) 2013 Larkin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "mapBanksViewController.h"
#import "selectBanksViewController.h"

@interface mainMenuViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIButton * selectDistanceButton;
@property (strong, nonatomic) IBOutlet UIButton * selectBanksButton;
@property (strong, nonatomic) IBOutlet UIButton * viewListBanksButton;
@property (strong, nonatomic) IBOutlet UIButton * viewMapBanksButton;



@property (strong, nonatomic) IBOutlet UIPickerView *dataPickerView;

@property (strong, nonatomic) NSMutableArray * banksList;

- (IBAction)selectDistanceAction:(id)sender;
- (IBAction)selectBanksAction:(id)sender;
- (IBAction)viewListBanksAction:(id)sender;
- (IBAction)viewMapBanksAction:(id)sender;









@end
