//
//  BookViewController.m
//  Manager
//
//  Created by David Swaintek on 7/20/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

#import "BookViewController.h"

#import "NSManagedObject+Context.h"

@interface BookViewController ()

@property (strong, nonatomic) UITextField *firstNameField;
@property (strong, nonatomic) UITextField *lastNameField;
@property (strong, nonatomic) UITextField *emailField;

@end

@implementation BookViewController

- (void)loadView {
    [super loadView];
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupBookViewController];
    [self setupMessageLabel];
    [self setupFirstNameField];
    [self setupLastNameField];
    [self setupEmailField];
    
}

- (void)setupBookViewController{
    [self.navigationItem setTitle:self.room.hotel.name];
    [self.navigationItem setRightBarButtonItem:[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveButtonSelected:)]];
}

- (void)setupFirstNameField{
    self.firstNameField = [[UITextField alloc]init];
    
    self.firstNameField.placeholder = @"First name";
    self.firstNameField.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:self.firstNameField];
    
    NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:self.firstNameField
                                                               attribute:NSLayoutAttributeLeading
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.view
                                                               attribute:NSLayoutAttributeLeading
                                                              multiplier:1.0
                                                                constant:20.0];
    
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:self.firstNameField
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:self.view
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1.0
                                                            constant:84.0];
    
    NSLayoutConstraint *trailing = [NSLayoutConstraint constraintWithItem:self.firstNameField
                                                               attribute:NSLayoutAttributeTrailing
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeTrailing
                                                               multiplier:1.0
                                                                 constant:-20.0];
    
    leading.active = TRUE;
    top.active = TRUE;
    trailing.active = TRUE;
    
    [self.firstNameField becomeFirstResponder];
    
}

- (void)setupLastNameField{
    self.lastNameField = [[UITextField alloc]init];
    
    self.lastNameField.placeholder = @"Last name (required)";
    self.lastNameField.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:self.lastNameField];
    
    NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:self.lastNameField
                                                               attribute:NSLayoutAttributeLeading
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.view
                                                               attribute:NSLayoutAttributeLeading
                                                              multiplier:1.0
                                                                constant:20.0];
    
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:self.lastNameField
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:self.firstNameField
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1.0
                                                            constant:40.0];
    
    NSLayoutConstraint *trailing = [NSLayoutConstraint constraintWithItem:self.lastNameField
                                                                attribute:NSLayoutAttributeTrailing
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeTrailing
                                                               multiplier:1.0
                                                                 constant:-20.0];
    
    leading.active = TRUE;
    top.active = TRUE;
    trailing.active = TRUE;
    
}

- (void)setupEmailField{
    self.emailField = [[UITextField alloc]init];
    
    self.emailField.placeholder = @"Email";
    self.emailField.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:self.emailField];
    
    NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:self.emailField
                                                               attribute:NSLayoutAttributeLeading
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.view
                                                               attribute:NSLayoutAttributeLeading
                                                              multiplier:1.0
                                                                constant:20.0];
    
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:self.emailField
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:self.lastNameField
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1.0
                                                            constant:20.0];
    
    NSLayoutConstraint *trailing = [NSLayoutConstraint constraintWithItem:self.emailField
                                                                attribute:NSLayoutAttributeTrailing
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeTrailing
                                                               multiplier:1.0
                                                                 constant:-20.0];
    
    leading.active = TRUE;
    top.active = TRUE;
    trailing.active = TRUE;
    
}

- (void)setupMessageLabel {
    
    UILabel *messageLabel = [[UILabel alloc]init];
    
    messageLabel.textAlignment = NSTextAlignmentCenter;
    messageLabel.numberOfLines = 0;
    
    messageLabel.translatesAutoresizingMaskIntoConstraints = NO;
    
    messageLabel.text = [NSString stringWithFormat:@"Reservation at %@, Room %i, From Today - To:%@", self.room.hotel.name, self.room.number.intValue, [NSDateFormatter localizedStringFromDate:self.endDate dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterNoStyle]];
    
    [self.view addSubview:messageLabel];
    
    NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:messageLabel
                                                               attribute:NSLayoutAttributeLeading
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.view
                                                               attribute:NSLayoutAttributeLeading
                                                              multiplier:1.0
                                                                constant:20.0];
    
    NSLayoutConstraint *trailing = [NSLayoutConstraint constraintWithItem:messageLabel
                                                               attribute:NSLayoutAttributeTrailing
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.view
                                                               attribute:NSLayoutAttributeTrailing
                                                              multiplier:1.0
                                                                constant:-20.0];
    
    NSLayoutConstraint *centerY = [NSLayoutConstraint constraintWithItem:messageLabel
                                                               attribute:NSLayoutAttributeCenterY
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.view
                                                               attribute:NSLayoutAttributeCenterY
                                                              multiplier:1.0
                                                                constant:0.0];
    
    leading.active = YES;
    trailing.active = YES;
    centerY.active = YES;
    
}

-(void)saveButtonSelected:(UIBarButtonItem *)sender{
    
    Reservation *reservation = [Reservation reservationWithStartDate:[NSDate date]
                                                             endDate:self.endDate
                                                                room:self.room];
    
    self.room.reservation = reservation;
    
    reservation.guest = [Guest guestWithLastName:self.lastNameField.text
                                       firstName:self.firstNameField.text
                                           email:self.emailField.text];
    
    NSError *error;
    
    [[NSManagedObject managerContext]save:&error];
    if (error) {
        NSLog(@"Save error: %@", error);
    }
    else {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
    
}


@end
























