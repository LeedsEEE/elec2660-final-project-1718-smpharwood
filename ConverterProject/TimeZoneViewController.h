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
@property (weak, nonatomic) IBOutlet UITableView *timeZoneSelectTV;             //Table View that gives the illusion of a drop-down menu
@property(strong, nonatomic) NSArray *data;
@property NSInteger index;                                                      //index position tells the code which city has been selected from the drop-down
@property (strong, nonatomic) NSString *TimeSelected;
- (IBAction)timeZoneSelectButtonAction:(id)sender;



@end

