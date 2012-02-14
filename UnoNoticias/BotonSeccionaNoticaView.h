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
    UILabel *lblTipoNoticia;
    UILabel *lblTituloNoticia;
    UILabel *lblComentarios;
    UILabel *lblNoticia;
    UIImageView *imgNoticia;
    UIImageView *imgComentarios;
}

-(id) initWithFrame:(CGRect)frame Fuente:(NSString *) strFuente Foto:(UIImage *) foto;
-(void) setTipoNoticia:(NSString *) tipoNoticia;
-(void) setTitulo:(NSString *) titulo;
-(void) setComentarios:(NSString *) comentarios;
-(void) setNoticia:(NSString *) noticia;
-(void) setFoto:(UIImage *) foto;
-(void) setTamano:(NSInteger) tamano;

@end
