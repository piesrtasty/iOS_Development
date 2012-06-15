//
//  TimeViewController.m
//  HypnoTime
//
//  Created by idontgiveafuck on 6/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

- (IBAction)showCurrentTime:(id)sender
{
	NSDate *now = [NSDate date];

	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setTimeStyle:NSDateFormatterMediumStyle];

	[timeLabel setText:[formatter stringFromDate:now]];
}

- (void)viewDidLoad
{
	[super viewDidLoad];

	NSLog(@"TimeViewController loaded its view.");

	[[self view] setBackgroundColor:[UIColor greenColor]];
}

- (void)viewWillAppear:(BOOL)animated
{
	NSLog(@"CurrentTimeViewController will appear");
	[super viewWillAppear:animated];
	[self showCurrentTime:nil];
}

- (void)viewWillDisappear:(BOOL)animated
{
	NSLog(@"CurrentTimeViewController will Disappear");
	[super viewWillDisappear:animated];
}

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
	// Call the superclass's designated initializer
	self = [super initWithNibName:nil
						   bundle:nil];

	// Get a pointer to this application bundle object
	NSBundle *appBundle = [NSBundle mainBundle];

	self = [super initWithNibName:@"TimeViewController"
						   bundle:appBundle];

	if (self) {
		// Get the tab bar item
		UITabBarItem *tbi = [self tabBarItem];

		// Give it a label
		[tbi setTitle:@"Time"];

		UIImage *i = [UIImage imageNamed:@"Time.png"];
		[tbi setImage: i];

	}

	return self;

}


@end

































