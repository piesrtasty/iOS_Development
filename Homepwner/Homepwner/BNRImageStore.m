//
//  BNRImageStore.m
//  Homepwner
//
//  Created by idontgiveafuck on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRImageStore.h"

@implementation BNRImageStore

+ (id)allocWithZone:(NSZone *)zone
{
	return [self sharedStore];
}

+ (BNRImageStore *)sharedStore
{
	static BNRImageStore *sharedStore = nil;
	if (!sharedStore) {
		// Create the singleton
		sharedStore = [[super allocWithZone:NULL] init];
	}
	return sharedStore;
}

- (id)init
{
	self = [super init];
	if (self) {
		dictionary = [[NSMutableDictionary alloc] init];
	}

	return self;
}

- (void)setImage:(UIImage *)i forKey:(NSString *)s
{
	[dictionary setObject:i forKey:s];
}

- (UIImage *)imageForKey:(NSString *)s
{
	return [dictionary objectForKey:s];
}

- (void)deleteImageForKey:(NSString *)s
{
	if (!s)
		return;
	[dictionary removeObjectForKey:s];
}



@end
