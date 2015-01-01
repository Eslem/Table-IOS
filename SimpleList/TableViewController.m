//
//  TableViewController.m
//  SimpleList
//
//  Created by Eslem Alzate on 31/12/14.
//  Copyright (c) 2014 Alzate Zabala. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"

@interface TableViewController ()

@end

@implementation TableViewController{
    NSArray * tableData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    tableData=[NSArray arrayWithObjects:@"Data1",@"Data2",@"Data3", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)buttonClick:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Simple Message" delegate:Nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    
    [alert show];
    //[alert release];
    
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [tableData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleDataIdentifier = @"SimpleTableCell";
    
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleDataIdentifier];
    
    if(cell == nil){
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.prepTimeLabel.text = @"Text";
    cell.thumbnailImageView.image = [UIImage imageNamed:@"DarthVader.jpg"];
    
    return cell;
    
}

@end
