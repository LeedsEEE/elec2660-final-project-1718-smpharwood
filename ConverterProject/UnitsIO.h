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
@property (nonatomic, strong) NSString *unit1;
@property (nonatomic, strong) NSString *unit2;
@property (nonatomic, strong) NSString *unit3;
@property (nonatomic, strong) NSString *unit4;
@property (nonatomic, strong) NSString *unit5;
@property (nonatomic, strong) NSString *unit6;
@property (nonatomic, strong) NSString *unit7;

//declare the multiplying factors to convert the input unit to the SI unit
//these same factors will be used in inverse to convert from the SI unit to the output unit
//this will hold true for all except for temperature conversion where a two stage conversion must be conducted
@property float unit1toSI;
@property float unit2toSI;
@property float unit3toSI;
@property float unit4toSI;
@property float unit5toSI;
@property float unit6toSI;
@property float unit7toSI;


@end
