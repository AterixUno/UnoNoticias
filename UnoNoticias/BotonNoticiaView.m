//
//  BotonNoticiaView.m
//  UnoNoticias
//
//  Created by Rogelio Adrian Hernandez B. on 1/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BotonNoticiaView.h"
#import "Constantes.h"

@implementation BotonNoticiaView

- (id)initWithFrame:(CGRect)frame /* icializa esta clase con un frame */
{
    self = [super initWithFrame:frame];
    if (self) {
        
        imgFondo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,frame.size.width, frame.size.height)];
        [imgFondo setContentMode:UIViewContentModeBottomRight];
        [self addSubview:imgFondo];
        
        imgnoticia = [[UIImageView alloc] init];
        [imgnoticia setContentMode:UIViewContentModeTop];
        [self addSubview:imgnoticia];
        
        lblTipoNoticia = [[UILabel alloc] initWithFrame:CGRectMake(10, 150, frame.size.width - 30, 30)];
        [lblTipoNoticia setText:@""];
        [lblTipoNoticia setFont:[Constantes Helvetica67MediumCondensed:22]];
        [lblTipoNoticia setBackgroundColor:[UIColor clearColor]];
        [lblTipoNoticia setTextColor:[UIColor blackColor]];
        [lblTipoNoticia setShadowColor:[UIColor colorWithRed:0.73725 green:0.69804 blue:0.69804 alpha:1]];
        [lblTipoNoticia setShadowOffset:CGSizeMake(1, 1)];
        [self addSubview:lblTipoNoticia];
        
        lblResumen = [[UILabel alloc] initWithFrame:CGRectMake(10, 175, frame.size.width - 30, 45)];
        [lblResumen setText:@""];
        [lblResumen setFont:[Constantes Helvetica57Condensed:16]];
        [lblResumen setNumberOfLines:2];
        [lblResumen setBackgroundColor:[UIColor clearColor]];
        [lblResumen setTextColor:[UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1]];
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

-(void) setImgFondo:(UIImage *) fondo{
    [imgFondo setImage:fondo];
}

-(void) setImgNoticia:(UIImage *) noticia{
    [imgnoticia setImage:noticia];
    [imgnoticia setFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
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
