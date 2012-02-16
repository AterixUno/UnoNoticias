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
@synthesize delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

-(id) initWithFrame:(CGRect)frame Fuente:(NSString *) strFuente Foto:(UIImage *)foto Relacionadas:(NSString *) strRelacionadas{
    self = [super initWithFrame:frame];
    NSInteger posY;
    if (self){
        
        lblTipoNoticia = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, self.frame.size.width, 30)];
        [lblTipoNoticia setText:@""];
        [lblTipoNoticia setTextAlignment:UITextAlignmentCenter];
        [lblTipoNoticia setNumberOfLines:0];
        [lblTipoNoticia setFont:[Constantes Helvetica67MediumCondensed:21]];
        [lblTipoNoticia setBackgroundColor:[UIColor clearColor]];
        [lblTipoNoticia setTextColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1]];
        [self addSubview:lblTipoNoticia];
        
        lblTituloNoticia = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, self.frame.size.width, 20)];
        [lblTipoNoticia setText:@""];
        [lblTituloNoticia setTextAlignment:UITextAlignmentCenter];
        [lblTituloNoticia setNumberOfLines:0];
        [lblTituloNoticia setFont:[Constantes Helvetica77BoldCondensed:52]];
        //[lblTipoNoticia setFont:[Constantes Helvetica67MediumCondensed:21]];
        [lblTituloNoticia setBackgroundColor:[UIColor clearColor]];
        [lblTituloNoticia setShadowColor:[UIColor colorWithRed:0.72549 green:0.69804 blue:0.69804 alpha:1]];
        [lblTituloNoticia setShadowOffset:CGSizeMake(1, 1)];
        [lblTituloNoticia setTextColor:[UIColor blackColor]];
        [lblTituloNoticia setLineBreakMode:UILineBreakModeWordWrap];
        [self addSubview:lblTituloNoticia];
    
        contenedorView = [[UIView alloc] initWithFrame:CGRectMake(0, lblTituloNoticia.frame.size.height + 30, frame.size.width , frame.size.height-lblTituloNoticia.frame.size.height-lblTituloNoticia.frame.origin.y)];
        [contenedorView setBackgroundColor:[UIColor clearColor]];
        [self addSubview:contenedorView];
        
        posY = 0;
        if (strFuente || [strFuente isEqualToString:@""]){
            lblFuente = [[UILabel alloc] initWithFrame:CGRectMake(contenedorView.frame.size.width * 1/3 + 2, posY, contenedorView.frame.size.width * 2/3 - 2, 20)];
            [lblFuente setText:strFuente];
            [lblFuente setTextAlignment:UITextAlignmentLeft];
            [lblFuente setNumberOfLines:1];
            [lblFuente setFont:[Constantes Helvetica57CondensedOblique:15]];
            [lblFuente setBackgroundColor:[UIColor clearColor]];
            [lblFuente setTextColor:[UIColor colorWithRed:0.30196 green:0.30196 blue:0.30196 alpha:1]];
            [contenedorView addSubview:lblFuente];
            
            lblEFE = [[UILabel alloc] initWithFrame:CGRectMake(0, posY, contenedorView.frame.size.width * 1/3, 20)];
            [lblEFE setText:@"Fuente: EFE"];
            [lblEFE setTextAlignment:UITextAlignmentRight];
            [lblEFE setNumberOfLines:1];
            [lblFuente setFont:[Constantes Helvetica57CondensedOblique:15]];
            [lblEFE setBackgroundColor:[UIColor clearColor]];
            [lblEFE setTextColor:[UIColor colorWithRed:0.10196 green:0.45882 blue:0.73333 alpha:1]];
            [contenedorView addSubview:lblEFE];
            posY = 20;
        }
        
        posY += 15;
        
        imgNoticia = [[UIImageView alloc] initWithImage:foto];
        [imgNoticia setFrame:CGRectMake(10, posY, imgNoticia.frame.size.width, imgNoticia.frame.size.height)];
        [imgNoticia setContentMode:UIViewContentModeTopLeft];
        [contenedorView addSubview:imgNoticia];
        posY += imgNoticia.frame.size.height;
        
        if (strRelacionadas || [strRelacionadas isEqualToString:@""]){
            imgRelacionadas = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"relacionadas.png"]];
            [imgRelacionadas setFrame:CGRectMake(10, posY - 40, imgRelacionadas.frame.size.width, imgRelacionadas.frame.size.height)];
            [imgRelacionadas setContentMode:UIViewContentModeTopLeft];
            [contenedorView addSubview:imgRelacionadas];
            
            lblRelacionadas = [[UILabel alloc] initWithFrame:CGRectMake(10,posY - 40, 106, 32)];
            [lblRelacionadas setText:@"RELACIONADAS"];
            [lblRelacionadas setTextAlignment:UITextAlignmentCenter];
            [lblRelacionadas setNumberOfLines:1];
            [lblRelacionadas setFont:[Constantes Helvetica67MediumCondensed:14]];
            [lblRelacionadas setBackgroundColor:[UIColor clearColor]];
            [lblRelacionadas setTextColor:[UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1]];
            [lblRelacionadas setShadowColor:[UIColor colorWithRed:0.42745 green:0.41569 blue:0.41569 alpha:1]];
            [lblRelacionadas setShadowOffset:CGSizeMake(1, 1)];
            [contenedorView addSubview:lblRelacionadas];
            
            lblTotalRelacionadas = [[UILabel alloc] initWithFrame:CGRectMake(114, posY - 40, 104, 32)];
            [lblTotalRelacionadas setText:strRelacionadas];
            [lblTotalRelacionadas setTextAlignment:UITextAlignmentCenter];
            [lblTotalRelacionadas setNumberOfLines:1];
            [lblTotalRelacionadas setFont:[Constantes Helvetica67MediumCondensed:14]];
            [lblTotalRelacionadas setBackgroundColor:[UIColor clearColor]];
            [lblTotalRelacionadas setTextColor:[UIColor whiteColor]];
            [contenedorView addSubview:lblTotalRelacionadas];
        }
        
        posY = 15;
        imgComentarios = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"comentarios.png"]];
        [imgComentarios setFrame:CGRectMake(contenedorView.frame.size.width - imgComentarios.frame.size.width - 10, posY, imgComentarios.frame.size.width, imgComentarios.frame.size.height)];
        [imgComentarios setContentMode:UIViewContentModeTopLeft];
        [contenedorView addSubview:imgComentarios];
        
        lblTotalComentarios = [[UILabel alloc] initWithFrame:CGRectMake(contenedorView.frame.size.width - 65, posY, 50, 30)];
        [lblTotalComentarios setTextAlignment:UITextAlignmentRight];
        [lblTotalComentarios setNumberOfLines:0];
        [lblTotalComentarios setFont:[Constantes Helvetica67MediumCondensed:31]];
        [lblTotalComentarios setBackgroundColor:[UIColor clearColor]];
        [lblTotalComentarios setTextColor:[UIColor whiteColor]];
        [lblTotalComentarios setShadowColor:[UIColor colorWithRed:0.42745 green:0.41569 blue:0.41569 alpha:1]];
        [lblTotalComentarios setShadowOffset:CGSizeMake(1, 1)];
        [contenedorView addSubview:lblTotalComentarios];
        
        posY += lblTotalComentarios.frame.size.height + 3;
        
        lblComentarios = [[UILabel alloc] initWithFrame:CGRectMake(imgNoticia.frame.size.width + 20, posY, self.frame.size.width - 30 - imgNoticia.frame.size.width, 15)];
        [lblComentarios setTextAlignment:UITextAlignmentRight];
        [lblComentarios setText:@"COMENTARIOS"];
        [lblComentarios setNumberOfLines:0];
        [lblComentarios setFont:[Constantes Helvetica67MediumCondensed:13]];
        [lblComentarios setBackgroundColor:[UIColor clearColor]];
        [lblComentarios setTextColor:[UIColor colorWithRed:0.30196 green:0.30196 blue:0.30196 alpha:1]];
        [contenedorView addSubview:lblComentarios];
        
        posY += lblComentarios.frame.size.height + 3;
        
        lblNoticia = [[UILabel alloc] initWithFrame:CGRectMake(imgNoticia.frame.size.width + 20, posY, contenedorView.frame.size.width - 30 - imgNoticia.frame.size.width, imgNoticia.frame.size.height + imgNoticia.frame.origin.y - posY)];
        [lblNoticia setTextAlignment:UITextAlignmentLeft];
        [lblNoticia setNumberOfLines:0];
        [lblNoticia setFont:[Constantes Helvetica57Condensed:16]];
        [lblNoticia setBackgroundColor:[UIColor clearColor]];
        [lblNoticia setTextColor:[UIColor colorWithRed:0.30196 green:0.30196 blue:0.30196 alpha:1]];
        [contenedorView addSubview:lblNoticia];
        

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
    CGRect frame;
    frame = lblTituloNoticia.frame;
     frame.size = [titulo sizeWithFont:[lblTituloNoticia font] constrainedToSize:CGSizeMake(lblTituloNoticia.frame.size.width, FLT_MAX)lineBreakMode:UILineBreakModeCharacterWrap];
    
    frame.size.width = self.frame.size.width;
    [lblTituloNoticia setFrame:frame];
    
    [contenedorView setFrame:CGRectMake(0, lblTituloNoticia.frame.size.height + 35, self.frame.size.width, self.frame.size.height-lblTituloNoticia.frame.size.height-lblTituloNoticia.frame.origin.y)];
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
    [lblTituloNoticia setFont:[Constantes Helvetica77BoldCondensed:tamano]];
    [self setTitulo:[lblTituloNoticia text]];
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [delegate BotonSeleleccionaNoticiaClic:self];
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
    
    [contenedorView release];
    contenedorView = nil;
    
    delegate = nil;
    
    [super dealloc];
}


@end
