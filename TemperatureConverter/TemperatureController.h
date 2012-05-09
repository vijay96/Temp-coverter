//
//  TemperatureController.h
//  TemperatureConverter
//
//  Created by Vijay Chavan on 02/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TemperatureController : UIViewController<UITextFieldDelegate>
{
    __weak IBOutlet UITextField *entryText;
    __weak IBOutlet UILabel *entryLabel;
    __weak IBOutlet UISegmentedControl *segcontrol;
    __weak IBOutlet UITextField *resultText;
    __weak IBOutlet UIWebView *web;
    __weak IBOutlet UILabel *resultLabel;
    

    
    
    
    
}
- (IBAction)convertButton:(id)sender;
- (IBAction)segmentButton:(id)sender;

@end
