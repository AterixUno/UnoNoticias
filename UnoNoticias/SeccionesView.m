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
        
        UILabel *lblTitulo = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, 40)];
        [lblTitulo setText:@"SECCIÓN DE SELECCIONES"];
        [lblTitulo setBackgroundColor:[UIColor clearColor]];
        [lblTitulo setTextColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1]];
        [lblTitulo setTextAlignment:UITextAlignmentLeft];
        [lblTitulo setFont:[Constantes Helvetica77BoldCondensed:31]];
        [self addSubview:lblTitulo];
        [lblTitulo release];
        lblTitulo = nil;
        
        UILabel *lblInstrucciones = [[UILabel alloc] initWithFrame:CGRectMake(0, 37, frame.size.width, 80)];
        [lblInstrucciones setText:@"Selecciona deacuerdo a tus gustos las noticias que quieres revisar el día de hoy y las que quieres descartar. Al terminar has tap en listo."];
        [lblInstrucciones setBackgroundColor:[UIColor clearColor]];
        [lblInstrucciones setTextColor:[UIColor grayColor]];
        [lblInstrucciones setTextAlignment:UITextAlignmentLeft];
        [lblInstrucciones setFont:[Constantes Helvetica57Condensed:21]];
        [lblInstrucciones setNumberOfLines:3];
        [self addSubview:lblInstrucciones];
        [lblInstrucciones release];
        lblInstrucciones = nil;
        
        contenedorBotonesView = [[UIView alloc] initWithFrame:CGRectMake(0, 125, frame.size.width, 350)];
        [contenedorBotonesView setBackgroundColor:[UIColor colorWithRed:0.796078 green:0.796078 blue:0.796078 alpha:0.796078]];
        [contenedorBotonesView setUserInteractionEnabled:YES];
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
        
        UIButton *btnListo = [[UIButton alloc] initWithFrame:CGRectMake(frame.size.width - 103,480 , 103, 42)];
        [btnListo setImage:[UIImage imageNamed:@"botonListo"] forState:UIControlStateNormal];
        [self addSubview:btnListo];
        [btnListo release];
        btnListo = nil;

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
