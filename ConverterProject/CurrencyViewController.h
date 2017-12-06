//
//  CurrencyViewController.h
//  ConverterProject
//
//  Created by Sebastian Harwood [el16sh] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CurrencyViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITableView *currencySelectTV;     //Table view gives the illusion of a drop-down menu
@property(strong, nonatomic) NSArray *data;                             //Array of currency codes
@property NSInteger index;                                              //index position in the table view indicates which of the ten currencies has been selected
- (IBAction)currencySelectButtonAction:(id)sender;                      //button that together with the tableView gives the illusion of a drop down menu
@property (weak, nonatomic) IBOutlet UIButton *currencySelectButton;

@property (weak, nonatomic) IBOutlet UITextField *typedAmountOutlet;    //typed amount in the textbox

- (IBAction)backgroundPressed:(id)sender;                               //Action that hides the decimal numerical keyboard which allows the bottom of the screen to be seen again

- (IBAction)convertButton:(UIButton *)sender;                           //Action button that intitiates the conversion


//outputted values in the given ten currencies
@property (nonatomic) float USDvalue;                                   //calculated value in United States Dollars
@property (nonatomic) float EURvalue;                                   //calculated value in Euros
@property (nonatomic) float JPYvalue;                                   //calculated value in Japanese Yen
@property (nonatomic) float GBPvalue;                                   //calculated value in Great British Pounds
@property (nonatomic) float AUDvalue;                                   //calculated value in Austrailan Dollars
@property (nonatomic) float CADvalue;                                   //calculated value in Canadian Dollars
@property (nonatomic) float CHFvalue;                                   //calculated value in Swiss Francs
@property (nonatomic) float CNYvalue;                                   //calculated value in Chinese Yuan
@property (nonatomic) float SEKvalue;                                   //calculated value in Swedish Krona
@property (nonatomic) float NZDvalue;                                   //calculated value in New Zealand Dollars

@property (weak, nonatomic) IBOutlet UILabel *valueUSDlabel;            //output label to display float USDvalue
@property (weak, nonatomic) IBOutlet UILabel *valueEURlabel;            //output label to display float EURvalue
@property (weak, nonatomic) IBOutlet UILabel *valueJPYlabel;            //output label to display float JPYvalue
@property (weak, nonatomic) IBOutlet UILabel *valueGBPlabel;            //output label to display float GBPvalue
@property (weak, nonatomic) IBOutlet UILabel *valueAUDlabel;            //output label to display float AUDvalue
@property (weak, nonatomic) IBOutlet UILabel *valueCADlabel;            //output label to display float CADvalue
@property (weak, nonatomic) IBOutlet UILabel *valueCHFlabel;            //output label to display float CHFvalue
@property (weak, nonatomic) IBOutlet UILabel *valueCNYlabel;            //output label to display float CNYvalue
@property (weak, nonatomic) IBOutlet UILabel *valueSEKlabel;            //output label to display float SEKvalue
@property (weak, nonatomic) IBOutlet UILabel *valueNZDlabel;            //output label to display float NZDvalue


@end

