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
    // Do any additional setup after loading the view.
    self.unitsTitleLabel.text = self.units.unittype;
    self.UnitsPicker.delegate = self;
    self.UnitsPicker.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *)pickerView:(UIPickerView *)pickerView
            titleForRow:(NSInteger)row
           forComponent:(NSInteger)component{

        return _units.namesofunits[row];
}

-(void)pickerView:(UIPickerView *)pickerView
    didSelectRow:(NSInteger)row
    inComponent:(NSInteger)component{
    
    NSIndexPath *indexPath = self.UnitsPicker inde
    
    self.outputValueLabel.text = self.units.namesofunits objectAtIndex:;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    NSInteger numberofRows;
    numberofRows = self.units.namesofunits.count;
    return numberofRows;
}


@end
