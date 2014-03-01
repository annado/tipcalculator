//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Anna Do on 3/1/14.
//  Copyright (c) 2014 Anna Do. All rights reserved.
//

#import "SettingsViewController.h"
#import "Settings.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

- (IBAction)onTap:(id)sender;
@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Settings";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateDefaultTip];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self setDefaultTip];
}

- (void)updateDefaultTip {
    int defaultSelected = [Settings getTipControl];
    self.tipControl.selectedSegmentIndex = defaultSelected;
}

- (void)setDefaultTip {
    [Settings setTipControl:self.tipControl.selectedSegmentIndex];
}

@end
