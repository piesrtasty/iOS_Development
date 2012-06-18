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
  imageView = nil;
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

- (void)setItem:(BNRItem *)i
{
	item = i;
	[[self navigationItem] setTitle:[item itemName]];
}

- (IBAction)takePicture:(id)sender 
{
	UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];

	// If our device has a camera, we want to take a picture, otherwise we
	// just pick from photo library
	if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
		[imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
	} else {
		[imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
	}

	// This line of code will generate a warning right now, ignore it
	[imagePicker setDelegate:self];

	// Place image picker on the screen
	[self presentViewController:imagePicker animated:YES completion:nil];

}

- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
	// Get picked image from info dictionary
	UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];

	// Put that image onto the screen in our image view
	[imageView setImage:image];

	// Take image picker off the screen -
	// you must call this dismiss method
	[self dismissViewControllerAnimated:YES completion:nil];
}

@end












































































