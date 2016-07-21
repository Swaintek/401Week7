//
//  DateViewController.m
//  Manager
//
//  Created by David Swaintek on 7/20/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import "DateViewController.h"
#import "AvailabilityViewController.h"

@interface DateViewController ()

@property (strong, nonatomic)UIDatePicker *endPicker;

@end

@implementation DateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupDateViewController];
    [self setupDatePicker];
}

-(void)setupDateViewController{
    
    [self.navigationItem setTitle:@"Select End Date"];
    
    [self.navigationItem setRightBarButtonItem:[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneButtonSelected:)]];
    
}

- (void)setupDatePicker {
    
    self.endPicker = [[UIDatePicker alloc]init];
    self.endPicker.datePickerMode = UIDatePickerModeDate;
    
    self.endPicker.frame = CGRectMake(0.0, 84.0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame));
    
    [self.view addSubview:self.endPicker];
    
}

- (void)doneButtonSelected:(UIBarButtonItem *)sender {
    
    NSDate *endDate = [self.endPicker date];
    
    if ([[NSDate date] timeIntervalSinceReferenceDate] > [endDate timeIntervalSinceReferenceDate]) {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Uh oh!"
                                                                       message:@"Please make sure end date is in the future"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                           style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * _Nonnull action) {
                                                             self.endPicker.date = [NSDate date];
                                                         }];
        
        [alert addAction:okAction];
        [self presentViewController:alert animated:YES completion:nil];
        
        return;
        
    }
    
    AvailabilityViewController *availabilityViewController = [[AvailabilityViewController alloc]init];
    
    availabilityViewController.endDate = endDate;
    
    [self.navigationController pushViewController:availabilityViewController animated:YES];
    
}

-(void) loadView{
    
    [super loadView];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
}

@end

















