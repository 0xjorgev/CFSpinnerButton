//
//  CFSpinnerButton.m
//  SpinnerButton
//
//  Created by Jorge Mendoza on 1/31/14.
//  Copyright (c) 2014 Jorge Mendoza. All rights reserved.
//
// A simple UIButton Subclass with an UIActivity indicator inside,
// ideal to use with login buttons or actions that requires the user to wait
// for an network answer of any kind
//
#import "CFSpinnerButton.h"

@implementation CFSpinnerButton

@synthesize mySpinner;

//Returns an isntace of the CFSpinnerButton class
//with a custom frame
//Return id
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

//Returns an instance of CFSpinnerButton class
//Adds the internal spinner to the button at 3/4 of the width and 1/2 heigh
//Return id
-(id)initSpinnerBtn
{
    self = [super init];
    if (self) {
        // Initialization code
        mySpinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        float btnWidth, btnHeigth;
        btnWidth = self.frame.size.width;
        btnHeigth = self.frame.size.height;
        mySpinner.frame = CGRectMake((btnWidth -btnWidth/4 ) +20, btnHeigth/2 -10, 20, 20);
        [self addSubview:mySpinner];
        [self bringSubviewToFront:mySpinner];
    }
    
    return self;
}

//Starts the spinner animation in the main Queue
//in order to update the interface
//Type void
-(void)runSpinner
{
    [[NSOperationQueue mainQueue]addOperationWithBlock:^(void)
    {
        [mySpinner startAnimating];
    }];
}

//Stops the spinner animation in the main Queue
//in order to update the interface
//Type void
-(void)stopSpinner
{
    [[NSOperationQueue mainQueue]addOperationWithBlock:^(void)
     {
         mySpinner.hidden = YES;
         [mySpinner stopAnimating];
     }];
}
@end
