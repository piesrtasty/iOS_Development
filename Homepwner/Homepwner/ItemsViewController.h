//
//  ItemsViewController.h
//  Homepwner
//
//  Created by idontgiveafuck on 6/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailViewController.h"

@interface ItemsViewController : UITableViewController
{
	IBOutlet UIView *headerView;
}

- (UIView *)headerView;
- (IBAction)addNewItem:(id)sender;
- (IBAction)toggleEditingMode:(id)sender;

@end

