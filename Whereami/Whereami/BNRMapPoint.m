//
//  BNRMapPoint.m
//  Whereami
//
//  Created by idontgiveafuck on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

@synthesize coordinate, title;

- (id)init
{
  return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32)
                            title:@"Hometown"];
}

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
  
  self = [super init];
  if (self) {
    coordinate = c;
    [self setTitle:t];
  }
  return self;
}

@end
