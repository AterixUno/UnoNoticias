//
//  UnoNoticiasViewController.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 08/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "UnoNoticiasViewController.h"
#import "ConfiguracionViewController.h"
#import "MenuView.h"
#import "NoticiaCompletaView.h"
#import "ClimaView.h"
#import "NoticiaViewController.h"

@implementation UnoNoticiasViewController
@synthesize scrollNoticias,barraClima;

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
    
    primeraVes = TRUE;
    
    [scrollNoticias setContentSize:CGSizeMake(scrollNoticias.frame.size.width, scrollNoticias.frame.size.height*2)];

    BotonSeccionaNoticaView *noticia =[[BotonSeccionaNoticaView alloc] initWithFrame:CGRectMake(0, 0, scrollNoticias.frame.size.width*3/5, scrollNoticias.frame.size.height) Fuente:@"México D.F., viernes 20 de Enero, 2012" Foto:[UIImage imageNamed:@"concordiaMediano.jpg"] Relacionadas:@"24 NOTICIAS"];
    [noticia setTamano:48];
    [noticia setBackgroundColor:[UIColor clearColor]];
    [noticia setTipoNoticia:@"INTERNACIONAL"];
    [noticia setTitulo:@"Suspenden de nuevo búsqueda de desaparecidos en crucero"];
    [noticia setNoticia:@"La búsqueda de la veintena de desaparecidos en el naufragio del \"Costa Concordia\", ocurrido el pasado ciernes frente a la isla italiana de Giglio, se suspendio debido a que los movimientos continuos del crucero ponen en"];
    [noticia setComentarios:@"2"];
    [noticia setDelegate:self];
    [scrollNoticias addSubview:noticia];
    [noticia release];
    noticia = nil;

    BotonSeccionaNoticaView *noticia1 =[[BotonSeccionaNoticaView alloc] initWithFrame:CGRectMake(scrollNoticias.frame.size.width*3/5, 0, scrollNoticias.frame.size.width*2/5, scrollNoticias.frame.size.height/2) Fuente:nil Foto:[UIImage imageNamed:@"energiaautosustentable.jpg" ] Relacionadas:nil];
    [noticia1 setBackgroundColor:[UIColor clearColor]];
    [noticia1 setTipoNoticia:@"NACIONAL"];
    [noticia1 setTitulo:@"México transita hacia la energía autosustentable: Sener"];
    [noticia1 setNoticia:@"El secreatrio de economía aseguró qeu el programa implementado por FCH, alcanzará su objetivo en "];
    [noticia1 setComentarios:@"7"];
    [noticia1 setTamano:26];
    [noticia1 setDelegate:self];
    [scrollNoticias addSubview:noticia1];
    [noticia1 release];
    noticia1 = nil;
    
    BotonSeccionaNoticaView *noticia2 =[[BotonSeccionaNoticaView alloc] initWithFrame:CGRectMake(scrollNoticias.frame.size.width*3/5, scrollNoticias.frame.size.height/2, scrollNoticias.frame.size.width*2/5, scrollNoticias.frame.size.height/2) Fuente:nil Foto:[UIImage imageNamed:@"chicagovswizards.jpg"] Relacionadas:nil];
    [noticia2 setBackgroundColor:[UIColor clearColor]];
    [noticia2 setTipoNoticia:@"DEPORTES"];
    [noticia2 setTitulo:@"Chicago retomó la senda de la victoria venciendo a Wizards"];
    [noticia2 setNoticia:@"Rose encestó 10 de 20 tiros de campo y 14 de 15 tiros libres para acumular 35 puntos, su mayor"];
    [noticia2 setComentarios:@"15"];
    [noticia2 setTamano:26];
    [noticia2 setDelegate:self];
    [scrollNoticias addSubview:noticia2];
    [noticia2 release];
    noticia2 = nil;
    
    [barraClima setDelegate:self];
}

- (void)viewDidUnload
{
    
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

    if (primeraVes){
        
        ConfiguracionViewController *configuracion = [[ConfiguracionViewController alloc] init];
        [configuracion setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
        [self presentModalViewController:configuracion animated:NO];
        [configuracion release];
        configuracion = nil;
        primeraVes = FALSE;
        
    }else{
        
        [(UnoNoticiasAppDelegate *)[[UIApplication sharedApplication] delegate] ponerMenu:self.view];
        [(UnoNoticiasAppDelegate *)[[UIApplication sharedApplication] delegate] ponerMenuDelefate:self];
        
    }
    
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




- (IBAction)Configuracion:(id)sender {
    ConfiguracionViewController *configuracion = [[ConfiguracionViewController alloc] init];
    [configuracion setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentModalViewController:configuracion animated:YES];
    [configuracion release];
    
    configuracion = nil;
    primeraVes = FALSE;
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

-(void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
    switch (toInterfaceOrientation) {
        case UIInterfaceOrientationLandscapeLeft:case UIInterfaceOrientationLandscapeRight:
                
            break;
            
        case UIInterfaceOrientationPortrait: case UIInterfaceOrientationPortraitUpsideDown:
            break;
            
        default:
            break;
    }
    
    //[menu willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
}

-(void) BotonSeleleccionaNoticiaClic:(BotonSeccionaNoticaView *)botonSeleccionaNoticia{
    NoticiaViewController *noticiaView = [[NoticiaViewController alloc] init];
    [noticiaView setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentModalViewController:noticiaView animated:YES];
    [noticiaView release];
    noticiaView = nil;
}


-(void) configuracionClic{
    
    ConfiguracionViewController *configuracion = [[ConfiguracionViewController alloc] init];
    [configuracion setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [self presentModalViewController:configuracion animated:NO];
    [configuracion release];
    configuracion = nil;    

}

-(void) dealloc{
    
    [scrollNoticias release];
    scrollNoticias = nil;
    
    /*[noticia release];
    noticia = nil;*/
    
    [barraClima release];
    barraClima = nil;
    [super dealloc];
}

@end
