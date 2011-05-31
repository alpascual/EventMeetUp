//
//  SessionManager.h
//  EventMeetUp
//
//  Created by Albert Pascual on 2/12/11.
//  Copyright 2011 Al. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SessionManager : NSObject {

	NSMutableArray *singletonFeeds;
	
}

@property (nonatomic,retain) NSMutableArray *singletonFeeds;  

+ (SessionManager*) sharedStateInstance;

@end
