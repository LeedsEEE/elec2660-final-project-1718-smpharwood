//
//  UnitsDataModel.m
//  ConverterProject
//
//  Created by Sebastian Harwood [el16sh] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "UnitsDataModel.h"

@implementation UnitsDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.typesofunits = [NSMutableArray array];
        UnitsIO *distance = [[UnitsIO alloc] init];
        distance.unittype = @"Distance";
        distance.unit1 = @"centimetre";
        distance.unit2 = @"metre";
        distance.unit3 = @"kilometre";
        distance.unit4 = @"inch";
        distance.unit5 = @"foot";
        distance.unit6 = @"yard";
        distance.unit7 = @"mile";
        distance.unit1toSI = 0.01;
        distance.unit2toSI = 1;
        distance.unit3toSI = 1000;
        distance.unit4toSI = 0.0254;
        distance.unit5toSI = 0.3048;
        distance.unit6toSI = 0.9144;
        distance.unit7toSI = 1609.34;
        
        self.typesofunits = [NSMutableArray array];
        UnitsIO *mass = [[UnitsIO alloc] init];
        mass.unittype = @"Mass";
        mass.unit1 = @"gram";
        mass.unit2 = @"kilogram";
        mass.unit3 = @"tonne";
        mass.unit4 = @"ounce";
        mass.unit5 = @"pound";
        mass.unit6 = @"stone";
        mass.unit7 = @"US ton";
        mass.unit1toSI = 0.001;
        mass.unit2toSI = 1;
        mass.unit3toSI = 1000;
        mass.unit4toSI = 0.0283495;
        mass.unit5toSI = 0.453592;
        mass.unit6toSI = 6.35029;
        mass.unit7toSI = 907.185;
        
        self.typesofunits = [NSMutableArray array];
        UnitsIO *speed = [[UnitsIO alloc] init];
        speed.unittype = @"Speed";
        speed.unit1 = @"inch/second";
        speed.unit2 = @"metre/second";
        speed.unit3 = @"kilometre/hour";
        speed.unit4 = @"mile/hour";
        speed.unit5 = @"foot/second";
        speed.unit6 = @"knot";
        speed.unit7 = @"mach number";
        speed.unit1toSI = 39.370079;
        speed.unit2toSI = 1;
        speed.unit3toSI = 0.27778;
        speed.unit4toSI = 0.44704;
        speed.unit5toSI = 0.3048;
        speed.unit6toSI = 0.514444;
        speed.unit7toSI = 331.2;
        
        self.typesofunits = [NSMutableArray array];
        UnitsIO *time = [[UnitsIO alloc] init];
        time.unittype = @"Time";
        time.unit1 = @"second";
        time.unit2 = @"minute";
        time.unit3 = @"hour";
        time.unit4 = @"day";
        time.unit5 = @"week";
        time.unit6 = @"month";
        time.unit7 = @"year";
        time.unit1toSI = 1;
        time.unit2toSI = 60;
        time.unit3toSI = 3600;
        time.unit4toSI = 86400;
        time.unit5toSI = 604800;
        time.unit6toSI = 2629746;
        time.unit7toSI = 31556952;
        
        self.typesofunits = [NSMutableArray array];
        UnitsIO *volume = [[UnitsIO alloc] init];
        volume.unittype = @"Volume";
        volume.unit1 = @"cubic centimetre";
        volume.unit2 = @"cubic metre";
        volume.unit3 = @"cubic foot";
        volume.unit4 = @"litre";
        volume.unit5 = @"gallon";
        volume.unit6 = @"pint";
        volume.unit7 = @"mililitre";
        volume.unit1toSI = 0.000001;
        volume.unit2toSI = 1;
        volume.unit3toSI = 0.0283168;
        volume.unit4toSI = 0.001;
        volume.unit5toSI = 0.00454609;
        volume.unit6toSI = 0.000568261;
        volume.unit7toSI = 0.0000001;
        
        [self.typesofunits addObject:distance];      //index 0
        [self.typesofunits addObject:mass];         //index 1
        [self.typesofunits addObject:speed];        //inex 2
        [self.typesofunits addObject:time];         //index 3
        [self.typesofunits addObject:volume];       // index 4
    }
    return self;
}

@end
