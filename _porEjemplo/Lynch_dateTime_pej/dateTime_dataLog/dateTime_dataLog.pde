Table table; // create database object
String dateTime;
int x = 0;

void setup() {
  loadData();
}

void draw() {
  int y = year();   // 2003, 2004, 2005, etc.
  int m = month();  // Values from 1 - 12
  int d = day();    // Values from 1 - 31
  int h = hour();
  int mi = minute();
  dateTime = y + "-" + m + "-" + d + "-" + h + "-" + mi; // join year, month, day, hour & minute in 1 string


  if (frameCount % 60 == 0) {
    write(random(10)); // create the row on the DB
  }
}


void loadData() {
  // Load CSV file into a Table object
  // "header" option indicates the file has a header row
  table = loadTable("data.csv", "header");
}


void write(float val1) {
  // Create a new row 
  TableRow row = table.addRow();
  // Set the values of that row
  row.setString("dateTime", dateTime);
  row.setFloat("valor", val1);

  // Writing the CSV back to the same file
  saveTable(table, "data/data.csv");
  // And reloading it
  loadData();
}