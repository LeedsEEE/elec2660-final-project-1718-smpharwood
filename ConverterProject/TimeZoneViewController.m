//
//  SecondViewController.m
//  ConverterProject
//
//  Created by Sebastian Harwood [el16sh] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "TimeZoneViewController.h"

@interface TimeZoneViewController ()

@end

@implementation TimeZoneViewController

#pragma mark - Drop down menu methods

- (void)viewDidLoad {
    [super viewDidLoad];
    self.data = [[NSArray alloc] initWithObjects:
                 @"Los Angeles",                    //GMT-8
                 @"Chicago",                        //GMT-6
                 @"New York",                       //GMT-5
                 @"London",                         //GMT
                 @"Paris",                          //GMT+1
                 @"Berlin",                         //GMT+2
                 @"Moscow",                         //GMT+3
                 @"New Delhi",                      //GMT+5.5
                 @"Beijing",                        //GMT+8
                 @"Tokyo",                          //GMT+9
                 nil];
    self.timeZoneSelectTV.delegate = self;
    self.timeZoneSelectTV.dataSource = self;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.data count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    static NSString *timeZoneTableIdentifier = @"timeZoneTableItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:timeZoneTableIdentifier];
    if (cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:timeZoneTableIdentifier];
    }
    cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    return cell;

    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [self.timeZoneSelectTV cellForRowAtIndexPath:indexPath];
    [self.timeZoneSelectButton setTitle:cell.textLabel.text forState:UIControlStateNormal];
    self.timeZoneSelectTV.hidden = YES;
    self.index = indexPath.row;
}

- (IBAction)timeZoneSelectButtonAction:(id)sender{
    
    if (self.timeZoneSelectTV.hidden == YES) {
        self.timeZoneSelectTV.hidden = NO;
    }
    else
        self.timeZoneSelectTV.hidden = YES;
}

/*
The code used to create the illusion of a drop down menu using a table view and a button in conjunction was taken and adapted from code that I found online in a tutorial by the 
    youtuber 'IOS Hook'.
    URL: https://www.youtube.com/watch?v=SVAj2aSi_RU
*/

- (IBAction)buttonPressed:(UIButton *)sender {
    
    /*
    self.timeLAlabel.text  = [NSString stringWithFormat:@"%@",00];
    self.timeCHIlabel.text = [NSString stringWithFormat:@"%@",00];
    self.timeNYClabel.text = [NSString stringWithFormat:@"%@",00];
    self.timeLONlabel.text = [NSString stringWithFormat:@"%@",00];
    self.timePARlabel.text = [NSString stringWithFormat:@"%@",00];
    self.timeBERlabel.text = [NSString stringWithFormat:@"%@",00];
    self.timeMOSlabel.text = [NSString stringWithFormat:@"%@",00];
    self.timeNDlabel.text  = [NSString stringWithFormat:@"%@",00];
    self.timeBEIlabel.text = [NSString stringWithFormat:@"%@",00];
    self.timeTOKlabel.text = [NSString stringWithFormat:@"%@",00];
    */
}

- (IBAction)timePicker:(UIDatePicker *)sender {
    
    
}
@end
