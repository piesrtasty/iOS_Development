//
//  BNRItemStore.m
//  Homepwner
//
//  Created by idontgiveafuck on 6/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRItemStore

+ (BNRItemStore *)sharedStore
{
  static BNRItemStore *sharedStore = nil;
  if (!sharedStore)
    sharedStore = [[super allocWithZone:nil] init];

  return sharedStore;
}

+ (id)allocWithZone:(NSZone *)zone
{
	return [self sharedStore];
}

- (id)init
{
	self = [super init];
	if (self) {
		allItems = [[NSMutableArray alloc] init];
	}

	return self;
}

- (NSArray *)allItems
{
	return allItems;
}

- (BNRItem *)createItem
{
	BNRItem *p = [BNRItem randomItem];

	[allItems addObject:p];

	return p;
}

- (void)removeItem:(BNRItem *)p
{
	[allItems removeObjectIdenticalTo:p];
}

- (void)moveItemAtIndex:(int)from
				toIndex:(int)to;
{
	if (from == to) {
		return;
	}

	// Get pointer to object being moved so we can re-insert it
	BNRItem *p = [allItems objectAtIndex:from];

	// Remove p from array
	[allItems removeObjectAtIndex:from];

	// Insert p in array at new location
	[allItems InsertObject:p atIndex:to];
}
































@end
