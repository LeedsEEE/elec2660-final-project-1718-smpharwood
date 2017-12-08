//
//  UnitsDataModel.h
//  ConverterProject
//
//  Created by Sebastian Harwood [el16sh] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UnitsIO.h"

@interface UnitsDataModel : NSObject

@property (strong,nonatomic) NSMutableArray *typesofunits;
/* Each object in this array contains the title string and the two arrays that were contained in
the header of UnitsIO. This is why UnitsIO is declared in the header of this header. */


@end
