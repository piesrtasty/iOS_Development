//
//  DetailViewController.h
//  Homepwner
//
//  Created by idontgiveafuck on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNRItem;

@interface DetailViewController : UIViewController
{
  
  __weak IBOutlet UITextField *nameField;
  
  __weak IBOutlet UITextField *serialNumberField;
  
  __weak IBOutlet UITextField *valueField;
  
  __weak IBOutlet UILabel *dateLabel;

}

@property (nonatomic, strong) BNRItem *item;

@end
