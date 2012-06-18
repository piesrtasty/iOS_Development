//
//  BNRImageStore.h
//  Homepwner
//
//  Created by idontgiveafuck on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNRImageStore : NSObject
{
	NSMutableDictionary *dictionary;
}
	
+ (BNRImageStore *)sharedStore;

- (void)setImage:(UIImage *)i forKey:(NSString *)s;
- (UIImage *)imageForKey:(NSString *)s;
- (void)deleteImageForKey:(NSString *)s;

@end