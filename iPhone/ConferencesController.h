//
//  ConferencesController.h
//  EventMeetUp
//
//  Created by Albert Pascual on 2/2/11.
//  Copyright 2011 Al. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "FeedsConfig.h"
#import "iPadSurface.h"

@interface ConferencesController : UIViewController {
	
	iPadSurface *surface;
	iPhoneFeedsController *feeds;
	
	UIActivityIndicatorView *activityView;
	
	UIView *pleaseWait;

}

@property (nonatomic, retain) iPadSurface *surface;
@property (nonatomic, retain) iPhoneFeedsController *feeds;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *activityView;
@property (nonatomic, retain) IBOutlet UIView *pleaseWait;

- (IBAction) conferenceCalled:(id)sender;

@end
