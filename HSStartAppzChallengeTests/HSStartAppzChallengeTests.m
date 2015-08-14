//
//  HSStartAppzChallengeTests.m
//  HSStartAppzChallengeTests
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "HSUser.h"
#import "HSUserModelView.h"
#import "HSvalidator.h"

@interface HSStartAppzChallengeTests : XCTestCase

@end

@implementation HSStartAppzChallengeTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
    HSUser *user = [[HSUser alloc] initWithUsername:@"HalahSalih" andPassword:@"123456789"];
    
    HSUserModelView *userModelView = [[HSUserModelView alloc] initWithUser:user];
    XCTAssertTrue([HSvalidator validateText:userModelView.usernameText isAtLeast:8]);
    

}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
