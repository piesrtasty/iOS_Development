//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by idontgiveafuck on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)loadView
{
	// Create a view
	CGRect frame = [[UIScreen mainScreen] bounds];
	HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];

	// Set it as *the* view of this view controller
	[self setView:v];
}

- (void)viewDidLoad
{
	// Always call the super implementation of viewDidLoad
	[super viewDidLoad];

	NSLog(@"HypnosisViewController loaded its view.");
}

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
	// Call the superclass's designated initializer
	self = [super initWithNibName:nil
						   bundle:nil];

	if (self) {
		// Get the tab bar item
		UITabBarItem *tbi = [self tabBarItem];

		// Give it a label
		[tbi setTitle:@"Hypnosis"];

		// Create a UIImage from a file
		// This will use Hypno@2x.png on retina display devies
		UIImage *i = [UIImage imageNamed:@"Hypno.png"];

		// Put that image on the tab bar item
		[tbi setImage:i];

	}

	return self;

}

@end
