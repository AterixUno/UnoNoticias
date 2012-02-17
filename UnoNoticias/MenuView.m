//
//  MenuView.m
//  UnoNoticias
//
//  Created by Rogelio Adrian Hernandez B. on 1/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MenuView.h"
#import "BotonNoticiaView.h"
#import "Constantes.h"

@implementation MenuView
@synthesize delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.3]];
        
        viewContenedor = [[UIView alloc] initWithFrame:CGRectMake(0, frame.size.height - 540,frame.size.width , 540)];
        [viewContenedor setUserInteractionEnabled:TRUE];
        [viewContenedor setBackgroundColor:[UIColor whiteColor]];
        [self addSubview:viewContenedor];
        
        txtBuscar = [[UITextField alloc] initWithFrame:CGRectMake(20, 20, 220, 20)];
        [txtBuscar setBackgroundColor:[UIColor whiteColor]];
        [viewContenedor addSubview:txtBuscar];
        
        BotonNoticiaView *btnNacional = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(290, 20, 220, 225)];
        [btnNacional setTipoNoticia:@"NACIONAL"];
        [btnNacional setResumenNoticia:@"Debatiré con candidatos, no con aspirantes: EPN"];
        [btnNacional setTag:50];
        [btnNacional setImgFondo:[UIImage imageNamed:@"fondo1.png"]];
        [btnNacional setImgNoticia:[UIImage imageNamed:@"nacionalmenu.jpg"]];
        [viewContenedor addSubview:btnNacional];    
        [btnNacional release];
        btnNacional = nil;
        
        BotonNoticiaView *btnInternacional = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(530, 20, 220, 225)];
        [btnInternacional setTipoNoticia:@"INTERNACIONAL"];
        [btnInternacional setResumenNoticia:@"Suspenden de nuevo, búsqueda de desaparecidos"];
        [btnInternacional setTag:51];
        [btnInternacional setImgFondo:[UIImage imageNamed:@"fondo2.png"]];
        [btnInternacional setImgNoticia:[UIImage imageNamed:@"internacionalmenu.jpg"]];
        [viewContenedor addSubview:btnInternacional];
        [btnInternacional release];
        btnInternacional = nil;

        BotonNoticiaView *btnFinanzas = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(770, 20, 220, 225)];
        [btnFinanzas setTipoNoticia:@"FINANZAS"];
        [btnFinanzas setResumenNoticia:@"Dólar se vende hasta en $13.60 en el AICM"];
        [btnFinanzas setTag:52];
        [btnFinanzas setImgFondo:[UIImage imageNamed:@"fondo3.png"]];
        [btnFinanzas setImgNoticia:[UIImage imageNamed:@"finanzasmenu.jpg"]];
        [viewContenedor addSubview:btnFinanzas];
        [btnFinanzas release];
        btnFinanzas = nil;
        
        BotonNoticiaView *btnDeportes = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(290, 270, 220, 225)];
        [btnDeportes setTipoNoticia:@"DEPORTES"];
        [btnDeportes setResumenNoticia:@"Melissa Torres ¿Existe la maldicón del grand Slam?"];
        [btnDeportes setTag:53];
        [btnDeportes setImgFondo:[UIImage imageNamed:@"fondo4.png"]];
        [btnDeportes setImgNoticia:[UIImage imageNamed:@"deportesmenu.jpg"]];
        [viewContenedor addSubview:btnDeportes];
        [btnDeportes release];
        btnDeportes = nil;
        
        BotonNoticiaView *btnEspectaculos = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(530, 270, 220, 225)];
        [btnEspectaculos setTipoNoticia:@"ESPECTACULOS"];
        [btnEspectaculos setResumenNoticia:@"Médico de Jackson no pagará restitución a familiares"];
        [btnEspectaculos setTag:54];
        [btnEspectaculos setImgFondo:[UIImage imageNamed:@"fondo1.png"]];
        [btnEspectaculos setImgNoticia:[UIImage imageNamed:@"ewspectaculosmenu.jpg"]];
        [viewContenedor addSubview:btnEspectaculos];
        [btnEspectaculos release];
        btnEspectaculos = nil;
        
        BotonNoticiaView *btnAlgoBueno = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(770, 270, 220, 225)];
        [btnAlgoBueno setTipoNoticia:@"ALGO BUENO QUE CONTAR"];
        [btnAlgoBueno setResumenNoticia:@"Debatiré con candidatos, no con aspirantes: EPN"];
        [btnAlgoBueno setTag:55];
        [btnAlgoBueno setImgFondo:[UIImage imageNamed:@"fondo2.png"]];
        [btnAlgoBueno setImgNoticia:[UIImage imageNamed:@"algobuenomenu.jpg"]];
        [viewContenedor addSubview:btnAlgoBueno];
        [btnAlgoBueno release];
        btnAlgoBueno = nil;
        
        BotonNoticiaView *btnDenuncia = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(20, 270, 220, 225)];
        [btnDenuncia setTipoNoticia:@"DENUNCIA"];
        [btnDenuncia setResumenNoticia:@"Bache en periferico causa accidente"];
        [btnDenuncia setTag:56];
        [btnDenuncia setImgFondo:[UIImage imageNamed:@"fondo4.png"]];
        [btnDenuncia setImgNoticia:[UIImage imageNamed:@"denunciamenu.jpg"]];
        [viewContenedor addSubview:btnDenuncia];
        [btnDenuncia release];
        btnDenuncia = nil;
        
        UIImage *imgBtn200 = [UIImage imageNamed:@"boton200km.png"];
        UIButton *btn200 = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn200 setFrame:CGRectMake(20, 105, imgBtn200.size.width, imgBtn200.size.height)];
        [btn200 setContentMode:UIViewContentModeScaleToFill];
        [btn200 setImage:imgBtn200 forState:UIControlStateNormal];
        [viewContenedor addSubview:btn200];
        
        UIImage *imgBtnSeguimiento = [UIImage imageNamed:@"botonnoticiasseguimiento.png"];
        UIButton *btnSeguimiento = [UIButton buttonWithType:UIButtonTypeCustom];
        [btnSeguimiento setFrame:CGRectMake(20, 153, imgBtnSeguimiento.size.width, imgBtnSeguimiento.size.height)];
        [btnSeguimiento setContentMode:UIViewContentModeScaleToFill];
        [btnSeguimiento setImage:imgBtnSeguimiento forState:UIControlStateNormal];
        [viewContenedor addSubview:btnSeguimiento];
        
        UIImage *imgBtnConfiguracion = [UIImage imageNamed:@"botonconfiguracion.png"];
        UIButton *btnConfiguracion = [UIButton buttonWithType:UIButtonTypeCustom];
        [btnConfiguracion setFrame:CGRectMake(20, 201, imgBtnConfiguracion.size.width, imgBtnConfiguracion.size.height)];
        [btnConfiguracion setImage:imgBtnConfiguracion forState:UIControlStateNormal];
        [btnConfiguracion setContentMode:UIViewContentModeScaleToFill];
        [btnConfiguracion addTarget:self action:@selector(configuracionClic) forControlEvents:UIControlEventTouchUpInside];
        [viewContenedor addSubview:btnConfiguracion];
        
        UIImage *imgBtnBuscar = [UIImage imageNamed:@"busquedamenu.png"];
        UIButton *btnBuscar = [UIButton buttonWithType:UIButtonTypeCustom];
        [btnBuscar setFrame:CGRectMake(20, 20, imgBtnBuscar.size.width, imgBtnBuscar.size.height)];
        [btnBuscar setImage:imgBtnBuscar forState:UIControlStateNormal];
        [btnBuscar setContentMode:UIViewContentModeScaleToFill];
        [viewContenedor addSubview:btnBuscar];
        
        lblPortada = [[UILabel alloc] initWithFrame:CGRectMake(0, 495, self.frame.size.width, 41)];
        [lblPortada setText:@"               PORTADA"];
        [lblPortada setFont:[Constantes Helvetica67MediumCondensed:22]];
        [lblPortada setNumberOfLines:1];
        [lblPortada setBackgroundColor:[UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1]];
        [lblPortada setTextColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1]];
        [viewContenedor addSubview:lblPortada];
        
        lblFecha = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width - 320, 495, 320, 41)];
        [lblFecha setText:@"México D.F., viernes 20 de Enero 2012"];
        [lblFecha setFont:[Constantes Helvetica57Condensed:16]];
        [lblFecha setNumberOfLines:1];
        [lblFecha setBackgroundColor:[UIColor clearColor]];
        [lblFecha setTextColor:[UIColor colorWithRed:0.59608 green:0.59608 blue:0.59608 alpha:1]];
        [viewContenedor addSubview:lblFecha];
    }
    return self; 
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    //[self hideMenu];
    NSLog(@"Lolo");

}

-(void) showMenu{

    [UIView animateWithDuration:0.6 animations:^{
        [self setCenter:CGPointMake(self.center.x, 374)];
    }];

}

-(void) hideMenu{

    [UIView animateWithDuration:0.6 animations:^{
        [self setCenter:CGPointMake(self.center.x, -374)];
    }];

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

}

-(void) configuracionClic{
    [delegate configuracionClic];
}

-(void) dealloc{
    
    [viewContenedor release];
    viewContenedor = nil;
    [txtBuscar release];
    txtBuscar = nil;
    [lblPortada release];
    lblPortada = nil;
    
    delegate = nil;
    [super dealloc];

}

@end
