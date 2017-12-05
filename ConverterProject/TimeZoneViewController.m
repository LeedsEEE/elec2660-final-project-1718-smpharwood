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

- (void)viewDidLoad {
    [super viewDidLoad];
    self.data = [[NSArray alloc] initWithObjects:@"Los Angeles",@"New York",@"London",@"Paris",@"Berlin",@"Moscow",@"New Delhi",@"Beijing",@"Tokyo", nil];
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

@end
