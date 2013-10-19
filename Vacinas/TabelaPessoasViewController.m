//
//  TabelaPessoasViewController.m
//  Vacinas
//
//  Created by Diego Ribeiro on 14/10/13.
//  Copyright (c) 2013 Diego Ribeiro. All rights reserved.
//

#import "TabelaPessoasViewController.h"
#import "PessoaCellController.h"
#import "Pessoa.h"

@interface TabelaPessoasViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tabela;

@end

@implementation TabelaPessoasViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
//    [self.tabela setDataSource:self];
//    [self.tabela setDelegate:self];
    
    
//    [self.tableView  registerClass: [PessoaCellController class] forCellReuseIdentifier:@"cell"];
    
    [self carregarLista];
    
    
}





- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.pessoas count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PessoaCelula"];
    return cell;
}

- (void) carregarLista
{

    NSString *arquivo = [[NSBundle mainBundle] pathForResource:@"bebe" ofType:@"jpg"];
    self.pessoas = [[NSMutableArray alloc]initWithCapacity:20];
    
    NSLog(arquivo);
    
    NSData *foto = [NSData dataWithContentsOfFile:arquivo];
    
    
    
    Pessoa *pessoa = [Pessoa initWith:@"Diego" data:[NSDate date] foto:foto];
    [self.pessoas setObject:pessoa atIndexedSubscript:0];
    
    pessoa = [Pessoa initWith:@"Ana" data: [NSDate date] foto:foto];
    
    [self.pessoas setObject:pessoa atIndexedSubscript:1];
    
    pessoa = [Pessoa initWith:@"Doia" data: [NSDate date] foto:foto];
    [self.pessoas setObject:pessoa atIndexedSubscript:2];
    
}
                      
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
