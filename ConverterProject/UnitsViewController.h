//
//  UnitsViewController.h
//  ConverterProject
//
//  Created by Sebastian Harwood [el16sh] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UnitsIO.h"

@interface UnitsViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

//The data is passed from the UnitsDataModel via the UnitsTableView to the UnitsViewController
@property (strong, nonatomic) UnitsIO *units;

//This is the label at the top of the screen that indicates which type of unit has been selected
@property (weak, nonatomic) IBOutlet UILabel *unitsTitleLabel;

//This is the UI picker that selects the input unit and the output unit which are outputted as NSIntegers
@property (weak, nonatomic) IBOutlet UIPickerView *UnitsPicker;
@property (nonatomic) NSInteger inputrow;
@property (nonatomic) NSInteger outputrow;

//The value inputted in the UITextField is converted to the SI value then converted from this to the output value
@property (weak, nonatomic) IBOutlet UITextField *typedAmountOutlet;
@property (nonatomic) float siValue;
@property (nonatomic) float outputValue;

//Press the convert button to intitiate the conversion
- (IBAction)convertButton:(UIButton *)sender;

//The output value is displayed in the output value label
@property (weak, nonatomic) IBOutlet UILabel *outputValueLabel;

//When the background is pressed, the keyboard that controls the UITextField will disappear
- (IBAction)backgroundPressed:(id)sender;


@end
