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
        
        CheckBoxView *cckNacional = [[CheckBoxView alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
        [self addSubview:cckNacional];
        [cckNacional release];
        cckNacional =nil;
        
    }
    return self;
}

@end
