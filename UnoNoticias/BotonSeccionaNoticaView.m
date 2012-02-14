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

-(id) initWithFrame:(CGRect)frame Fuente:(NSString *) strFuente Foto:(UIImage *)foto Relacionadas:(NSString *) strRelacionadas{
    self = [super initWithFrame:frame];
    if (self){
    
        if (strFuente || [strFuente isEqualToString:@""]){
            lblFuente = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width * 1/3 + 2, 210, self.frame.size.width * 2/3 - 2, 20)];
            [lblFuente setText:strFuente];
            [lblFuente setTextAlignment:UITextAlignmentLeft];
            [lblFuente setNumberOfLines:1];
            [lblFuente setFont:[Constantes HelveticaNue:15]];
            [lblFuente setBackgroundColor:[UIColor clearColor]];
            [lblFuente setTextColor:[UIColor colorWithRed:0.30196 green:0.30196 blue:0.30196 alpha:1]];
            [self addSubview:lblFuente];
            
            lblEFE = [[UILabel alloc] initWithFrame:CGRectMake(0, 210, self.frame.size.width * 1/3, 20)];
            [lblEFE setText:@"Fuente: EFE"];
            [lblEFE setTextAlignment:UITextAlignmentRight];
            [lblEFE setNumberOfLines:1];
            [lblEFE setFont:[Constantes HelveticaNue:15]];
            [lblEFE setBackgroundColor:[UIColor clearColor]];
            [lblEFE setTextColor:[UIColor colorWithRed:0.10196 green:0.45882 blue:0.73333 alpha:1]];
            [self addSubview:lblEFE];
        }
        
        lblTipoNoticia = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, self.frame.size.width, 20)];
        [lblTipoNoticia setTextAlignment:UITextAlignmentCenter];
        [lblTipoNoticia setNumberOfLines:0];
        [lblTipoNoticia setFont:[Constantes HelveticaNue:21]];
        [lblTipoNoticia setBackgroundColor:[UIColor clearColor]];
        [lblTipoNoticia setTextColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1]];
        [self addSubview:lblTipoNoticia];
        
        lblTituloNoticia = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.frame.size.width, 180)];
        [lblTituloNoticia setTextAlignment:UITextAlignmentCenter];
        [lblTituloNoticia setNumberOfLines:0];
        [lblTituloNoticia setFont:[Constantes HelveticaNue:52]];
        [lblTituloNoticia setBackgroundColor:[UIColor clearColor]];
        [lblTituloNoticia setShadowColor:[UIColor colorWithRed:0.72549 green:0.69804 blue:0.69804 alpha:1]];
        [lblTituloNoticia setShadowOffset:CGSizeMake(1, 1)];
        [lblTituloNoticia setTextColor:[UIColor blackColor]];
        [self addSubview:lblTituloNoticia];
        
        imgNoticia = [[UIImageView alloc] initWithImage:foto];
        [imgNoticia setFrame:CGRectMake(10, 230, imgNoticia.frame.size.width, imgNoticia.frame.size.height)];
        [imgNoticia setContentMode:UIViewContentModeTopLeft];
        [self addSubview:imgNoticia];
        
        if (strRelacionadas || [strRelacionadas isEqualToString:@""]){
            imgRelacionadas = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"relacionadas.png"]];
            [imgRelacionadas setFrame:CGRectMake(10, 230 + imgNoticia.frame.size.height - 40, imgRelacionadas.frame.size.width, imgRelacionadas.frame.size.height)];
            [imgRelacionadas setContentMode:UIViewContentModeTopLeft];
            [self addSubview:imgRelacionadas];
            
            lblRelacionadas = [[UILabel alloc] initWithFrame:CGRectMake(10, 230 + imgNoticia.frame.size.height - 40, 106, 32)];
            [lblRelacionadas setText:@"RELACIONADAS"];
            [lblRelacionadas setTextAlignment:UITextAlignmentCenter];
            [lblRelacionadas setNumberOfLines:1];
            [lblRelacionadas setFont:[Constantes HelveticaNue:13]];
            [lblRelacionadas setBackgroundColor:[UIColor clearColor]];
            [lblRelacionadas setTextColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1]];
            [lblRelacionadas setShadowColor:[UIColor colorWithRed:0.42745 green:0.41569 blue:0.41569 alpha:1]];
            [lblRelacionadas setShadowOffset:CGSizeMake(1, 1)];
            [self addSubview:lblRelacionadas];
            
            lblTotalRelacionadas = [[UILabel alloc] initWithFrame:CGRectMake(114, 230 + imgNoticia.frame.size.height - 40, 104, 32)];
            [lblTotalRelacionadas setText:strRelacionadas];
            [lblTotalRelacionadas setTextAlignment:UITextAlignmentCenter];
            [lblTotalRelacionadas setNumberOfLines:1];
            [lblTotalRelacionadas setFont:[Constantes HelveticaNue:13]];
            [lblTotalRelacionadas setBackgroundColor:[UIColor clearColor]];
            [lblTotalRelacionadas setTextColor:[UIColor whiteColor]];
            [self addSubview:lblTotalRelacionadas];
        }
        
        imgComentarios = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"comentarios.png"]];
        [imgComentarios setFrame:CGRectMake(self.frame.size.width - imgComentarios.frame.size.width - 10, 230, imgComentarios.frame.size.width, imgComentarios.frame.size.height)];
        [imgComentarios setContentMode:UIViewContentModeTopLeft];
        [self addSubview:imgComentarios];
        
        lblTotalComentarios = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.width - 65, 230, 50, 30)];
        [lblTotalComentarios setTextAlignment:UITextAlignmentRight];
        [lblTotalComentarios setNumberOfLines:0];
        [lblTotalComentarios setFont:[Constantes HelveticaNue:31]];
        [lblTotalComentarios setBackgroundColor:[UIColor clearColor]];
        [lblTotalComentarios setTextColor:[UIColor whiteColor]];
        [lblTotalComentarios setShadowColor:[UIColor colorWithRed:0.42745 green:0.41569 blue:0.41569 alpha:1]];
        [lblTotalComentarios setShadowOffset:CGSizeMake(1, 1)];
        [self addSubview:lblTotalComentarios];
        
        lblNoticia = [[UILabel alloc] initWithFrame:CGRectMake(imgNoticia.frame.size.width + 20, 285, self.frame.size.width - 30 - imgNoticia.frame.size.width, imgNoticia.frame.size.height - 40)];
        [lblNoticia setTextAlignment:UITextAlignmentLeft];
        [lblNoticia setNumberOfLines:0];
        [lblNoticia setFont:[Constantes HelveticaNue:16]];
        [lblNoticia setBackgroundColor:[UIColor clearColor]];
        [lblNoticia setTextColor:[UIColor colorWithRed:0.30196 green:0.30196 blue:0.30196 alpha:1]];
        [self addSubview:lblNoticia];
        
        lblComentarios = [[UILabel alloc] initWithFrame:CGRectMake(imgNoticia.frame.size.width + 20, 260, self.frame.size.width - 30 - imgNoticia.frame.size.width, 15)];
        [lblComentarios setTextAlignment:UITextAlignmentRight];
        [lblComentarios setText:@"COMENTARIOS"];
        [lblComentarios setNumberOfLines:0];
        [lblComentarios setFont:[Constantes HelveticaNue:13]];
        [lblComentarios setBackgroundColor:[UIColor clearColor]];
        [lblComentarios setTextColor:[UIColor colorWithRed:0.30196 green:0.30196 blue:0.30196 alpha:1]];
        [self addSubview:lblComentarios];
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
    [lblTotalComentarios setText:comentarios];
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
    
    [lblEFE release];
    lblEFE = nil;
    
    [lblTipoNoticia release];
    lblFuente = nil;
    
    [lblTituloNoticia release];
    lblTituloNoticia = nil;
    
    [imgNoticia release];
    imgNoticia = nil;
    
    [imgComentarios release];
    imgComentarios = nil;
    
    [lblTotalComentarios release];
    lblTotalComentarios = nil;
    
    [lblNoticia release];
    lblNoticia = nil;
    
    [lblComentarios release];
    lblComentarios = nil;
    
    [imgRelacionadas release];
    imgRelacionadas = nil;
    
    [lblRelacionadas release];
    lblRelacionadas = nil;
    
    [super dealloc];
}


@end
