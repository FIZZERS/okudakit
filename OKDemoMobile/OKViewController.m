//
//  OKViewController.m
//  OKDemoMobile
//
//  Created by Atsushi Nagase on 1/10/13.
//  Copyright (c) 2013 LittleApps Inc. All rights reserved.
//

#import "OKViewController.h"
#import <OkudaKit/OkudaKit.h>

@interface OKViewController ()

@end

@implementation OKViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // [self hilightJavaScript:nil];
  [self hilightHTML:nil];
}

- (IBAction)hilightCSS:(id)sender {
  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"example" ofType:@"css"];
    NSString *s = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    OKSyntaxHighlighter *shc = [[OKSyntaxHighlighter alloc] init];
    self.displayString = [shc highlightedStringForString:s ofGrammar:@"css"];
  });
}

- (IBAction)hilightHTML:(id)sender {
  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"example" ofType:@"html"];
    NSString *s = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    OKSyntaxHighlighter *shc = [[OKSyntaxHighlighter alloc] init];
    self.displayString = [shc highlightedStringForString:s ofGrammar:@"html"];
  });
}

- (IBAction)hilightJavaScript:(id)sender {
  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"example" ofType:@"js"];
    NSString *s = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    OKSyntaxHighlighter *shc = [[OKSyntaxHighlighter alloc] init];
    self.displayString = [shc highlightedStringForString:s ofGrammar:@"javascript"];
  });
}

- (IBAction)hilightJSON:(id)sender {
  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"yahoo" ofType:@"json"];
    NSString *s = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    OKSyntaxHighlighter *shc = [[OKSyntaxHighlighter alloc] init];
    self.displayString = [shc highlightedStringForString:s ofGrammar:@"json"];
  });
}

- (void)setDisplayString:(NSAttributedString *)displayString {
  dispatch_async(dispatch_get_main_queue(), ^{
    [self.textView setAttributedText:displayString];
  });
}

- (NSAttributedString *)displayString {
  return self.textView.attributedText;
}

@end
