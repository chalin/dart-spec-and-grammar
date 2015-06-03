use strict;
use warnings;

my $br = ' <br/>';
my $sp = '&emsp;&emsp;';

if(/^$/) {
    # Skip blank line.
} elsif(/^[^\s]/) {
    # Header -> plain text + anchor
    s/#* ?(\w+):?/\<a name="$1"\>\<\/a\>\n**$1**:$br/;
} else {
    # Make links out of grammar symbols;
    s/\b([[:alpha:]]\w+)/[$1](\#$1)/g;

    # Ensure that '*)' doesn't get treated as a bold markdown
    s/\*\)/* )/g;
    
    # Leading space to &emsp;
    s/^ +/$sp/;

    # Remove trailing ';'
    s/;?\s*$/$br\n/;
}
