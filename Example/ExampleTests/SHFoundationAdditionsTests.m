//
//  ExampleTests.m
//  ExampleTests
//
//  Created by Seivan Heidari on 8/7/13.
//  Copyright (c) 2013 Seivan Heidari. All rights reserved.
//

#import "SHFoundationAdditions.h"

#import <SenTestingKit/SenTestingKit.h>

@interface SHFoundationAdditionsTests : SenTestCase

@end


@implementation SHFoundationAdditionsTests

-(void)testSHFastEnumerationProtocols; {
  NSArray * classes = @[NSArray.class,
                        NSMutableArray.class,
                        NSDictionary.class,
                        NSMutableDictionary.class,
                        NSSet.class,
                        NSMutableSet.class,
                        NSOrderedSet.class,
                        NSMutableOrderedSet.class,
                        NSHashTable.class,
                        NSMapTable.class
                        ];
  
  for (Class class in classes)
    STAssertTrue([class.new conformsToProtocol:@protocol(SHFastEnumerationBlocks)], nil);
    
  
}

-(void)testSHKeyValueObserverBlocks; {
  STAssertTrue([NSObject.new respondsToSelector:@selector(SH_addObserverForKeyPaths:block:)], nil);
}

-(void)testSHObjectUserInfo; {
  STAssertTrue([NSObject.new respondsToSelector:@selector(SH_userInfo)], nil);

}

@end
