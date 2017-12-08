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
        distance.namesofunits =         [NSMutableArray arrayWithObjects: @"centimetre", @"metre",   @"kilometre",   @"inch",    @"foot",    @"yard",    @"mile", nil];
        distance.multipliersofunits =  @[                                 @0.01,         @1,         @1000,          @0.0254,    @0.3048,    @0.9144,    @1609.34];
        
        self.typesofunits = [NSMutableArray array];
        UnitsIO *mass = [[UnitsIO alloc] init];
        mass.unittype = @"Mass";
        mass.namesofunits =             [NSMutableArray arrayWithObjects: @"gram",   @"kilogram",    @"tonne",   @"ounce",   @"pound",   @"stone",   @"US ton",  nil];
        mass.multipliersofunits =      @[                                 @0.001,    @1,             @1000,      @0.0283495, @0.453592,  @6.35029,   @907.185];
        
        self.typesofunits = [NSMutableArray array];
        UnitsIO *speed = [[UnitsIO alloc] init];
        speed.unittype = @"Speed";
        mass.namesofunits =             [NSMutableArray arrayWithObjects: @"inch/second",    @"metre/second",    @"kilometre/hour",  @"mile/hour",   @"foot/second", @"knot",    @"mach number", nil];
        mass.multipliersofunits =      @[                                 @39.370079,        @1,                 @0.27778,           @0.44704,       @0.3048,        @0.514444,  @331.2];
       
        self.typesofunits = [NSMutableArray array];
        UnitsIO *time = [[UnitsIO alloc] init];
        time.unittype = @"Time";
        time.namesofunits =             [NSMutableArray arrayWithObjects: @"minute",    @"second",  @"hour",    @"day", @"week",    @"month",   @"year", nil];
        time.multipliersofunits =      @[                                 @60,          @1,         @3600,      @86400, @604800,    @2629746,   @31556952];
        
        self.typesofunits = [NSMutableArray array];
        UnitsIO *volume = [[UnitsIO alloc] init];
        volume.unittype = @"Volume";
        volume.namesofunits =           [NSMutableArray arrayWithObjects: @"cubic centimetre",  @"cubic metre", @"cubic foot",  @"litre",   @"gallon",      @"pint",        @"mililitre", nil];
        volume.multipliersofunits =    @[                                 @0.000001,        @1,                 @0.0283168,     @0.001,     @0.00454609,    @0.000568261,   @0.0000001];
        
        [self.typesofunits addObject:distance];      //index 0
        [self.typesofunits addObject:mass];         //index 1
        [self.typesofunits addObject:speed];        //inex 2
        [self.typesofunits addObject:time];         //index 3
        [self.typesofunits addObject:volume];       // index 4
    }
    return self;
}

@end
