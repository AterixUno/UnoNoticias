//
//  MenuView.m
//  UnoNoticias
//
//  Created by Rogelio Adrian Hernandez B. on 1/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MenuView.h"
#import "BotonNoticiaView.h"

@implementation MenuView
@synthesize delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.3]];
        [self setAutoresizesSubviews:YES];
        [self setAutoresizingMask:UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleWidth];
        
        viewContenedor = [[UIView alloc] initWithFrame:CGRectMake(0, frame.size.height - 540,frame.size.width , 540)];
        [viewContenedor setUserInteractionEnabled:TRUE];
        [viewContenedor setBackgroundColor:[UIColor blueColor]];
        [self addSubview:viewContenedor];
        
        txtBuscar = [[UITextField alloc] initWithFrame:CGRectMake(20, 20, 220, 20)];
        [txtBuscar setBackgroundColor:[UIColor whiteColor]];
        [viewContenedor addSubview:txtBuscar];
        
        BotonNoticiaView *btnNacional = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(290, 20, 220, 225)];
        [btnNacional setTipoNoticia:@"NACIONAL"];
        [btnNacional setResumenNoticia:@"Debatiré con candidatos, no con aspirantes: EPN"];
        [btnNacional setTag:50];
        [viewContenedor addSubview:btnNacional];
        [btnNacional release];
        btnNacional = nil;
        
        BotonNoticiaView *btnInternacional = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(530, 20, 220, 225)];
        [btnInternacional setTipoNoticia:@"INTERNACIONAL"];
        [btnInternacional setResumenNoticia:@"Suspenden de nuevo, búsqueda de desaparecidos"];
        [btnInternacional setTag:51];
        [viewContenedor addSubview:btnInternacional];
        [btnInternacional release];
        btnInternacional = nil;

        BotonNoticiaView *btnFinanzas = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(770, 20, 220, 225)];
        [btnFinanzas setTipoNoticia:@"FINANZAS"];
        [btnFinanzas setResumenNoticia:@"Dólar se vende hasta en $13.60 en el AICM"];
        [btnFinanzas setTag:52];
        [viewContenedor addSubview:btnFinanzas];
        [btnFinanzas release];
        btnFinanzas = nil;
        
        BotonNoticiaView *btnDeportes = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(20, 270, 220, 225)];
        [btnDeportes setTipoNoticia:@"DEPORTES"];
        [btnDeportes setResumenNoticia:@"Melissa Torres ¿Existe la maldicón del grand Slam?"];
        [btnDeportes setTag:50];
        [viewContenedor addSubview:btnDeportes];
        [btnDeportes release];
        btnDeportes = nil;
        
        BotonNoticiaView *btnEspectacilos = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(290, 270, 220, 225)];
        [btnEspectacilos setTipoNoticia:@"ESPECTACULOS"];
        [btnEspectacilos setResumenNoticia:@"Médico de Jackson no pagará restitución a familiares"];
        [btnEspectacilos setTag:50];
        [viewContenedor addSubview:btnEspectacilos];
        [btnEspectacilos release];
        btnEspectacilos = nil;
        
        BotonNoticiaView *btnAlgoBueno = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(530, 270, 220, 225)];
        [btnAlgoBueno setTipoNoticia:@"ALGO BUENO QUE CONTAR"];
        [btnAlgoBueno setResumenNoticia:@"Debatiré con candidatos, no con aspirantes: EPN"];
        [btnAlgoBueno setTag:50];
        [viewContenedor addSubview:btnAlgoBueno];
        [btnAlgoBueno release];
        btnAlgoBueno = nil;
        
        BotonNoticiaView *btnDenuncia = [[BotonNoticiaView alloc] initWithFrame:CGRectMake(770, 270, 220, 225)];
        [btnDenuncia setTipoNoticia:@"DENUNCIA"];
        [btnDenuncia setResumenNoticia:@"Bache en periferico causa accidente"];
        [btnDenuncia setTag:50];
        [viewContenedor addSubview:btnDenuncia];
        [btnDenuncia release];
        btnDenuncia = nil;
        
        UIButton *btn200 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btn200 setFrame:CGRectMake(20, 111, 220, 40)];
        [btn200 setTitle:@"Noticias 200Km al rededor" forState:UIControlStateNormal];
        [viewContenedor addSubview:btn200];
        
        UIButton *btnSegimiento = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btnSegimiento setFrame:CGRectMake(20, 158, 220, 40)];
        [btnSegimiento setTitle:@"Noticias con seguimiento" forState:UIControlStateNormal];
        [viewContenedor addSubview:btnSegimiento];
        
        UIButton *btnConfiguracion = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btnConfiguracion setFrame:CGRectMake(20, 205, 220, 40)];
        [btnConfiguracion setTitle:@"Configuración" forState:UIControlStateNormal];
        [viewContenedor addSubview:btnConfiguracion];
        
        
        
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



-(void) dealloc{
    
    [viewContenedor release];
    viewContenedor = nil;
    [txtBuscar release];
    txtBuscar = nil;
    
    delegate = nil;
    [super dealloc];

}

@end
