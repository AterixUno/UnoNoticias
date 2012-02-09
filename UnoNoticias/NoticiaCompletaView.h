//
//  NoticiaCompletaView.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 08/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoticiaCompletaView : UIView{
        
    UILabel *lblTitulo;
    UILabel *lblFuente;
    UILabel *lblTipoNoticia;
    
}
-(void) actualizarVista;

@end
