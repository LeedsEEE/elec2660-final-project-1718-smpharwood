//
//  CurrencyViewController.h
//  ConverterProject
//
//  Created by Sebastian Harwood [el16sh] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CurrencyViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>


@property (weak, nonatomic) IBOutlet UIButton *currencySelectButton;
@property (weak, nonatomic) IBOutlet UITableView *currencySelectTV;
@property(strong, nonatomic) NSArray *data;


- (IBAction)currencySelectButtonAction:(id)sender;




- (IBAction)typedAmount:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *currencyNameLabel1;
@property (weak, nonatomic) IBOutlet UILabel *currencyNameLabel2;
@property (weak, nonatomic) IBOutlet UILabel *currencyNameLabel3;
@property (weak, nonatomic) IBOutlet UILabel *currencyNameLabel4;
@property (weak, nonatomic) IBOutlet UILabel *currencyNameLabel5;
@property (weak, nonatomic) IBOutlet UILabel *currencyNameLabel6;
@property (weak, nonatomic) IBOutlet UILabel *currencyNameLabel7;
@property (weak, nonatomic) IBOutlet UILabel *currencyNameLabel8;

@property (weak, nonatomic) IBOutlet UILabel *currencyValueLabel1;
@property (weak, nonatomic) IBOutlet UILabel *currencyValueLabel2;
@property (weak, nonatomic) IBOutlet UILabel *currencyValueLabel3;
@property (weak, nonatomic) IBOutlet UILabel *currencyValueLabel4;
@property (weak, nonatomic) IBOutlet UILabel *currencyValueLabel5;
@property (weak, nonatomic) IBOutlet UILabel *currencyValueLabel6;
@property (weak, nonatomic) IBOutlet UILabel *currencyValueLabel7;
@property (weak, nonatomic) IBOutlet UILabel *currencyValueLabel8;

@end

