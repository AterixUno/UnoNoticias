//
//  Constantes.h
//  UnoNoticias
//
//  Created by Miguel Cubillos on 08/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

/*
 HelveticaNeue-Bold,
 HelveticaNeue-CondensedBlack,
 HelveticaNeue-Medium,
 HelveticaNeue,
 HelveticaNeue-Light,
 HelveticaNeue-CondensedBold,
 HelveticaNeue-LightItalic,
 HelveticaNeue-UltraLightItalic,
 HelveticaNeue-UltraLight,
 HelveticaNeue-BoldItalic,
 HelveticaNeue-Italic
 
 */

#import <Foundation/Foundation.h>

@interface Constantes : NSObject

+(UIFont *) HelveticaNue:(NSInteger) size;
+(UIFont *) HelveticaNueCondensed:(NSInteger)size;

+(UIFont *) Helvetica57Condensed:(NSInteger)size;
+(UIFont *) Helvetica57CondensedOblique:(NSInteger)size;
+(UIFont *) Helvetica77BoldCondensed:(NSInteger)size;
+(UIFont *) Helvetica67MediumCondensed:(NSInteger)size;
+(UIFont *) Helvetica67MediumCondensedOblique:(NSInteger)size;


@end
