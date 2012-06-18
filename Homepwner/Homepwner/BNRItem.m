//
//  BNRItem.m
//  RandomPossessions
//
//  Created by idontgiveafuck on 5/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
@synthesize imageKey;
@synthesize itemName;
@synthesize containedItem, container, serialNumber, valueInDollars, dateCreated;

+ (id)randomItem
{
  // Crate an array of three adjectives
  NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy", @"Rusty", @"Shiny", nil];
  
  // Create an array of three nouns
  NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear", @"Spork", @"Mac", nil];
 
  // Get the index of a random adjective/noun from the lists
  // Note: The % operator, called the modulo operator, gives
  // you the remainder. So adjectiveIndex is a random number
  // from 0 to 2 inclusive.
  NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
  
  NSInteger nounIndex = rand() % [randomNounList count];
  
  // Note that NSInteger is not an object, but a type definition
  // for "unsigned long"
  
  NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                          [randomAdjectiveList objectAtIndex:adjectiveIndex],
                          [randomNounList objectAtIndex:nounIndex]];
  
  int randomValue = rand() % 100;
  
  NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                  '0' + rand() % 10,
                                  'A' + rand() % 26,
                                  '0' + rand() % 10,
                                  'A' + rand() % 26,
                                  '0' + rand() % 10];
  
  BNRItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
  
  return newItem;
  
}

- (void)dealloc
{
  NSLog(@"Destroyed: %@", self);
}

- (id)init
{
  return [self initWithItemName:@"Item" valueInDollars:0 serialNumber:@""];
}

- (id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
  // Call the superclass's designated initializer
  self = [super init];
  
  // Did the superclass's designated initializer succeed?
  if (self) {
    // Give the instance variables initial values
    [self setItemName:name];
    [self setSerialNumber:sNumber];
    [self setValueInDollars:value];
    dateCreated = [[NSDate alloc] init];
  }
  
  // Return the adress of the newly initialized object
  return self;
  
}

- (NSString *)description
{
  NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                                 itemName,
                                 serialNumber,
                                 valueInDollars,
                                 dateCreated];
  return descriptionString;
}

- (void)setContainedItem:(BNRItem *)i
{
  containedItem = i;
  [i setContainer:self];
}

@end


/*
 
Rules for initializers

1. A class inherits all initializers from its superclass and can add as many as it wants for its own purposes.
 
2. Each class picks one initializer as its designated initializer

3. The designated initializer calls the superclass's designated initializer

4. Any other initializer a class has calls the class's designated initializer.
 
5. If a class declares a designated initializer that is different from its superclass,
   the superclass's designated initializer must be overridden to call the new desigated initializer
 
*/


























