//
//  ClimaView.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 13/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "ClimaView.h"
#import "Constantes.h"
#import "BotonClimaView.h"

@implementation ClimaView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        [self setUserInteractionEnabled:YES];
        UIImageView *imgFondo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fondoclima.png"]];
        [self addSubview:imgFondo];
        [imgFondo release];
        imgFondo = nil;
        
        UILabel *lblTitulo = [[UILabel alloc] initWithFrame:CGRectMake(0, 13, frame.size.width, 30)];
        [lblTitulo setText:@"EL CLIMA"];
        [lblTitulo setFont:[Constantes HelveticaNue:30]];
        [lblTitulo setTextColor:[UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1]];
        [lblTitulo setTextAlignment:UITextAlignmentCenter];
        [lblTitulo setBackgroundColor:[UIColor clearColor]];
        [self addSubview:lblTitulo];
        [lblTitulo release];
        lblTitulo = nil;
        
        UIImageView *imgBusqueda = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"busquedaclima.png"]];
        [imgBusqueda setFrame:CGRectMake(5, 45, imgBusqueda.frame.size.width, imgBusqueda.frame.size.height)];
        [self addSubview:imgBusqueda];
        
        lblFecha = [[UILabel alloc] initWithFrame:CGRectMake(imgBusqueda.frame.size.width+imgBusqueda.frame.origin.x, imgBusqueda.frame.origin.y, frame.size.width-imgBusqueda.frame.size.width-imgBusqueda.frame.origin.x, imgBusqueda.frame.size.height)];
        [lblFecha setText:@"Lunes 13 de Febrero, 2012  "];
        [lblFecha setBackgroundColor:[UIColor clearColor]];
        [lblFecha setFont:[Constantes HelveticaNueCondensed:13]];
        [lblFecha setTextColor:[UIColor colorWithRed:0.27843137 green:0.27843137 blue:0.27843137 alpha:1]];
        [lblFecha setTextAlignment:UITextAlignmentRight];
        [self addSubview:lblFecha]; 
        
        [imgBusqueda release];
        imgBusqueda = nil;
        
        BotonClimaView *dia1 = [[BotonClimaView alloc] initWithFrame:CGRectMake(15, lblFecha.frame.origin.y + lblFecha.frame.size.height+15, 378, 52)];
        [dia1 setTiempo:[UIImage imageNamed:@"solconlluvia.png"]];
        [dia1 setTemperatura:@"20ºC"];
        [dia1 setFecha:@"Viernes 20"];
        [dia1 setCiudad:@"Mexico DF"];
        [dia1 setFondo:[UIImage imageNamed:@"highlightclima.png"]];
        [self addSubview:dia1];

        
        BotonClimaView *dia2 = [[BotonClimaView alloc] initWithFrame:CGRectMake(15, dia1.frame.origin.y + dia1.frame.size.height, 378, 52)];
        [dia2 setTiempo:[UIImage imageNamed:@"sol.png"]];
        [dia2 setTemperatura:@"19ºC"];
        [dia2 setFecha:@"Sabado 21"];
        [dia2 setCiudad:@"Mexico DF"];
        [self addSubview:dia2];
        
        BotonClimaView *dia3 = [[BotonClimaView alloc] initWithFrame:CGRectMake(15, dia2.frame.origin.y + dia2.frame.size.height, 378, 52)];
        [dia3 setTiempo:[UIImage imageNamed:@"tormenta.png"]];
        [dia3 setTemperatura:@"11ºC"];
        [dia3 setFecha:@"Domingo 22"];
        [dia3 setCiudad:@"Mexico DF"];
        [self addSubview:dia3];
        
        BotonClimaView *dia4 = [[BotonClimaView alloc] initWithFrame:CGRectMake(15, dia3.frame.origin.y + dia3.frame.size.height, 378, 52)];
        [dia4 setTiempo:[UIImage imageNamed:@"nublado.png"]];
        [dia4 setTemperatura:@"21ºC"];
        [dia4 setFecha:@"Lunes 23"];
        [dia4 setCiudad:@"Mexico DF"];
        [self addSubview:dia4];
        
        [dia1 release];
        dia1 = nil;
        
        [dia2 release];
        dia2 = nil;
        
        [dia3 release];
        dia3 = nil;
        

        
        UIImageView *btnElegirCiudad = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"botonelegirciudad.png"]];
        [btnElegirCiudad setFrame:CGRectMake(15, dia4.frame.origin.y + dia4.frame.size.height+5, btnElegirCiudad.frame.size.width, btnElegirCiudad.frame.size.height)];
        [self addSubview:btnElegirCiudad];
        [btnElegirCiudad release];
        btnElegirCiudad = nil;
        
        [dia4 release];
        dia4 = nil;
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    
    [super drawRect:rect];
    /*NSInteger posX = 70;
    
    CGPoint triangleHeadPoint = CGPointMake(posX, rect.size.height);
    float triangleHeight = 20;
    float triangleWidth = 30;
    float strokeWidth = 1.0;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, strokeWidth);   
    
    CGContextBeginPath(context);
    
    float currentX = triangleHeadPoint.x;
    float currentY = triangleHeadPoint.y;
    
    CGContextMoveToPoint(context, currentX, currentY);
    
    currentX += (triangleWidth / 2.0);
    currentY -= triangleHeight;
    CGContextAddLineToPoint(context, currentX, currentY);
    
    currentX = rect.size.width;
    CGContextAddLineToPoint(context, currentX, currentY);
    
    currentY = rect.origin.y;
    CGContextAddLineToPoint(context, currentX, currentY);
    
    currentX = rect.origin.x;
    CGContextAddLineToPoint(context, currentX, currentY);
    
    currentY = triangleHeadPoint.y -triangleHeight;
    CGContextAddLineToPoint(context, currentX, currentY);
    
    currentX = triangleHeadPoint.x- (triangleWidth / 2.0);
    CGContextAddLineToPoint(context, currentX, currentY);
    
    CGContextClosePath(context);
        
    [[UIColor whiteColor] setFill];
    [[UIColor colorWithRed:0.09411765 green:0.39607843 blue:0.49803922 alpha:1] setStroke];
    
    CGContextDrawPath(context, kCGPathFillStroke);
    
    */
    

    
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{

    [self removeFromSuperview];
}

-(void) dealloc{
    [lblFecha release];
    lblFecha = nil;
    [super dealloc];
}

@end
