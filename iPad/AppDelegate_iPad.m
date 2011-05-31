//
//  AppDelegate_iPad.m
//  EventMeetUp
//
//  Created by Albert Pascual on 2/2/11.
//  Copyright 2011 Al. All rights reserved.
//

#import "AppDelegate_iPad.h"

@implementation AppDelegate_iPad

@synthesize iPadController;
@synthesize surface;
@synthesize feeds;
@synthesize conference;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // create an instance of the view controller
	//self.iPadController = [[iPadFeedsController alloc] init];
	//self.surface = [[iPadSurface alloc] init];
	self.conference = [[ConferencesController alloc] initWithNibName:@"ConferenceController_iPad" bundle:nil];
	
	//self.feeds.modalPresentationStyle = UIModalPresentationFullScreen;
	
	[self.window addSubview: self.conference.view];
	[self.window makeKeyAndVisible];
	
	//[window addSubview:splitViewController.view];
    //[window makeKeyAndVisible];
	
	//self.feeds = [[iPhoneFeedsController alloc] init];
	//self.feeds.modalPresentationStyle = UIModalPresentationFullScreen;
	
	//[self.surface presentModalViewController:self.feeds animated:NO];
	
	return YES;
	
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive.
     */
}


/**
 Superclass implementation saves changes in the application's managed object context before the application terminates.
 */
- (void)applicationWillTerminate:(UIApplication *)application {
	[super applicationWillTerminate:application];
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
    [super applicationDidReceiveMemoryWarning:application];
}


- (void)dealloc {
	
	[super dealloc];
	[self.conference release];
}


@end

