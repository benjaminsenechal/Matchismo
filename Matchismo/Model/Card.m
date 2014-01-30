//
//  Card.m
//  Matchismo
//
//  Created by Benjamin SENECHAL on 30/01/2014.
//  Copyright (c) 2014 Benjamin SENECHAL. All rights reserved.
//

#import "Card.h"

@implementation Card

@synthesize chosen = _chosen;
@synthesize matched = _matched;

// getters and setters

- (BOOL)isChosen{
    return _chosen;
}

- (void)setChosen:(BOOL)chosen{
    _chosen = chosen;
}

- (BOOL)isMatched{
    return _matched;
}

- (void)setMatched:(BOOL)matched{
    _matched = matched;
}

- (int)match:(NSArray *)otherCards{
    int score = 0;
    
    for(Card *card in otherCards){
        score = 1;
    }
    
    return score;
}



@end
