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

@property (strong, nonatomic) UnitsIO *units;


@end
