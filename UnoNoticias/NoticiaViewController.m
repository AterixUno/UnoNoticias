//
//  NoticiaViewController.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 14/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "NoticiaViewController.h"

@implementation NoticiaViewController
@synthesize scrollNoticia;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id) init{
    self = [super initWithNibName:@"NoticiaViewController" bundle:nil];
    if (self){
        [(UnoNoticiasAppDelegate *)[[UIApplication sharedApplication] delegate] ponerMenu:self.view];
    }
    
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [scrollNoticia setContentSize:CGSizeMake(scrollNoticia.frame.size.width, scrollNoticia.frame.size.height*2)];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setScrollNoticia:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (void)dealloc {
    [scrollNoticia release];
    [super dealloc];
}
- (IBAction)regesar:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}
@end
