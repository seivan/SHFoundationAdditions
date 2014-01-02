//
//  ExampleTests.m
//  ExampleTests
//
//  Created by Seivan Heidari on 8/7/13.
//  Copyright (c) 2013 Seivan Heidari. All rights reserved.
//

#import "SHFoundationAdditions.h"

#import <XCTest/XCTest.h>

@interface SHFoundationAdditionsTests : XCTestCase

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
    XCTAssert([class.new conformsToProtocol:@protocol(SHFastEnumerationBlocks)]);
    
  
}

-(void)testSHKeyValueObserverBlocks; {
  XCTAssert([NSObject.new respondsToSelector:@selector(SH_addObserverForKeyPaths:withOptions:block:)]);
}

-(void)testSHObjectUserInfo; {
  XCTAssert([NSObject.new respondsToSelector:@selector(SH_userInfo)]);

}

-(void)testSHInvocation; {
  XCTAssert([NSInvocation respondsToSelector:@selector(SH_performInvocationOnTarget:withSelector:andArguments:)]);
  
}


@end
