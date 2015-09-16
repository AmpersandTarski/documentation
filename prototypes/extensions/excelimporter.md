# The Excel Importer
The Excel Importer allows you to import data from an Excel file, effectively adding it to the population of a running prototype. 

## Installation
Nothing special is required for installation; this extension is enabled by default 

## Importing Excel files in a running prototype 
In the menu bar, there are some icons at the right hand side. One of them is a square containing 3x3 squares. This is the selector for extensions. Click on the icon, and select the extension 'Excel Import'. A page is shown in which you may specify excel files and upload them. This is quite self-explanatory.

## How to create importable Excel files
This section describes how to construct an Excel file that can be used to do this.

For illustration purposes, assume we have defined the following small (useless) Ampersand model:

     rAA :: A*A [PROP]
     rAB :: A*B [UNI]
     rAC :: A*C
     sAB :: A->B

If you want to specify data elements in an Excel file in order to populate such a model, you must define so called 'blocks' that contain this data. Here is an example of such a 'block':

| [A's] |  rAA  |  rAB  |  rAC  |  rAC  |  rAC  |  sAB  |
| -- | -- | -- | -- | -- | -- | -- |
|   A   |   A   |   B   |   C   |   C   |   C   |   B   |
| alfa1 | alfa1 | beta1 | char1 | char2 | char3 | beta2 |
|       | CMT   |       |       |       |       |       |
| alfa2 |       | beta2 |       | char2 |       |       |
| alfa3 |       |       | char4 | char3 | char2 | beta1 |

Here is the specification of a block:
1. A 'block' consists of 2 header rows followed by lines of data. A 'block' terminates whenever a next block starts or the end of a page (tab) is reached. Empty lines are disregarded.
2. Every cell in the leftmost column (i.e. column $A) whose contents starts with the character '[' is the first cell in the first header row of a block. The contents of this cell is further disregarded.
3. Subsequent cells in the first header row must either be empty, or contain the name of a relation that is known in your Ampersand model. In our example, such cells may hence only contain '', 'rAA', 'rAB', rAC' or 'sAB'.
4. The second header row only contains names of concepts, or empty cells. In our example, such cells may only contain '', 'A', 'B', or 'C'.
5. The first cell (in the second header row) must contain the source (left) concept of all relations specified in the first header row. In the example, all relations in the first header row have source concept 'A'
6. Every subsequent cell (in the second header row) must either be empty or contain the target (right) concept of the relation that is specified in the same column in the first header row. In our example, such cells may only contain '', 'A', 'B', or 'C'.
7. Every subsequent row in this block is called a data row. Cells in a data row are either empty or non-empty. If a non-empty cell contains a formula, this formula is evaluated to obtain the cell contents. If a non-empty does not contain a formula, its contents is obtained as is. From here on, when we talk about 'the contents of a cell', the obtained value from (evaluating the expressin in) that cell is meant.

Data rows are interpreted as follows:
- When the first cell in a data row is empty, the content of all other cells in that row is disregarded (you may use such cells to include comments, computations, or whatever else you like)
- When the first cell in a data row is not empty, the content of all other non-empty cells and the content of the first cell define a pair (srcAtom,tgtAtom) that is to be inserted into the population of the Ampersand model, where
  - 'srcAtom' is the contents of the first cell
  - 'tgtAtom' is the contents of a non-empty cell
  - for the relation to which the pair (srcAtom,tgtAtom) is to be added,
    - its name is specified in the first row of the block in the same column as 'tgtAtom'
      if the relation name does not exist, the pair is not added to the ampersand population;
    - its SRC Concept is specified on the second header row in the first column;
    - its TGT Concept is specified on the second header row in the same column as 'tgtAtom'.
      if the TGT Concept is not specified, the pair is not added to the ampersand population;

This means that the example is equivalent with the following population specification (note that the cell containing 'CMT' is disregarded as it is comment):

    POPULATION rAA CONTAINS [ ("alfa1"), ("alfa1") ] 

    POPULATION rAB CONTAINS [ ("alfa1"), ("beta1") ] 
    POPULATION rAB CONTAINS [ ("alfa2"), ("beta2") ] 

    POPULATION rAC CONTAINS [ ("alfa1"), ("char1") ] 
    POPULATION rAC CONTAINS [ ("alfa1"), ("char2") ] 
    POPULATION rAC CONTAINS [ ("alfa1"), ("char3") ] 
    POPULATION rAC CONTAINS [ ("alfa2"), ("char2") ] 
    POPULATION rAC CONTAINS [ ("alfa3"), ("char2") ] 
    POPULATION rAC CONTAINS [ ("alfa3"), ("char3") ] 
    POPULATION rAC CONTAINS [ ("alfa3"), ("char4") ] 

    POPULATION sAB CONTAINS [ ("alfa1"), ("beta2") ] 
    POPULATION sAB CONTAINS [ ("alfa3"), ("beta1") ] 

## NOTES

1. Importing an Excel file means that all tabs (pages) in the file are subsequently read. So you may decide to put all blocks on a single page, or on multiple pages.
* If you want to import an Excel file that is not structured according to these specifications, you should 
   * ensure that this page does not contain any blocks. You can effectively do so by inserting an empty column at the leftmost side (and hide it if you want)
   * create the blocks you need on (an)other page(s), and use formulae to create/copy the contents from the original sheet(s).
2. You need NOT know about the internals of the database to use this plugin (at least, that's the idea).
3. You may specify formulae instead of texts. The result of the formula will be read (and converted to text) before being inserted into the database. This allows for dynamic construction of identifiers, precomputation of tables, date adaptations to the date of today, etc.
4. If you use `_NEW` in the first column, the (dirty) identifier for the atom will be automatically generated. If you use `_NEW` in a subsequent column, this will be replaced with the (dirty) identifier for the source atom (which you can use e.g. to populate property-relations). Note that as we also support formulae, you may use those to achieve the same result (and excercise control over the actual dirty identifiers used)
5. It is possible to store all sorts of data in the spreadsheet that will not interfere with the database population. The contents of the following cells is disregarded and can therefore be used for other purposes:
   * cells in a row whose first cell is empty.
   * cells in a column where the cell that specifies the relation name or the TGT concept is empty.
   * cells that are on other sheets than sheet 1.
6. When you use something like `CLASSIFY X ISA Y` in your model, and want to populate an atom 'xy', then you should populate it in the block where Xs are populated. In this block, you can not only populate relations that have source concept X, but also relations that have source concept Y.
7. When you use something like `CLASSIFY X ISA Y` in your model, every atom that is an element of X must be defined (i.e.: its first appearance must be) in the block where 'X's are populated. Further down, it is allowed to add attributes to this atom in a block where 'Y's are populated
