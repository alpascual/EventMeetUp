//
//  AppDelegate_iPhone.h
//  EventMeetUp
//
//  Created by Albert Pascual on 2/2/11.
//  Copyright 2011 Al. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate_Shared.h"

#import "iPhoneFeedsController.h"
#import "ConferencesController.h"

@interface AppDelegate_iPhone : AppDelegate_Shared {
	
	//UIWindow *window;
    UINavigationController *navigationController;
	iPhoneFeedsController *iPhoneView;
	ConferencesController *conference;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@property (nonatomic, retain) iPhoneFeedsController *iPhoneView;
@property (nonatomic, retain) ConferencesController *conference;
	
	

@end

