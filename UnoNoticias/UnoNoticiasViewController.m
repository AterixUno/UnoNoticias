//
//  UnoNoticiasViewController.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 08/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "UnoNoticiasViewController.h"
#import "ConfiguracionViewController.h"
#import "UnoNoticiasAppDelegate.h"
#import "MenuView.h"
#import "NoticiaCompletaView.h"
#import "BarraClimaView.h"
#import "BotonSeccionaNoticaView.h"

@implementation UnoNoticiasViewController
@synthesize imgDrag,scrollNoticias,barraClima;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

-(void) awakeFromNib{
    
    NSLog(@"awake");
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    if (!menu){
        menu = [(UnoNoticiasAppDelegate *) [[UIApplication sharedApplication] delegate] menu];
    }
    
    UIPanGestureRecognizer *drag = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(drag:)];
    [drag setMaximumNumberOfTouches:1];
    [drag setMinimumNumberOfTouches:1];
    [imgDrag addGestureRecognizer:drag];
    [drag release];
    
    primeraVes = TRUE;
    
    [scrollNoticias setContentSize:CGSizeMake(scrollNoticias.frame.size.width, scrollNoticias.frame.size.height*2)];
    
    /*noticia = [[NoticiaCompletaView alloc] init];
    [scrollNoticias addSubview:noticia];
    [noticia actualizarVista];*/
    
    BotonSeccionaNoticaView *noticia =[[BotonSeccionaNoticaView alloc] initWithFrame:CGRectMake(0, 0, scrollNoticias.frame.size.width/2, scrollNoticias.frame.size.height) Fuente:@"Fuente: EFE"];
    [noticia setBackgroundColor:[UIColor yellowColor]];
    [scrollNoticias addSubview:noticia];
    [noticia release];
    noticia = nil;
    
}

- (void)viewDidUnload
{
    [self setImgDrag:nil];
    [self setScrollNoticias:nil];
    [self setBarraClima:nil];
    [super viewDidUnload];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    /*if (primeraVes)
     {
     [menu removeFromSuperview];
     ConfiguracionViewController *configuracion = [[ConfiguracionViewController alloc] init];
     [self presentModalViewController:configuracion animated:NO];
     [configuracion release];
     configuracion = nil;
     primeraVes = FALSE;
     }else{
     //[(UnoNoticiasAppDelegate *)[[UIApplication sharedApplication] delegate] ponerMenu:self.view]; 
     [self.view addSubview:menu];
     }*/
    
    [(UnoNoticiasAppDelegate *)[[UIApplication sharedApplication] delegate] ponerMenu:self.view]; 
    [self.view addSubview:menu];
    
}


- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}


-(void)drag:(UIPanGestureRecognizer *) sender
{
    
    CGPoint point;
    float velocidad;
    static CGPoint start;
    
    if ([sender state] == UIGestureRecognizerStateBegan)
    {
        start = [[sender view] center];
        [imgDrag setCenter:start];
        [menu setFrame:CGRectMake(menu.frame.origin.x,imgDrag.frame.origin.y - menu.frame.size.height, menu.frame.size.width, menu.frame.size.height)];
    }
    
    point = [sender translationInView:[sender view]];
    point.x = start.x;
    point.y += start.y;
    
    if ([sender state] == UIGestureRecognizerStateChanged)
        
    {
        [imgDrag setCenter:point];
        [menu setFrame:CGRectMake(menu.frame.origin.x,imgDrag.frame.origin.y - menu.frame.size.height, menu.frame.size.width, menu.frame.size.height)];
    }
    
    if ([sender state] == UIGestureRecognizerStateEnded)
    {
        
        velocidad = [sender velocityInView:[sender view]].y;
        
        if (velocidad < -1000){
            point.y = imgDrag.frame.size.height / 2.0;
        } 
        
        else if (velocidad > 1000){        
            point.y = 748 - imgDrag.frame.size.height/2.0;        
        }
        
        else if (point.y < 374){
            point.y = imgDrag.frame.size.height / 2.0;
        }
        
        else{
            point.y = 748 - imgDrag.frame.size.height/2.0; 
        }
        
        [UIView animateWithDuration:0.4 animations:^{
            [imgDrag setCenter:point];
            [menu setFrame:CGRectMake(menu.frame.origin.x,imgDrag.frame.origin.y - menu.frame.size.height, menu.frame.size.width, menu.frame.size.height)];    
        }];
        
    }
}

- (IBAction)Configuracion:(id)sender {
    ConfiguracionViewController *configuracion = [[ConfiguracionViewController alloc] init];
    [self presentModalViewController:configuracion animated:YES];
    [configuracion release];
    
    configuracion = nil;
    primeraVes = FALSE;
}

-(void) dealloc{
    
    [imgDrag release];
    imgDrag = nil;
    
    [scrollNoticias release];
    scrollNoticias = nil;
    
    /*[noticia release];
    noticia = nil;*/
    
    [barraClima release];
    barraClima = nil;
    [super dealloc];
}

@end
