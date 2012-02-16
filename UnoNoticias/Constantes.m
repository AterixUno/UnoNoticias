//
//  Constantes.m
//  UnoNoticias
//
//  Created by Miguel Cubillos on 08/02/12.
//  Copyright (c) 2012 Freezecode. All rights reserved.
//

#import "Constantes.h"

@implementation Constantes

+(UIFont *) HelveticaNue:(NSInteger) size{
    return [UIFont fontWithName:@"HelveticaNeue" size:size];
}

+(UIFont *) HelveticaNueCondensed:(NSInteger)size{
    return [UIFont fontWithName:@"HelveticaNeueLTStd-BdCn" size:size];
    //return [UIFont fontWithName:@"HelveticaNeueLTStd-Blk" size:size];
}


+(UIFont *) Helvetica57Condensed:(NSInteger)size{
    return [UIFont fontWithName:@"HelveticaLTStd-Cond" size:size];
}

+(UIFont *) Helvetica57CondensedOblique:(NSInteger)size{
    return [UIFont fontWithName:@"HelveticaLTStd-CondObl" size:size];
}

+(UIFont *) Helvetica77BoldCondensed:(NSInteger)size{
    return [UIFont fontWithName:@"HelveticaNeueLTStd-BdCn" size:size];
}   
+(UIFont *) Helvetica67MediumCondensed:(NSInteger)size{
    return [UIFont fontWithName:@"HelveticaNeueLTStd-MdCn" size:size];
}
+(UIFont *) Helvetica67MediumCondensedOblique:(NSInteger)size{
    return [UIFont fontWithName:@"HelveticaNeueLTStd-MdCnO" size:size];
}

@end
