//
//  ViewController.m
//  Sample041904
//
//  Created by tikomo on 2014/04/19.
//  Copyright (c) 2014年 tikomo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView1;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // case1)
    [_tableView1 setDelegate:self];　// テーブルに表示するデータは誰に聞くの？
    [_tableView1 setDataSource:self]; // テーブルが選択された時は誰に言えばいいの？
    
    // case2)
    // _tableView1.delegate = self;
    // _tableView1.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//
// セルの内容を表示する
//
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    // CellにtableViewCellって名前を付ける事　忘れずに！
    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:@"tableViewCell"];
 

    UILabel *sectionLabel = (UILabel *)[cell viewWithTag:1];
    UILabel *rowLabel = (UILabel *)[cell viewWithTag:2];

    sectionLabel.text = [NSString stringWithFormat:@"section %ld", (long)indexPath.section];
    rowLabel.text = [NSString stringWithFormat:@"row %ld", indexPath.row];


    
    return cell;
}


//
// 2.行数を返す
//
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 3;
}

//
// 1.セクション数を返す
//
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}




@end
