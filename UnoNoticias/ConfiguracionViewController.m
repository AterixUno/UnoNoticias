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
#import "RedesSocialesView.h"
#import "LogInUnoView.h"

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
        [(UnoNoticiasAppDelegate *)[[UIApplication sharedApplication] delegate] ponerMenuDelefate:nil];
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
        secciones = [[SeccionesView alloc] initWithFrame:CGRectMake(269, 162, 416, 550)];  
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
	return YES;
    //return interfaceOrientation == UIInterfaceOrientationLandscapeRight;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (IBAction)goBack:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)seccionesClic:(id)sender {
    
    [redesSociales removeFromSuperview];
    [logInUno removeFromSuperview];
    
    if (!secciones) {
        secciones = [[SeccionesView alloc] initWithFrame:CGRectMake(269, 162, 416, 550)];  
    }
    
    if (![secciones superview]){
        [self.view addSubview:secciones];
    }
}

- (IBAction)redesClic:(id)sender {
    
    [secciones removeFromSuperview];
    [logInUno removeFromSuperview];
    
    if (!redesSociales){
        redesSociales = [[RedesSocialesView alloc] initWithFrame:CGRectMake(269, 162, 416, 550)];
    }
    
    if (![redesSociales superview]){
        [self.view addSubview:redesSociales];
    }
    
}

- (IBAction)registroClic:(id)sender {
}

- (IBAction)loginClic:(id)sender {

    [secciones removeFromSuperview];
    [redesSociales removeFromSuperview];
    
    if (!logInUno){
        logInUno = [[LogInUnoView alloc] initWithFrame:CGRectMake(269, 162, 416, 550)];
    }
    
    if (![logInUno superview]){
        [self.view addSubview:logInUno];
    }

}

-(void) dealloc{

    if (secciones){
        [secciones release];
        secciones = nil;
    }
    
    if (redesSociales){
        [redesSociales release];
        redesSociales = nil;
    }
    
    if (logInUno){
        [logInUno release];
        logInUno = nil;
    }
    
    [super dealloc];
}
@end
