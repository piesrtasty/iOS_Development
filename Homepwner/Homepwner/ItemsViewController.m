//
//  ItemsViewController.m
//  Homepwner
//
//  Created by idontgiveafuck on 6/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ItemsViewController.h"
#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation ItemsViewController

- (id)init
{
	// Call the superclass's designated initializer
	self = [super initWithStyle:UITableViewStyleGrouped];
	if (self) {
		
	}
	return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
	return [self init];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
 {
 	return [[[BNRItemStore sharedStore] allItems] count];
 }


- (UITableViewCell *)tableView:(UITableView *)tableView
 		 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	// Check for a reusable cell first, use that if it exists
	UITableViewCell *cell = 
		[tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];	

	// If there is no reusable cell of this type, create a new one
	if (!cell) {
		cell = [[UITableViewCell alloc]
					initWithStyle: UITableViewCellStyleDefault
				  reuseIdentifier:@"UITableViewCell"];
	}

	// Set the text on the cell with the description of the item
	// that is at the nth index of items, where n = row this cell
	// will appear in on the tableview
	BNRItem *p = [[[BNRItemStore sharedStore] allItems] objectAtIndex:[indexPath row]];
	[[cell textLabel] setText:[p description]];

	return cell;
}

- (UIView *)headerView
{
	// If we haven't loaded the headerView yet...
	if (!headerView) {
		// Load HeaderView.xib
		[[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner: self options:nil];
	}

	return headerView;
}

- (UIView *)tableView:(UITableView *)tv viewForHeaderInSection:(NSInteger)sec
{
	return [self headerView];
}

- (CGFloat)tableView:(UITableView *)tv heightForHeaderInSection:(NSInteger)sec
{
	// The height of the header view should be determined from the height of the
	// view in the XIB file
	return [[self headerView] bounds].size.height;
}

- (IBAction)toggleEditingMode:(id)sender
{
	// If we are currently in editing mode...
	if ([self isEditing]) {
		// Change the text of button to inform user of state
		[sender setTitle:@"Edit" forState:UIControlStateNormal];
		// Turn off editing mode
		[self setEditing:NO animated:YES];
	} else {
		// Change text of button to inform user of state
		[sender setTitle:@"Done" forState:UIControlStateNormal];
		// Ender editing mode
		[self setEditing:YES animated:YES];
	}
}

- (IBAction)addNewItem:(id)sender
{
	// Create a new BNRItem and add it to the store
	BNRItem *newItem = [[BNRItemStore sharedStore] createItem];

	// Figure out where that item is in the array
	int lastRow = [[[BNRItemStore sharedStore] allItems] indexOfObject:newItem];

	// Make a new index path for the 0th section, last row
	NSIndexPath *ip = [NSIndexPath indexPathForRow:lastRow inSection:0];

	// Insert this new row into the table
	[[self tableView] insertRowsAtIndexPaths:[NSArray arrayWithObject:ip]
							withRowAnimation:UITableViewRowAnimationTop];
}

- (void)tableView:(UITableView *)tableView
	commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
		forRowAtIndexPath:(NSIndexPath *)indexPath
{
	
}

























@end

