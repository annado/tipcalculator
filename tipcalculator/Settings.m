//
//  Settings.m
//  tipcalculator
//
//  Created by Anna Do on 3/1/14.
//  Copyright (c) 2014 Anna Do. All rights reserved.
//

#import "Settings.h"

@implementation Settings

+ (void) setTipControl:(int)selected {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:selected forKey:@"settings_tip_control"];
    [defaults synchronize];
    NSLog(@"setTipControl: %i", selected);
}

+ (int) getTipControl {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int intValue = [defaults integerForKey:@"settings_tip_control"];
    NSLog(@"getTipControl: %i", intValue);
    return intValue;
}

@end
