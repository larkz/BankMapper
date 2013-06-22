//
//  selectBanksViewController.m
//  BankMapper
//
//  Created by Larkin on 6/19/13.
//  Copyright (c) 2013 Larkin. All rights reserved.
//

#import "selectBanksViewController.h"

@interface selectBanksViewController ()

@end

@implementation selectBanksViewController
@synthesize banksList, tempBanksList;


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
    NSLog(@"View Did load %@", self.banksList);
    
    self.tempBanksList = self.banksList;
    
    
    
	// Do any additional setup after loading the view.
}

- (void)viewWillDisappear:(BOOL)animated{
    NSLog(@"View WILL DISAPPEAR!");

    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];

    [defaults setObject:self.tempBanksList forKey:@"banksList"];
    [defaults synchronize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"# rows cel: %@", self.banksList);

    return [self.banksList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    
    static NSString *TableCellIdentifier = @"TableCell";
    
    UITableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:TableCellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableCellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        cell.textLabel.text = [self.banksList objectAtIndex:indexPath.row];

        NSLog(@"allocated cell");
    }
    
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    cell.textLabel.text = [self.banksList objectAtIndex:indexPath.row];
    return cell;
    
    
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    if(cell.accessoryType == UITableViewCellAccessoryCheckmark){
        
        [self.tempBanksList removeObject:self.banksList [indexPath.row ]];
        cell.accessoryType =UITableViewCellAccessoryNone;
        
    
    } else {
            
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
        
            [self.tempBanksList insertObject:[self.banksList objectAtIndex:indexPath.row] atIndex:indexPath.row];
        }
    
}




@end
