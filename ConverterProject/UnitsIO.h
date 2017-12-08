//
//  UnitsIO.h
//  ConverterProject
//
//  Created by Sebastian Harwood [el16sh] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UnitsIO : NSObject

//The names of the types of units. These are the names of the cells in the table view
@property (nonatomic, strong) NSString *unittype;
//The names of the units are stored in an array
@property (nonatomic, strong) NSArray *namesofunits;
/* Every unit has a corresponding multiplying factor at the same index position of the array that converts it
to an SI unit by multiplication of from SI to that unit by division */
@property (nonatomic, strong) NSArray *multipliersofunits;

@end
