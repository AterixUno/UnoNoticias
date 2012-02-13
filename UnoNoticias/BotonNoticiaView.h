//
//  BotonNoticiaView.h
//  UnoNoticias
//
//  Created by Rogelio Adrian Hernandez B. on 1/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BotonNoticiaView : UIView{

    UIImageView *imgFondo; /* Variable de tipo UIImageview que se guarda en una dirección de memoria por eso el * */
    UIImageView *imgnoticia;
    UILabel *lblTipoNoticia;
    UILabel *lblResumen;

}

-(void) setTipoNoticia:(NSString *) noticia;
-(void) setResumenNoticia:(NSString *) resumen;
-(void) setImgFondo:(UIImage *) fondo;
-(void) setImgNoticia:(UIImage *) noticia;

@end
