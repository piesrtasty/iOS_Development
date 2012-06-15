//
//  main.m
//  RandomPossessions
//
//  Created by idontgiveafuck on 5/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

  @autoreleasepool {
      
    // Create a mutable array object, store its address in items variable
//    NSMutableArray *items = [[NSMutableArray alloc] init];
    
    BNRItem *backpack = [[BNRItem alloc] init];
    [backpack setItemName:@"Backpack"];
//    [items addObject:backpack];
    
    BNRItem *calculator = [[BNRItem alloc] init];
    [calculator setItemName:@"Calculator"];
//    [items addObject:calculator];
    
    [backpack setContainedItem:calculator];
    
//    NSLog(@"Setting items to nil...");
    
    // Destroy the array pointed to by items
//    items = nil;
    
    backpack = nil;
    
    NSLog(@"Container: %@", [calculator container]);
    
    calculator = nil;
    
  }
    return 0;
}




























