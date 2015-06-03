use strict;
use warnings;

# Untabify
s/\t/    /g;

# Remove trailing \\
s/\s*\\\\\s*\n+\s*/ /g;

# Spaces -> one space
s/([^\n]) +/$1 /g;

# Temporarily replace \% by PCT
s/\\%/PCT/g;
# Remove comments %...
s/%.*\n/\n/g;
# Revert \%
s/PCT/\\%/g;

# Change some Latex macros, etc:
s/\\lt\b/</g;
s/\\gt\b/>/g;
s/\\([&#])/$1/g;
s/\\([{}])/$1/g;
s/\\([~^]){}/$1/g;
s/\\\$/\$/g;
s/-{}-/--/g;

# \_ -> _
s/\\_/_/g;

# bugs in grammar 'x' should be `x'
s/'([_=<>,+fF\.;\$\(\)])'/`$1'/g;

# \(code|texttt){'} -> SQT
s/\\(code|texttt){'}/SQT/g;

# \code{"} -> "
s/\\code{"}/"/g;

# \texttt{...} -> ...
s/\\texttt{([^}]+)}/$1/g;

# bug in grammar: ' should be `
s/'(\{\\escapegrammar)/`$1/g;
# bug in grammar put ` outside of {}:
s/\{`\\escapegrammar/`\{\\escapegrammar/;
# Handle excapegrammar
s/\{\\escapegrammar\s*([^}]+)}/$1/g;

# `...' -> `...`
# SQT -> '
s/`([^']+)'/`$1`/g;
s/SQT/'/g;

# \FOO{} -> __foo__
s/\\([A-Z]+){}/__\L$1__/g;
# \FOO* -> __foo__*
s/\\([A-Z]+\b)/__\L$1__/g;

# $|$ -> |
s/\$(\|+)\$/$1/g;

# This should be last or at least after all \foo transformations:
s/\$\\backslash\$\s*/\\/g;

my $hdPrefix = '##### ';
    
# Output grammar production head as a header
s/ *{\\bf\s*(\w+)\s*:\s*}/$hdPrefix$1:\n    /g;

# Uniformly indent non header lines
s/\n +/\n    /g;
s/\n(\w|\.)/\n    $1/g;

# Remove line with only '.'
s/\n[ \t]*\.//g;

# Remove blank lines
s/(\n[ \t]*)+\n/\n/g;

# Now only add a blank line before a header
s/\n$hdPrefix/\n\n/g;
s/^$hdPrefix//;
