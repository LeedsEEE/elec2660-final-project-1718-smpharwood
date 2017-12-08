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
    //Do any additional setup after loading the view.
    self.unitsTitleLabel.text = self.units.unittype;
    self.UnitsPicker.delegate = self;
    self.UnitsPicker.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    //Dispose of any resources that can be recreated.
}

-(NSString *)pickerView:(UIPickerView *)pickerView
            titleForRow:(NSInteger)row
           forComponent:(NSInteger)component{
    
        return _units.namesofunits[row];
}

-(void)pickerView:(UIPickerView *)pickerView
     didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component{
    if (component == 0) {
        self.inputrow = row;
    }
    else if (component == 1) {
        self.outputrow = row;
    }
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    NSInteger numberofRows;
    numberofRows = self.units.namesofunits.count;
    return numberofRows;
}

- (IBAction)convertButton:(UIButton *)sender {
    
    float siValue;
    siValue = [self.units.multipliersofunits[self.inputrow]floatValue] * [self.typedAmountOutlet.text floatValue];
    float outputValue;
    outputValue =  siValue / [self.units.multipliersofunits[self.outputrow]floatValue];
    self.outputValueLabel.text = [NSString stringWithFormat:@"%.03f",outputValue];
    
    
}
@end
