//
//  BotonClimaView.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 13/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "BotonClimaView.h"
#import "Constantes.h"

@implementation BotonClimaView

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        [self setBackgroundColor:[UIColor clearColor]];
            
        imgTiempo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 55, 52)];
        [imgTiempo setContentMode:UIViewContentModeCenter];
        [self addSubview:imgTiempo];
        
        lblTemperatura = [[UILabel alloc] initWithFrame:CGRectMake(52, 0, 50, 52)];
        [lblTemperatura setText:@""];
        [lblTemperatura setFont:[Constantes Helvetica67MediumCondensedOblique:21]];
        [lblTemperatura setTextColor:[UIColor blackColor]];
        [lblTemperatura setBackgroundColor:[UIColor clearColor]];
        [lblTemperatura setTextAlignment:UITextAlignmentCenter];
        [self addSubview:lblTemperatura];
        
        lblFecha = [[UILabel alloc] initWithFrame:CGRectMake(104, 0, 115, 52)];
        [lblFecha setText:@""];
        [lblFecha setFont:[Constantes Helvetica67MediumCondensed:21]];
        [lblFecha setTextColor:[UIColor colorWithRed:0.1019 green:0.4588 blue:0.73333 alpha:1]];
        [lblFecha setBackgroundColor:[UIColor clearColor]];
        [lblFecha setTextAlignment:UITextAlignmentCenter];
        [self addSubview:lblFecha];
        
        lblCiudad = [[UILabel alloc] initWithFrame:CGRectMake(214, 0, 150, 52)];
        [lblCiudad setText:@""];
        [lblCiudad setFont:[Constantes Helvetica57CondensedOblique:19]];
        [lblCiudad setTextColor:[UIColor colorWithRed:0.30196078 green:0.30196078 blue:0.30196078 alpha:1]];
        [lblCiudad setBackgroundColor:[UIColor clearColor]];
        [lblCiudad setTextAlignment:UITextAlignmentCenter];
        [self addSubview:lblCiudad];
        
    }
    
    return self;

}

- (void)drawRect:(CGRect)rect{
    
    [super drawRect:rect];
    

    float strokeWidth = 1.0;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, strokeWidth);   
    
    CGContextBeginPath(context);
    
    CGContextMoveToPoint(context, rect.origin.x + 5, rect.size.height-2);

    CGContextAddLineToPoint(context, rect.size.width - 5, rect.size.height-2);
    
    CGContextClosePath(context);
    
    [[UIColor whiteColor] setFill];
    [[UIColor colorWithRed:0.698039 green:0.698039 blue:0.698039 alpha:1] setStroke];
    
    CGContextDrawPath(context, kCGPathFillStroke);
    
    
}

-(void) setTiempo:(UIImage *) tiempo{
    [imgTiempo setImage:tiempo];
}

-(void) setTemperatura:(NSString *) temperatura{
    [lblTemperatura setText:temperatura];
}

-(void) setFecha:(NSString *) fecha{
    [lblFecha setText:fecha];
}
-(void) setCiudad:(NSString *) ciudad{
    [lblCiudad setText:ciudad];
}

-(void) setFondo:(UIImage *) fondo{
    if (!imgFondo){
        imgFondo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        [self insertSubview:imgFondo atIndex:0];
    }
    [imgFondo setImage:fondo];
}


-(void) dealloc{

    if (imgFondo){
        
        [imgFondo release];
        imgFondo = nil;
    
    }
    
    [imgTiempo release];
    imgTiempo = nil;
    [lblTemperatura release];
    lblTemperatura = nil;
    [lblFecha release];
    lblFecha = nil;
    [lblCiudad release];
    lblCiudad = nil;
    [super dealloc];

}

@end
