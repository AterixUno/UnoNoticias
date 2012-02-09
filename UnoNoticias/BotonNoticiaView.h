//
//  BotonNoticiaView.h
//  UnoNoticias
//
//  Created by Rogelio Adrian Hernandez B. on 1/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BotonNoticiaView : UIView
{

    UIImageView *imgFondo;
    UIImageView *imgnoticia;
    UILabel *lblTipoNoticia;
    UILabel *lblResumen;

}

-(void) setTipoNoticia:(NSString *) noticia;
-(void) setResumenNoticia:(NSString *) resumen;

@end
