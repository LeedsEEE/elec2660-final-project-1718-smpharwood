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

#pragma mark Drop-down Menu methods

- (void)viewDidLoad {
    [super viewDidLoad];
    self.data = [[NSArray alloc] initWithObjects:       //Options in the drop-down menu
                 @"USD",            //United States Dollar
                 @"EUR",            //Euro
                 @"JPY",            //Japanese Yen
                 @"GBP",            //Great British Pound
                 @"AUD",            //Australian Dollar
                 @"CAD",            //Canadian Dollar
                 @"CHF",            //Swiss Franc
                 @"CNY",            //Renminbi (Chinese Yuan)
                 @"SEK",            //Swedish Krona
                 @"NZD",            //New Zealand Dollar
                 nil];
    self.currencySelectTV.delegate = self;
    self.currencySelectTV.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{   //make number of rows in table view equal to the number of currencies (10)
    return [self.data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *currencyTableIdentifier = @"currencyTableItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:currencyTableIdentifier];
       if (cell == nil){
           cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:currencyTableIdentifier];
       }
    
    cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.currencySelectTV cellForRowAtIndexPath:indexPath];
    [self.currencySelectButton setTitle:cell.textLabel.text forState:UIControlStateNormal];
    self.currencySelectTV.hidden = YES;
    self.index = indexPath.row;
}

//code to hide the table view 'currencySelectTV' once a currency has been selected
- (IBAction)currencySelectButtonAction:(id)sender {
    if (self.currencySelectTV.hidden == YES) {
        self.currencySelectTV.hidden = NO;
    }
    else
        self.currencySelectTV.hidden = YES;
}
/*The code used to create the illusion of a drop down menu using a table view and a button in conjunction was taken and
 adapted from code that I found online in a tutorial by the youtuber 'IOS Hook'.
 URL: https://www.youtube.com/watch?v=SVAj2aSi_RU */


//code to hide the numerical keyboard if the background space is pressed
- (IBAction)backgroundPressed:(id)sender {
    if ([self.typedAmountOutlet isFirstResponder]) {
        [self.typedAmountOutlet resignFirstResponder];
    }
}


#pragma mark Currency Conversion Methods

- (IBAction)convertButton:(UIButton *)sender {
    
    /*
    This section of code converts the amount that was typed into the textbox 'typedAmountOutlet' from 
    the currency selected in the drop-down menu into US dollars. It does this by multiplying the value 
    by a certain constant. The constant is determined by the index selected in the 'data' array.
    */
    if (self.index == 0) {      //USD currency selected
        _USDvalue = 1 * [self.typedAmountOutlet.text floatValue];
    }
    else if (self.index == 1) { //EUR currency selected
        _USDvalue = 1.17709 * [self.typedAmountOutlet.text floatValue];
    }
    else if (self.index == 2) { //JPY currency selected
        _USDvalue = 0.00844 * [self.typedAmountOutlet.text floatValue];
    }
    else if (self.index == 3) { //GBP currency selected
        _USDvalue = 1.31931 * [self.typedAmountOutlet.text floatValue];
    }
    else if (self.index == 4) { //AUD currency selected
        _USDvalue = 0.75859 * [self.typedAmountOutlet.text floatValue];
    }
    else if (self.index == 5) { //CAD currency selected
        _USDvalue = 0.78406 * [self.typedAmountOutlet.text floatValue];
    }
    else if (self.index == 6) { //CHF currency selected
        _USDvalue = 1.00598 * [self.typedAmountOutlet.text floatValue];
    }
    else if (self.index == 7) { //CNY currency selected
        _USDvalue = 0.15080 * [self.typedAmountOutlet.text floatValue];
    }
    else if (self.index == 8) { //SEK currency selected
        _USDvalue = 0.11905 * [self.typedAmountOutlet.text floatValue];
    }
    else if (self.index == 9) { //NZD currency selected
        _NZDvalue = 0.68502 * [self.typedAmountOutlet.text floatValue];
    }
    
    /*
    All of the output currencies are then determined by dividing the amount in US dollars by the same
    set of constants that were used to convert the input currency to US dollars by way of
    multiplication.
    */
    _USDvalue = _USDvalue /1.00000;
    _EURvalue = _USDvalue /1.17709;
    _JPYvalue = _USDvalue /0.00884;
    _GBPvalue = _USDvalue /1.31931;
    _AUDvalue = _USDvalue /0.75859;
    _CADvalue = _USDvalue /0.78406;
    _CHFvalue = _USDvalue /1.00598;
    _CNYvalue = _USDvalue /0.15080;
    _SEKvalue = _USDvalue /0.11905;
    _NZDvalue = _USDvalue /0.68502;
    
    //These values are then printed to the relevant labels as floating point numbers to two decimal places.
    self.valueUSDlabel.text = [NSString stringWithFormat:@"%.02f",_USDvalue];
    self.valueEURlabel.text = [NSString stringWithFormat:@"%.02f",_EURvalue];
    self.valueJPYlabel.text = [NSString stringWithFormat:@"%.02f",_JPYvalue];
    self.valueGBPlabel.text = [NSString stringWithFormat:@"%.02f",_GBPvalue];
    self.valueAUDlabel.text = [NSString stringWithFormat:@"%.02f",_AUDvalue];
    self.valueCADlabel.text = [NSString stringWithFormat:@"%.02f",_CADvalue];
    self.valueCHFlabel.text = [NSString stringWithFormat:@"%.02f",_CHFvalue];
    self.valueCNYlabel.text = [NSString stringWithFormat:@"%.02f",_CNYvalue];
    self.valueSEKlabel.text = [NSString stringWithFormat:@"%.02f",_SEKvalue];
    self.valueNZDlabel.text = [NSString stringWithFormat:@"%.02f",_NZDvalue];    
}


@end
