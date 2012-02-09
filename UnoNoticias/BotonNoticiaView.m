//
//  BotonNoticiaView.m
//  UnoNoticias
//
//  Created by Rogelio Adrian Hernandez B. on 1/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BotonNoticiaView.h"

@implementation BotonNoticiaView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        imgFondo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,frame.size.width, frame.size.height)];
        [imgFondo setBackgroundColor:[UIColor yellowColor]];
        [self addSubview:imgFondo];
        
        imgnoticia = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, 146)];
        [imgnoticia setBackgroundColor:[UIColor purpleColor]];
        [self addSubview:imgnoticia];
        
        lblTipoNoticia = [[UILabel alloc] initWithFrame:CGRectMake(10, 150, frame.size.width - 30, 15)];
        [lblTipoNoticia setText:@"Noticia"];
        [lblTipoNoticia setFont:[UIFont fontWithName:@"Arial" size:20]];
        [lblTipoNoticia setBackgroundColor:[UIColor clearColor]];
        [self addSubview:lblTipoNoticia];
        
        lblResumen = [[UILabel alloc] initWithFrame:CGRectMake(10, 170, frame.size.width - 30, 45)];
        [lblResumen setText:@"Bache en periferico causa un accidente"];
        [lblResumen setFont:[UIFont fontWithName:@"Arial" size:15]];
        [lblResumen setNumberOfLines:2];
        [lblResumen setBackgroundColor:[UIColor clearColor]];
        [self addSubview:lblResumen];
        
    }
    return self;
}

-(void) setTipoNoticia:(NSString *) noticia{
    [lblTipoNoticia setText:noticia];
}
-(void) setResumenNoticia:(NSString *) resumen{
    [lblResumen setText:resumen];
}

-(void) dealloc{

    [imgFondo release];
    imgFondo = nil;
    
    [imgnoticia release];
    imgnoticia = nil;
    
    [lblTipoNoticia release];
    lblTipoNoticia = nil;
    
    [lblResumen release];
    lblResumen = nil;
    
    [super dealloc];
}

@end
