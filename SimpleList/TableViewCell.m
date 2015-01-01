//
//  TableViewCell.m
//  SimpleList
//
//  Created by Eslem Alzate on 31/12/14.
//  Copyright (c) 2014 Alzate Zabala. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

@synthesize nameLabel = _nameLabel;
@synthesize prepTimeLabel = _prepTimeLabel;
@synthesize thumbnailImageView = _thumbnailImageView;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(IBAction)buttonClick:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"message" delegate:Nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    
    [alert show];
}

@end
