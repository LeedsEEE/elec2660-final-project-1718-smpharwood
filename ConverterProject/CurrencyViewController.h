//
//  CurrencyViewController.h
//  ConverterProject
//
//  Created by Sebastian Harwood [el16sh] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CurrencyViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UIButton *currencySelectButton;
@property (weak, nonatomic) IBOutlet UITableView *currencySelectTV;
@property(strong, nonatomic) NSArray *data;
@property NSInteger index;
@property (strong, nonatomic) NSString *currencySelected;


@property (nonatomic) float USDvalue;
@property (nonatomic) float EURvalue;
@property (nonatomic) float JPYvalue;
@property (nonatomic) float GBPvalue;
@property (nonatomic) float AUDvalue;
@property (nonatomic) float CADvalue;
@property (nonatomic) float CHFvalue;
@property (nonatomic) float CNYvalue;
@property (nonatomic) float SEKvalue;



- (IBAction)currencySelectButtonAction:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *typedAmountOutlet;

- (IBAction)typedAmount:(id)sender;
- (IBAction)backgroundPressed:(id)sender;

- (IBAction)convertButton:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *valueUSDlabel;
@property (weak, nonatomic) IBOutlet UILabel *valueEURlabel;
@property (weak, nonatomic) IBOutlet UILabel *valueJPYlabel;
@property (weak, nonatomic) IBOutlet UILabel *valueGBPlabel;
@property (weak, nonatomic) IBOutlet UILabel *valueAUDlabel;
@property (weak, nonatomic) IBOutlet UILabel *valueCADlabel;
@property (weak, nonatomic) IBOutlet UILabel *valueCHFlabel;
@property (weak, nonatomic) IBOutlet UILabel *valueCNYlabel;
@property (weak, nonatomic) IBOutlet UILabel *valueSEKlabel;

@end

