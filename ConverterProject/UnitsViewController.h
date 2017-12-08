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

@property (weak, nonatomic) IBOutlet UIPickerView *UnitsPicker;

@property (weak, nonatomic) IBOutlet UILabel *outputValueLabel;
@property (weak, nonatomic) IBOutlet UITextField *enterInputValue;
@property (weak, nonatomic) IBOutlet UILabel *unitsTitleLabel;
@property (nonatomic) float siValue;
@property (nonatomic) float outputValue;
@property (strong, nonatomic) UnitsIO *units;

- (IBAction)convertButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *typedAmountOutlet;
@property (nonatomic) NSInteger inputrow;
@property (nonatomic) NSInteger outputrow;


@end
