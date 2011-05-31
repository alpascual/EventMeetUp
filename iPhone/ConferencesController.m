//
//  ConferencesController.m
//  EventMeetUp
//
//  Created by Albert Pascual on 2/2/11.
//  Copyright 2011 Al. All rights reserved.
//

#import "ConferencesController.h"


@implementation ConferencesController

@synthesize surface, feeds;
@synthesize activityView;
@synthesize pleaseWait;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	[activityView stopAnimating];
	
	self.title = @"Event Meet Up";
	self.pleaseWait.hidden = YES;
}

-(void) viewWillAppear:(BOOL)animated
{
	self.pleaseWait.hidden = YES;	
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
	
	[self.feeds release];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
	
	[self.feeds release];
	[self.surface release];
	
	self.feeds = nil;
	self.surface = nil;
}

- (IBAction) conferenceCalled:(id)sender
{
	self.pleaseWait.hidden = NO;
	[activityView startAnimating];
	
	UIButton *myButton = sender;
	
	FeedsConfig *config = [[FeedsConfig alloc] init];
		
	NSLog(@"clear the feed");
	[config clearFeed];
	
	if ( [myButton.titleLabel.text isEqualToString:@"Dev Connections"] )
	{
		[config addFeed:@"http://devconnectionsevents.info/rss.ashx"];
	}
	else if ( [myButton.titleLabel.text isEqualToString:@"Mix"])
	{
		[config addFeed:@"http://visitmixevents.info/rss.ashx"];
	}
	else if ( [myButton.titleLabel.text isEqualToString:@"Tech Ed"] )
	{
		[config addFeed:@"http://techedevents.info/rss.ashx"];
	}
	else if ( [myButton.titleLabel.text isEqualToString:@"PDC"] )
	{
		[config addFeed:@"http://pdcevents.info/rss.ashx"];
	}
	
	[config release];
		
	NSLog(@"calling the controllers");
	
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
	{
		// iPad
		//if ( self.surface == nil )
			self.surface = [[iPadSurface alloc] initWithNibName:@"iPadSurface" bundle:nil];
		
		self.surface.modalPresentationStyle = UIModalPresentationFullScreen;
		self.surface.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
		[self presentModalViewController:self.surface animated:NO];
		
	}
	else {
		//if ( self.feeds == nil )
			self.feeds = [[iPhoneFeedsController alloc] initWithNibName:@"iPhoneFeedsController" bundle:nil];
		
		[self.navigationController pushViewController:self.feeds animated:YES];
		
		//[self.feeds release];
		//self.feeds = nil;
	}

	
}
@end
