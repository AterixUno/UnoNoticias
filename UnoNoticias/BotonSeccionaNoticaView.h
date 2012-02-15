//
//  BotonSeccionaNoticaView.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 13/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BotonSeccionaNoticaView : UIView{
    UILabel *lblFuente;
    UILabel *lblEFE;
    UILabel *lblTipoNoticia;
    UILabel *lblTituloNoticia;
    UILabel *lblTotalComentarios;
    UILabel *lblComentarios;
    UILabel *lblNoticia;
    UILabel *lblRelacionadas;
    UILabel *lblTotalRelacionadas;
    UIImageView *imgNoticia;
    UIImageView *imgComentarios;
    UIImageView *imgRelacionadas;
    
    UIView *contenedorView;
}

-(id) initWithFrame:(CGRect)frame Fuente:(NSString *) strFuente Foto:(UIImage *) foto Relacionadas:(NSString *) strRelacionadas;
-(void) setTipoNoticia:(NSString *) tipoNoticia;
-(void) setTitulo:(NSString *) titulo;
-(void) setComentarios:(NSString *) comentarios;
-(void) setNoticia:(NSString *) noticia;
-(void) setFoto:(UIImage *) foto;
-(void) setTamano:(NSInteger) tamano;

@end
