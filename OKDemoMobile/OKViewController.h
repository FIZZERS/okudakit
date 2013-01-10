//
//  OKViewController.h
//  OKDemoMobile
//
//  Created by Atsushi Nagase on 1/10/13.
//  Copyright (c) 2013 LittleApps Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OKViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (copy, nonatomic) NSAttributedString *displayString;

- (IBAction)hilightCSS:(id)sender;
- (IBAction)hilightHTML:(id)sender;
- (IBAction)hilightJavaScript:(id)sender;
- (IBAction)hilightJSON:(id)sender;

@end
