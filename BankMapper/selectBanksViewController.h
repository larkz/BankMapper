//
//  selectBanksViewController.h
//  BankMapper
//
//  Created by Larkin on 6/19/13.
//  Copyright (c) 2013 Larkin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface selectBanksViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray * banksList;
@property (strong, nonatomic) NSMutableArray * tempBanksList;

@end
