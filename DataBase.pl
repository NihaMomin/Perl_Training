#!/usr/bin/perl

use warnings FATAL => 'all';
use DBI;
use strict;

my $driver = "Pg";
my $database = "nihadb";
my $dsn = "DBI:$driver:database=$database";
my $userid = "";
my $password = "";

my $dbh = DBI->connect($dsn, $userid, $password ) or die $DBI::errstr;
# ------------------------------------------------------------------------
# execute a simple select query
my $sth = $dbh->prepare("SELECT * FROM product");
$sth->execute( ) or die $DBI::errstr;
print "Number of rows found :" , $sth->rows;
while (my @row = $sth->fetchrow_array()) {
    my ($id, $book_name, $category_name ) = @row;
    print "ID: $id, Book Name: $book_name, Category Name: $category_name\n";
}
# -------------------------------------------------------------------------
# execute a simple insert query
# my $sth = $dbh->prepare("INSERT INTO product
#                        (name, category_category_name)
#                          values
#                        ('johny book', 'bb')");
# # execute query
# $sth->execute() or die @DBI::errstr;
# -------------------------------------------------------------------------
# execute a simple insert query with binding
# my $book_name = "niha new book";
# my $book_cat = "a";
# # execute a simple insert query
# my $sth = $dbh->prepare("INSERT INTO product
#                        (name, category_category_name)
#                          values
#                        (?, ?)");
# # execute query
# $sth->execute($book_name, $book_cat) or die @DBI::errstr;
# -------------------------------------------------------------------------
# execute a simple update query with binding
# my $name = "niha edited name";
# my $id = 20;
# execute a simple insert query
# my $sth = $dbh->prepare("UPDATE product
#                         SET name = ?
#                        WHERE id =? ");
# # execute query
# $sth->execute($name, $id) or die @DBI::errstr;
# -------------------------------------------------------------------------
# execute a simple delete query
# my $id = 20;
# my $sth = $dbh->prepare("DELETE FROM product
#                        WHERE id =? ");
# # execute query
# $sth->execute($id) or die @DBI::errstr;
# -------------------------------------------------------------------------
$sth->finish();
# commit the changes
$dbh->commit or die @DBI::errstr;
# disconnect from the database
$dbh->disconnect();
