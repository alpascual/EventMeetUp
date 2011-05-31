//
//  FeedsConfig.m
//  EventMeetUp
//
//  Created by Albert Pascual on 2/2/11.
//  Copyright 2011 Al. All rights reserved.
//

#import "FeedsConfig.h"


@implementation FeedsConfig

- (NSMutableArray*) GetAllFeeds
{
	SessionManager *sharedSessionManager = [SessionManager sharedSessionManager];
			
	if ( [[sharedSessionManager singletonFeeds] count] == 0 )
	{
		[[sharedSessionManager singletonFeeds] addObject:@"http://visitmixevents.info/rss.ashx"];
		[[sharedSessionManager singletonFeeds] addObject:@"http://techedevents.info/rss.ashx"];
		[[sharedSessionManager singletonFeeds] addObject:@"http://pdcevents.info/rss.ashx"];
		[[sharedSessionManager singletonFeeds] addObject:@"http://devconnectionsevents.info/rss.ashx"];
	}
	
	return [sharedSessionManager singletonFeeds];
	
}

- (NSString *) GetFirst
{
	SessionManager *sharedSessionManager = [SessionManager sharedSessionManager];
	
	if ( [[sharedSessionManager singletonFeeds] count] > 0 )
		return [[sharedSessionManager singletonFeeds] objectAtIndex:0];
	
	return nil;
}

- (void) clearFeed
{
	SessionManager *sharedSessionManager = [SessionManager sharedSessionManager];
	[[sharedSessionManager singletonFeeds] removeAllObjects];
}

- (NSMutableArray*) addFeed:(NSString *)theFeed
{
	SessionManager *sharedSessionManager = [SessionManager sharedSessionManager];
	[[sharedSessionManager singletonFeeds] addObject:theFeed];
	
	NSLog(@"Objects %d", [[sharedSessionManager singletonFeeds] count]);
	
	return [sharedSessionManager singletonFeeds];
	
}

- (NSString *) GetTitle
{
	return @"Event Meet Up";
}

- (NSString *) GetEmail
{
	return @"alpascual@gmail.com";
}

- (NSString *) GetAddNewsLink
{
	//@"http://www.silverlightshow.net/SubmitNews.aspx
	return @"";
}

@end
