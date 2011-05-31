//
//  FeedsConfig.h
//  EventMeetUp
//
//  Created by Albert Pascual on 2/2/11.
//  Copyright 2011 Al. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SessionManager.h"

@interface FeedsConfig : NSObject {

	
}

- (NSMutableArray*) GetAllFeeds;
- (NSString *) GetTitle;
- (NSString *) GetEmail;
- (NSString *) GetAddNewsLink;
- (NSMutableArray*) addFeed:(NSString *)theFeed;
- (void) clearFeed;
- (NSString *) GetFirst;

@end
