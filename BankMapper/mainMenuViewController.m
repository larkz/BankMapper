//
//  mainMenuViewController.m
//  BankMapper
//
//  Created by Larkin on 6/13/13.
//  Copyright (c) 2013 Larkin. All rights reserved.
//

#import "mainMenuViewController.h"
#import "mapBanksViewController.h"
#import "selectBanksViewController.h"

@implementation mainMenuViewController

@synthesize selectBanksButton;
@synthesize selectDistanceButton;
@synthesize viewListBanksButton;
@synthesize viewMapBanksButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];

   
        
        NSLog(@"INITIALIZe BANK LIST");
        self.banksList = [NSArray arrayWithObjects:@"CIBC", @"RBC",@"TD", @"BMO", @"ScotiaBank", @"Larkin",nil];
        
        
    
    NSLog(@"Banks List from User Defaults%@", [defaults objectForKey:@"banksList"]);
    [defaults synchronize];
    
    
    [self.dataPickerView setDataSource: self];
    [self.dataPickerView setDelegate: self];
    [self.dataPickerView setFrame: CGRectMake(30, 50.0, 50, 200.0)];
    self.dataPickerView.showsSelectionIndicator = YES;
    [self.dataPickerView selectRow:2 inComponent:0 animated:YES];
    [self.view addSubview: self.dataPickerView];
    
    
}

- (NSInteger)pickerView:(UIPickerView *)distanceRadiusPicker numberOfRowsInComponent:(NSInteger)component {
    
    return self.banksList.count;
}



-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self.banksList objectAtIndex: row];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 1;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)selectDistanceAction:(id)sender{
    
    
}
- (IBAction)selectBanksAction:(id)sender{
    
    
}
- (IBAction)viewListBanksAction:(id)sender{
    
    
}
- (IBAction)viewMapBanksAction:(id)sender{
    
    
    
}




- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    if ([segue.identifier isEqualToString:@"toMapBanksView"]){
        
        
        mapBanksViewController *destViewController = (mapBanksViewController*)segue.destinationViewController;
        destViewController.bankArray = self.banksList;
        
        
    }else if ([segue.identifier isEqualToString:@"toSelectBanksSegue"]){
        
        selectBanksViewController *destViewController = (selectBanksViewController *)segue.destinationViewController;
        
        NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
        destViewController.tempBanksList = [defaults objectForKey:@"banksList"];
        
        destViewController.banksList = self.banksList;
    }

}







@end
