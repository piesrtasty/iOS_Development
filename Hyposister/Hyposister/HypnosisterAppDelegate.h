//
//  HypnosisterAppDelegate.h
//  Hyposister
//
//  Created by idontgiveafuck on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

// Don't forget this import statement!
#import "HypnosisView.h"

@interface HypnosisterAppDelegate : UIResponder <UIApplicationDelegate, UIScrollViewDelegate>
{
	HypnosisView *view;
}
@property (strong, nonatomic) UIWindow *window;

@end
