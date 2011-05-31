//
//  AppDelegate_iPad.h
//  EventMeetUp
//
//  Created by Albert Pascual on 2/2/11.
//  Copyright 2011 Al. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate_Shared.h"

#import "iPadFeedsController.h"
#import "iPadSurface.h"
#import "ConferencesController.h"


@interface AppDelegate_iPad : AppDelegate_Shared {
	iPadFeedsController *iPadController;
	UISplitViewController *splitViewController;
	iPadSurface *surface;
	iPhoneFeedsController *feeds;
	ConferencesController *conference;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UISplitViewController *splitViewController;

@property (nonatomic, retain) ConferencesController *conference;
@property (nonatomic, retain) iPadFeedsController *iPadController;
@property (nonatomic, retain) iPadSurface *surface;
@property (nonatomic, retain) iPhoneFeedsController *feeds;

@end

