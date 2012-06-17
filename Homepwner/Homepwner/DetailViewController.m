//
//  DetailViewController.m
//  Homepwner
//
//  Created by idontgiveafuck on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"
#import "BNRItem.h"

@implementation DetailViewController

@synthesize item;

- (void)viewDidUnload {
  nameField = nil;
  serialNumberField = nil;
  valueField = nil;
  dateLabel = nil;
  [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];

	[nameField setText:[item itemName]];
	[serialNumberField setText:[item serialNumber]];
	[valueField setText:[NSString stringWithFormat:@"%d", [item valueInDollars]]];

	// Create a NSDateFormatter that will turn a date into a simple date string
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	[dateFormatter setDateStyle:NSDateFormatterMediumStyle];
	[dateFormatter setDateStyle:NSDateFormatterNoStyle];

	// Use filtered NSDate object to set dateLabel contents
	[dateLabel setText:[dateFormatter stringFromDate:[item dateCreated]]];

}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];

	// Clear first responder
	[[self view] endEditing:YES];

	// "Save" changes to item
	[item setItemName:[nameField text]];
	[item setSerialNumber:[serialNumberField text]];
	[item setValueInDollars:[[valueField text] intValue]];

}

@end



























