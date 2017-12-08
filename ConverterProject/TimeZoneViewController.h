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


- (IBAction)buttonPressed:(UIButton *)sender;

- (IBAction)timePicker:(UIDatePicker *)sender;


@property (weak, nonatomic) IBOutlet UILabel *timeLAlabel;             //output label to display time in Los Angeles
@property (weak, nonatomic) IBOutlet UILabel *timeCHIlabel;            //output label to display time in Chicago
@property (weak, nonatomic) IBOutlet UILabel *timeNYClabel;            //output label to display time in New York
@property (weak, nonatomic) IBOutlet UILabel *timeLONlabel;            //output label to display time in London
@property (weak, nonatomic) IBOutlet UILabel *timePARlabel;            //output label to display time in Paris
@property (weak, nonatomic) IBOutlet UILabel *timeBERlabel;            //output label to display time in Berlin
@property (weak, nonatomic) IBOutlet UILabel *timeMOSlabel;            //output label to display time in Moscow
@property (weak, nonatomic) IBOutlet UILabel *timeNDlabel;             //output label to display time in New Delhi
@property (weak, nonatomic) IBOutlet UILabel *timeBEIlabel;            //output label to display time in Beijing
@property (weak, nonatomic) IBOutlet UILabel *timeTOKlabel;            //output label to display time in Tokyo




@end

