//
//  SeccionesView.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 15/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BotonSeccionView.h"

@interface SeccionesView : UIView{
   
    UIView *contenedorBotonesView;
    BotonSeccionView *btnNacional;
    BotonSeccionView *btnInternacional;
    BotonSeccionView *btnFinanzas;
    BotonSeccionView *btnEspectaculos;
    BotonSeccionView *btnDeportes;
    BotonSeccionView *btnBuenoContar;
    BotonSeccionView *btnDenuncia;
    
}

@end
