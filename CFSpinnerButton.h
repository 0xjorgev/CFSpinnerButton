//
//  CFSpinnerButton.h
//  SpinnerButton
//
//  Created by Jorge Mendoza on 1/31/14.
//  Copyright (c) 2014 Jorge Mendoza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CFSpinnerButton : UIButton

//strong property for UIActivityIndicator
@property(nonatomic, strong)UIActivityIndicatorView *mySpinner;

//Custom Init Method for Custom Class
-(id)initSpinnerBtn;
//Starts the spinner Animation
-(void)runSpinner;
//Stops the spinner Animation
-(void)stopSpinner;
@end
