//
//  TableViewCell.h
//  SimpleList
//
//  Created by Eslem Alzate on 31/12/14.
//  Copyright (c) 2014 Alzate Zabala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

-(IBAction)buttonClick:(id)sender;

@end
