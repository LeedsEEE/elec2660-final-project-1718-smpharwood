//
//  FirstViewController.m
//  ConverterProject
//
//  Created by Sebastian Harwood [el16sh] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "CurrencyViewController.h"

@interface CurrencyViewController ()

@end

@implementation CurrencyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.data = [[NSArray alloc] initWithObjects:@"USD",@"GBP",@"EUR",@"AUD",@"CNY",@"JPY",@"AED",@"CAD",@"RUB", nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)typedAmount:(id)sender {
}
@end
