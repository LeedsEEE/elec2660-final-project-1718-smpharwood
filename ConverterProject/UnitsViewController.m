//
//  UnitsViewController.m
//  ConverterProject
//
//  Created by Sebastian Harwood [el16sh] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "UnitsViewController.h"

@interface UnitsViewController ()

@end

@implementation UnitsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //display the title of the cell selected at the top of the view
    self.unitsTitleLabel.text = self.units.unittype;
    self.UnitsPicker.delegate = self;
    self.UnitsPicker.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    //Dispose of any resources that can be recreated.
}

//This section of code makes the text field numberpad disappear if the background of the view is pressed
- (IBAction)backgroundPressed:(id)sender {
    if ([self.typedAmountOutlet isFirstResponder]) {
        [self.typedAmountOutlet resignFirstResponder];
    }
}

#pragma mark - set up the picker view

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    //2 columns in the picker view
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    //The number of rows is equal to the number of available units to choose from
    NSInteger numberofRows;
    numberofRows = self.units.namesofunits.count;
    return numberofRows;
}

-(NSString *)pickerView:(UIPickerView *)pickerView
            titleForRow:(NSInteger)row
           forComponent:(NSInteger)component{
    //The names of the rows in both columns of the picker view are taken from the names of units array declared in UnitsIO
    return _units.namesofunits[row];
}

-(void)pickerView:(UIPickerView *)pickerView
     didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component{
    if (component == 0) {
        //let the selected row in the left hand column be the input row
        self.inputrow = row;
    }
    else if (component == 1) {
        //let the selected row in the right hand column be the output row
        self.outputrow = row;
    }
}

#pragma mark - Calculate the conversion once the 'convert' button has been pressed

- (IBAction)convertButton:(UIButton *)sender {
    
    /*First the value entered in the text field is converted to the SI value by multiplying it by the multiplying factor
    that corresponds to the unit selected using the picker and stored in 'input row'*/
    float siValue;
    siValue = [self.typedAmountOutlet.text floatValue] * [self.units.multipliersofunits[self.inputrow]floatValue];
    /*Next this calculated SI value is converted in to the output unit by dividing it by the multiplying factor that
    corresponds to the unit selected using the picker and stored in 'output row'*/
    float outputValue;
    outputValue =  siValue / [self.units.multipliersofunits[self.outputrow]floatValue];
    //Finally the calculated outputValue is displayed to 3 decimal places in the output value label
    self.outputValueLabel.text = [NSString stringWithFormat:@"%.03f",outputValue];
    
    
}

@end
