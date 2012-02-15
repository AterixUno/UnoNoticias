//
//  ConfiguracionViewController.m
//  UnoNoticias
//
//  Created by Rogelio Adrian Hernandez B. on 1/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ConfiguracionViewController.h"
#import "UnoNoticiasAppDelegate.h"
#import "MenuView.h"
#import "SeccionesView.h"

@implementation ConfiguracionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

-(id) init{

    self = [super initWithNibName:@"ConfiguracionViewController" bundle:[NSBundle mainBundle]];
    if (self) {
        [(UnoNoticiasAppDelegate *)[[UIApplication sharedApplication] delegate] ponerMenu:self.view];
    }
    return self;
    
}

-(void) awakeFromNib{
    [super awakeFromNib];
    
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

}

#pragma mark - View lifecycle

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    if (!secciones) {
        secciones = [[SeccionesView alloc] initWithFrame:CGRectMake(269, 162, 755, 586)];  
    }
    [self.view addSubview:secciones];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	//return YES;
    return interfaceOrientation == UIInterfaceOrientationLandscapeRight;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (IBAction)goBack:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}


-(void) dealloc{

    if (secciones){
        [secciones release];
        secciones = nil;
    }
    
    [super dealloc];
}
@end
