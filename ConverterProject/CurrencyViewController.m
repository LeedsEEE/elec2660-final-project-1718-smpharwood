//
//  FirstViewController.m
//  ConverterProject
//
//  Created by Sebastian Harwood [el16sh] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "CurrencyViewController.h"

@interface CurrencyViewController ()

@end

@implementation CurrencyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.data = [[NSArray alloc] initWithObjects:@"USD",@"GBP",@"EUR",@"AUD",@"CNY",@"JPY",@"AED",@"CAD",@"RUB", nil];
    
    self.currencySelectTV.delegate = self;
    self.currencySelectTV.dataSource = self;
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *currencyTableIdentifier = @"currencyTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:currencyTableIdentifier];
    
   
    if (cell == nil){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:currencyTableIdentifier];
    }
    

    cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    
    //cell.textLabel.font = [UIFont systemFontOfSize:11.0];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [self.currencySelectTV cellForRowAtIndexPath:indexPath];
    [self.currencySelectButton setTitle:cell.textLabel.text forState:UIControlStateNormal];
    
    self.currencySelectTV.hidden = YES;
    


}

- (IBAction)currencySelectButtonAction:(id)sender {
    
    if (self.currencySelectTV.hidden == YES) {
        self.currencySelectTV.hidden = NO;
    }
    else
        self.currencySelectTV.hidden = YES;
}

- (IBAction)typedAmount:(id)sender {


}

@end
