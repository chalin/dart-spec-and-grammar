use strict;
use warnings;

my $grammarExcerpt = '';
my $collect = 0;

sub printExcerptAndReset() {
    print $grammarExcerpt if $grammarExcerpt
        && $grammarExcerpt !~ /AProduction/;
    $grammarExcerpt = '';
}

while(<>) {
    next if /^\s*%/; # skip comment lines
    
    if (/^\s*\\begin{grammar}/g) {
        $collect = 1;
        next;
    }
    if (/^\s*\\end{grammar}/g) {
        $collect = 0;
        printExcerptAndReset();
        next;
    }
    
    $grammarExcerpt .= $_ if $collect;
}

printExcerptAndReset();
