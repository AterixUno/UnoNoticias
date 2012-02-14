//
//  BotonSeccionaNoticaView.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 13/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "BotonSeccionaNoticaView.h"
#import "Constantes.h"

@implementation BotonSeccionaNoticaView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

-(id) initWithFrame:(CGRect)frame Fuente:(NSString *) strFuente{
    self = [super initWithFrame:frame];
    if (self){
    
        if (strFuente || [strFuente isEqualToString:@""]){
            lblFuente = [[UILabel alloc] initWithFrame:CGRectMake(0, 210, self.frame.size.width, 20)];
            [lblFuente setText:strFuente];
            [lblFuente setTextAlignment:UITextAlignmentCenter];
            [lblFuente setNumberOfLines:1];
            [lblFuente setFont:[Constantes HelveticaNueCondensed:15]];
            [lblFuente setBackgroundColor:[UIColor clearColor]];
            [lblFuente setTextColor:[UIColor colorWithRed:0.10196 green:0.45882 blue:0.73333 alpha:1]];
            [self addSubview:lblFuente];
        }
        
        lblTipoNoticia = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, self.frame.size.width, 20)];
        [lblTipoNoticia setText:@"INTERNACIONAL"];
        [lblTipoNoticia setTextAlignment:UITextAlignmentCenter];
        [lblTipoNoticia setNumberOfLines:1];
        [lblTipoNoticia setFont:[Constantes HelveticaNueCondensed:21]];
        [lblTipoNoticia setBackgroundColor:[UIColor clearColor]];
        [lblTipoNoticia setTextColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1]];
        [self addSubview:lblTipoNoticia];
        
        lblTituloNoticia = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.frame.size.width, 180)];
        [lblTituloNoticia setText:@"Suspenden de nuevo búsqueda de desaparecidos en crucero"];
        [lblTituloNoticia setTextAlignment:UITextAlignmentCenter];
        [lblTituloNoticia setNumberOfLines:3];
        [lblTituloNoticia setFont:[Constantes HelveticaNue:48]];
        [lblTituloNoticia setBackgroundColor:[UIColor clearColor]];
        [lblTituloNoticia setShadowOffset:CGSizeMake(1, 1)];
        [lblTituloNoticia setTextColor:[UIColor colorWithRed:0.72549 green:0.69804 blue:0.69804 alpha:1]];
        [self addSubview:lblTituloNoticia];

        imgNoticia = [[UIImageView alloc] initWithFrame:CGRectMake(0, 230, 500, 200 )];
        [imgNoticia setContentMode:UIViewContentModeTopLeft];
        [imgNoticia setBackgroundColor:[UIColor blueColor]];
        [imgNoticia setImage:[UIImage imageNamed:@"internacionalmenu.jpg"]];
        [self addSubview:imgNoticia];
        //[imgNoticia setImage:
                                                        
        /*imgnoticia = [[UIImageView alloc] init];
                                       [imgnoticia setContentMode:UIViewContentModeTop];
                                                         [self addSubview:imgnoticia];*/
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect{

    [super drawRect:rect];

}

-(void) awakeFromNib{

}

-(void) dealloc{
    [lblFuente release];
    lblFuente = nil;
    
    [lblTipoNoticia release];
    lblFuente = nil;
    
    [lblTituloNoticia release];
    lblTituloNoticia = nil;
    
    [imgNoticia release];
    imgNoticia = nil;
    
    [super dealloc];
}


@end
