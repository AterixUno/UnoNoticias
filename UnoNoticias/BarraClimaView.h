//
//  BarraClimaView.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 08/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol BarraClimaViewDelegate;
@interface BarraClimaView : UIView{
    UIImageView *imgTipoClima;
    UILabel *lblFecha;
    UILabel *lblTemperatura;
    UILabel *lblCiudad;
}
@property (nonatomic, assign) id<BarraClimaViewDelegate> delegate;

@end

@protocol BarraClimaViewDelegate <NSObject>
@optional
-(void) barraClimaClic:(BarraClimaView *) _barraClima;
@end