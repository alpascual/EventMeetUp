//
//  SessionManager.m
//  EventMeetUp
//
//  Created by Albert Pascual on 2/12/11.
//  Copyright 2011 Al. All rights reserved.
//

#import "SessionManager.h"


@implementation SessionManager

@synthesize singletonFeeds;

- (id)init {	
    if(self = [super init]) {
		// Create the array when the singleton is created on first reference
		singletonFeeds = [[NSMutableArray alloc] init];
    }
    return self;
}

#pragma mark Singleton Methods
+ (SessionManager*) sharedSessionManager {
	static SessionManager *sharedSessionManager;
	
	@synchronized(self) {
		if(sharedSessionManager == nil) {
			// Create an instance of the singleton 
			sharedSessionManager = [[SessionManager alloc] init];
			
			// initialise the array as a property of sharedSessionManager. 
			sharedSessionManager.singletonFeeds = [[NSMutableArray alloc] init];
			
		}
	}
	return sharedSessionManager;
}


@end
