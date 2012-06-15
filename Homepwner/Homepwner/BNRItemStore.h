//
//  BNRItemStore.h
//  Homepwner
//
//  Created by idontgiveafuck on 6/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject
{
	NSMutableArray *allItems;
}

// Notice that this is a class method and prefixed with a + instead of a -
+ (BNRItemStore *)sharedStore;

- (void)removeItem:(BNRItem *)p;

- (NSArray *)allItems;
- (BNRItem *)createItem;

@end
