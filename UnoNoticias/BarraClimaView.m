//
//  BarraClimaView.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 08/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "BarraClimaView.h"
#import "Constantes.h"

@implementation BarraClimaView

-(id) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self){
    
    }
    
    return self;
}

-(id) init{
    self = [super init];
    if (self){
    
    }
    
    return self;
}

-(void) awakeFromNib{
    
    CGPoint origin;
    CGSize size;
    
    if (!imgTipoClima){
        
        imgTipoClima = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"solconlluvia.png"]];
        origin = CGPointMake(10,-10);
        size = imgTipoClima.frame.size;
        [imgTipoClima setFrame:CGRectMake(origin.x,origin.y, size.width, size.height)];
        [self addSubview:imgTipoClima];
    }
        
    if (!lblFecha){
        origin.x = imgTipoClima.frame.origin.x + imgTipoClima.frame.size.width + 10;
        origin.y = 0;
        size.width = 120;
        size.height=self.frame.size.height;
        lblFecha = [[UILabel alloc] initWithFrame:CGRectMake(origin.x, origin.y, size.width, size.height)];
        [lblFecha setText:@"VIE 20"];
        [lblFecha setFont:[Constantes HelveticaNue:40]];
        [lblFecha setTextColor:[UIColor colorWithRed:26.0/255.0 green:117.0/255.0 blue:187.0/255.0 alpha:1]];
        [lblFecha setBackgroundColor:[UIColor clearColor]];
        [self addSubview:lblFecha];
    
    }
    
    if (!lblTemperatura){
        origin.x = lblFecha.frame.origin.x + lblFecha.frame.size.width + 5;
        origin.y = 0;
        size.width = 50;
        size.height=self.frame.size.height/2;
        lblTemperatura = [[UILabel alloc] initWithFrame:CGRectMake(origin.x, origin.y, size.width, size.height)];
        [lblTemperatura setText:@"20ºC"];
        [lblTemperatura setFont:[Constantes HelveticaNue:19]];
        [lblTemperatura setTextColor:[UIColor blackColor]];
        [lblTemperatura setBackgroundColor:[UIColor clearColor]];
        [self addSubview:lblTemperatura];
    }
    
    if (!lblCiudad){
        origin.x = lblTemperatura.frame.origin.x;
        origin.y = lblTemperatura.frame.size.height;
        size.width = lblTemperatura.frame.size.width;
        size.height=lblTemperatura.frame.size.height;
        lblCiudad = [[UILabel alloc] initWithFrame:CGRectMake(origin.x, origin.y, size.width, size.height)];
        [lblCiudad setText:@"D.F."];
        [lblCiudad setFont:[Constantes HelveticaNueCondensed:16]];
        [lblTemperatura setTextColor:[UIColor blackColor]];
        [lblCiudad setBackgroundColor:[UIColor clearColor]];
        [self addSubview:lblCiudad];
    }
    
}



-(void) drawRect:(CGRect)rect{

    [super drawRect:rect];
    
    float strokeWidth = 1.0;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, strokeWidth);   
    
    CGContextBeginPath(context);
    
    float currentX = 250;
    float currentY = 5;
    
    CGContextMoveToPoint(context, currentX, currentY);
    
    currentY+=rect.size.height-5;
    CGContextAddLineToPoint(context, currentX, currentY);
    
    CGContextClosePath(context);
        
    [[UIColor blackColor] setFill];
    [[UIColor colorWithRed:0.09411765 green:0.39607843 blue:0.49803922 alpha:1] setStroke];
    
    CGContextDrawPath(context, kCGPathFillStroke);
    
}
-(void) dealloc{
    [imgTipoClima release];
    imgTipoClima = nil;
    
    [lblFecha release];
    lblFecha = nil;
    
    [lblTemperatura release];
    lblTemperatura = nil;
    
    [lblCiudad release];
    lblCiudad = nil;
    
    [super dealloc];
}


@end
