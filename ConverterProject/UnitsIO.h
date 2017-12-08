//
//  UnitsIO.h
//  ConverterProject
//
//  Created by Sebastian Harwood [el16sh] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UnitsIO : NSObject

//declare the names of the seven possible units

@property (nonatomic, strong) NSString *unittype;

@property (nonatomic, strong) NSArray *namesofunits;
@property (nonatomic, strong) NSArray *multipliersofunits;

//declare the multiplying factors to convert the input unit to the SI unit
//these same factors will be used in inverse to convert from the SI unit to the output unit
//this will hold true for all except for temperature conversion where a two stage conversion must be conducted

@end
