//
//  BotonClimaView.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 13/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BotonClimaView : UIView{
    
    UIImageView *imgTiempo;
    UILabel *lblTemperatura;
    UILabel *lblFecha;
    UILabel *lblCiudad;
    UIImageView *imgFondo;
    
}
-(void) setTiempo:(UIImage *) tiempo;
-(void) setTemperatura:(NSString *) temperatura;
-(void) setFecha:(NSString *) fecha;
-(void) setCiudad:(NSString *) ciudad;
-(void) setFondo:(UIImage *) fondo;
@end
