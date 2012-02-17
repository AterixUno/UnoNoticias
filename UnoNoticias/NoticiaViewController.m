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
        [(UnoNoticiasAppDelegate *)[[UIApplication sharedApplication] delegate] ponerMenuDelefate:self];
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
    [scrollNoticia setContentSize:CGSizeMake(scrollNoticia.frame.size.width, scrollNoticia.frame.size.height*3)];
    BarraClimaView *barra = (BarraClimaView *)[self.view viewWithTag:99];
    [barra setDelegate:self];
    
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

-(void) configuracionClic{
    
    ConfiguracionViewController *configuracion = [[ConfiguracionViewController alloc] init];
    [configuracion setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentModalViewController:configuracion animated:NO];
    [configuracion release];
    configuracion = nil;    
    
}

-(void) barraClimaClic:(BarraClimaView *) _barraClima{
    ClimaView *climaView;
    
    climaView = (ClimaView *)[[self view] viewWithTag:100];
    
    if (climaView){
        
        [climaView removeFromSuperview];
        
    }
    
    else{
        
        climaView = [[ClimaView alloc] initWithFrame:CGRectMake(_barraClima.frame.origin.x+15,_barraClima.frame.origin.y - 367, 407 , 367)];
        [climaView setAutoresizingMask:UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin];
        [climaView setTag:100];
        [self.view addSubview:climaView];
        [climaView release];
        climaView = nil;
        
    }
    
}

- (void)dealloc {
    [scrollNoticia release];
    [super dealloc];
}
- (IBAction)regesar:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}
@end
