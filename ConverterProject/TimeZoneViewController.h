//
//  SecondViewController.h
//  ConverterProject
//
//  Created by Sebastian Harwood [el16sh] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeZoneViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *timeZoneSelectButton;
@property (weak, nonatomic) IBOutlet UITableView *timeZoneSelectTV;
@property(strong, nonatomic) NSArray *data;
@property NSInteger index;
@property (strong, nonatomic) NSString *TimeSelected;
- (IBAction)timeZoneSelectButtonAction:(id)sender;



@end

