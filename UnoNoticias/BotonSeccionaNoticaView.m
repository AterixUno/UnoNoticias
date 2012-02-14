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

-(id) initWithFrame:(CGRect)frame Fuente:(NSString *) strFuente Foto:(UIImage *)foto{
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
        [lblTipoNoticia setNumberOfLines:0];
        [lblTipoNoticia setFont:[Constantes HelveticaNueCondensed:21]];
        [lblTipoNoticia setBackgroundColor:[UIColor clearColor]];
        [lblTipoNoticia setTextColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1]];
        [self addSubview:lblTipoNoticia];
        
        lblTituloNoticia = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.frame.size.width, 180)];
        [lblTituloNoticia setText:@"Suspenden de nuevo búsqueda de desaparecidos en crucero"];
        [lblTituloNoticia setTextAlignment:UITextAlignmentCenter];
        [lblTituloNoticia setNumberOfLines:0];
        [lblTituloNoticia setFont:[Constantes HelveticaNue:48]];
        [lblTituloNoticia setBackgroundColor:[UIColor clearColor]];
        [lblTituloNoticia setShadowOffset:CGSizeMake(1, 1)];
        [lblTituloNoticia setTextColor:[UIColor blackColor]];
        [self addSubview:lblTituloNoticia];
        
        imgNoticia = [[UIImageView alloc] initWithImage:foto];
        [imgNoticia setFrame:CGRectMake(10, 230, imgNoticia.frame.size.width, imgNoticia.frame.size.height)];
        [imgNoticia setContentMode:UIViewContentModeTopLeft];
        [self addSubview:imgNoticia];
        
        //CGRect frame;
        //CGRectMake(0, 230, 500, 200 )
        //frame = imgNoticia.frame;
        //frame.origin.y = 230;
        //[imgNoticia setFrame:frame];
        //[imgNoticia setBackgroundColor:[UIColor blueColor]];
        //[imgNoticia setImage:[UIImage imageNamed:@"concordiaMediano.jpg"]];
        //[imgNoticia setImage:
        /*imgnoticia = [[UIImageView alloc] init];
                                       [imgnoticia setContentMode:UIViewContentModeTop];
                                                         [self addSubview:imgnoticia];*/
        
        
        
        //imageNamed:@"comentarios.png";
        
        imgComentarios = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"comentarios.png"]];
        [imgComentarios setFrame:CGRectMake(self.frame.size.width - imgComentarios.frame.size.width - 10, 230, imgComentarios.frame.size.width, imgComentarios.frame.size.height)];
        [imgComentarios setContentMode:UIViewContentModeTopLeft];
        [self addSubview:imgComentarios];
        
        lblComentarios = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width - 65, 230, 50, 30)];
        [lblComentarios setText:@"2"];
        [lblComentarios setTextAlignment:UITextAlignmentRight];
        [lblComentarios setNumberOfLines:0];
        [lblComentarios setFont:[Constantes HelveticaNueCondensed:31]];
        [lblComentarios setBackgroundColor:[UIColor clearColor]];
        [lblComentarios setTextColor:[UIColor whiteColor]];
        [self addSubview:lblComentarios];
        
        lblNoticia = [[UILabel alloc] initWithFrame:CGRectMake(imgNoticia.frame.size.width + 20, 270, self.frame.size.width - 30 - imgNoticia.frame.size.width, imgNoticia.frame.size.height - 40)];
        [lblNoticia setText:@"La búsqueda de la veintena de desaparecidos en el naufragio del \"Costa Concordia\", ocurrido el pasado viernes frente a la isla italiana del Giglio, se suspendio debido a que los movimientos continuos del crucero ponen en"];
        [lblNoticia setTextAlignment:UITextAlignmentLeft];
        [lblNoticia setNumberOfLines:0];
        [lblNoticia setFont:[Constantes HelveticaNue:16]];
        [lblNoticia setBackgroundColor:[UIColor clearColor]];
        [lblNoticia setTextColor:[UIColor colorWithRed:0.30196 green:0.30196 blue:0.30196 alpha:1]];
        [self addSubview:lblNoticia];
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect{

    [super drawRect:rect];

}

-(void) awakeFromNib{

}

-(void) setTipoNoticia:(NSString *) tipoNoticia{

    [lblTipoNoticia setText:tipoNoticia];
}

-(void) setTitulo:(NSString *) titulo{
    [lblTituloNoticia setText:titulo];
}

-(void) setComentarios:(NSString *) comentarios{
    [lblComentarios setText:comentarios];
}

-(void) setNoticia:(NSString *) noticia{
    [lblNoticia setText:noticia];
}

-(void) setFoto:(UIImage *) foto{
    [imgNoticia setImage:foto];
}

-(void) setTamano:(NSInteger) tamano{
    [lblTituloNoticia setFont:[Constantes HelveticaNue:tamano]];
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
    
    [imgComentarios release];
    imgComentarios = nil;
    
    [lblComentarios release];
    lblComentarios = nil;
    
    [super dealloc];
}


@end
