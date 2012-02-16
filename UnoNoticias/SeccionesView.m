//
//  SeccionesView.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 15/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "SeccionesView.h"
#import "Constantes.h"

@implementation SeccionesView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UILabel *lblTitulo = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 30)];
        [lblTitulo setText:@"SECCIÓN DE SELECCIONES"];
        [lblTitulo setBackgroundColor:[UIColor clearColor]];
        [lblTitulo setTextColor:[UIColor grayColor]];
        [lblTitulo setTextAlignment:UITextAlignmentLeft];
        [lblTitulo setFont:[Constantes HelveticaNue:30]];
        [self addSubview:lblTitulo];
        [lblTitulo release];
        lblTitulo = nil;
        
        UILabel *lblInstrucciones = [[UILabel alloc] initWithFrame:CGRectMake(0, 33, 500, 80)];
        [lblInstrucciones setText:@"Selecciona deacuerdo a tus gustos las noticias que quieres revisar el día de hoy y las que quieres descartar. Al terminar has tap en listo."];
        [lblInstrucciones setBackgroundColor:[UIColor clearColor]];
        [lblInstrucciones setTextColor:[UIColor grayColor]];
        [lblInstrucciones setTextAlignment:UITextAlignmentLeft];
        [lblInstrucciones setFont:[Constantes HelveticaNue:20]];
        [lblInstrucciones setNumberOfLines:3];
        [self addSubview:lblInstrucciones];
        [lblInstrucciones release];
        lblInstrucciones = nil;
        
        contenedorBotonesView = [[UIView alloc] initWithFrame:CGRectMake(0, 120, 500, 351)];
        [contenedorBotonesView setBackgroundColor:[UIColor grayColor]];
        [self addSubview:contenedorBotonesView];
        
        btnNacional = [[BotonSeccionView alloc] initWithFrame:CGRectMake(0, 1, contenedorBotonesView.frame.size.width, 49)];
        [btnNacional setImgSeccion:[UIImage imageNamed:@"nacional.png"]];
        [btnNacional setlblSeccion:@"Nacional"];
        [contenedorBotonesView addSubview:btnNacional];
        
        btnInternacional = [[BotonSeccionView alloc] initWithFrame:CGRectMake(0,51 , contenedorBotonesView.frame.size.width, 49)];
        [btnInternacional setImgSeccion:[UIImage imageNamed:@"internacional.png"]];
        [btnInternacional setlblSeccion:@"Internacional"];
        [contenedorBotonesView addSubview:btnInternacional];
        
        btnFinanzas = [[BotonSeccionView alloc] initWithFrame:CGRectMake(0,101 , contenedorBotonesView.frame.size.width, 49)];
        [btnFinanzas setImgSeccion:[UIImage imageNamed:@"finanzas.png"]];
        [btnFinanzas setlblSeccion:@"Finanzas"];
        [contenedorBotonesView addSubview:btnFinanzas];
        
        btnEspectaculos = [[BotonSeccionView alloc] initWithFrame:CGRectMake(0,151 , contenedorBotonesView.frame.size.width, 49)];
        [btnEspectaculos setImgSeccion:[UIImage imageNamed:@"espectaculos.png"]];
        [btnEspectaculos setlblSeccion:@"Espectaculos"];
        [contenedorBotonesView addSubview:btnEspectaculos];
        
        btnDeportes = [[BotonSeccionView alloc] initWithFrame:CGRectMake(0,201 , contenedorBotonesView.frame.size.width, 49)];
        [btnDeportes setImgSeccion:[UIImage imageNamed:@"deportes.png"]];
        [btnDeportes setlblSeccion:@"Deportes"];
        [contenedorBotonesView addSubview:btnDeportes];
        
        btnBuenoContar = [[BotonSeccionView alloc] initWithFrame:CGRectMake(0,251 , contenedorBotonesView.frame.size.width, 49)];
        [btnBuenoContar setImgSeccion:[UIImage imageNamed:@"algoquecontar.png"]];
        [btnBuenoContar setlblSeccion:@"Algo bueno que contar"];
        [contenedorBotonesView addSubview:btnBuenoContar];
        
        btnDenuncia = [[BotonSeccionView alloc] initWithFrame:CGRectMake(0,301 , contenedorBotonesView.frame.size.width, 49)];
        [btnDenuncia setImgSeccion:[UIImage imageNamed:@"denuncia.png"]];
        [btnDenuncia setlblSeccion:@"Denuncia"];
        [contenedorBotonesView addSubview:btnDenuncia];
        
        UIButton *btnListo = [[UIButton alloc] initWithFrame:CGRectMake(397,480 , 103, 42)];
        [btnListo setImage:[UIImage imageNamed:@"botonListo"] forState:UIControlStateNormal];
        [self addSubview:btnListo];
        
    
    }
    return self;
}

-(void) dealloc{

    [contenedorBotonesView release];
    contenedorBotonesView = nil;
    
    [btnNacional release];
    btnNacional = nil;
    
    [btnInternacional release];
    btnInternacional = nil;

    [btnFinanzas release];
    btnFinanzas = nil;
    
    [btnEspectaculos release];
    btnEspectaculos = nil;
    
    [btnDeportes release];
    btnDeportes = nil;
    
    [btnBuenoContar release];
    btnBuenoContar = nil;
    
    [btnDenuncia release];
    btnDenuncia = nil;
    
    [super dealloc];
}

@end
