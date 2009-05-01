rr
==

  * Joseph Pecoraro
  * [joepeck02@gmail.com](mailto:joepeck02@gmail.com?subject=regex_replace%20gem)
  * [http://blog.bogojoker.com]()

Description:
------------

A multi-line search and replace utility that uses Ruby regular expressions
for searching and allows back references to  captured groups from the pattern
to appear in the replacement text.

Usage:
------

  usage: rr [options] find replace [filenames]
         rr [options] s/find/replace/ [filenames]
         rr [options] find
    find      - a regular expression to be run on the entire file as one string
                the final usage defaults the replacement to the empty string
    replace   - replacement text, \1-\9 and metachars (\n, etc.) are allowed
    filenames - names of the input files to be parsed, if blank uses STDIN
    
  options:
    --line or -l    process line by line instead of all at once (not default)
    --case or -c    makes the regular expression case sensitive (not default)
    --global or -g  process all occurrences in the text (default)
    --modify or -m  changes will directly modify the original file (not default)
  
  negated options are done by adding 'not' or 'n' in switches like so:
    --notline or -nl
  
  special note:
    When using bash, if you want backslashes in the replace portion make sure
    to use the multiple argument usage with single quotes for the replacement.


Synopsis:
---------

Replace all a's with e's

  rr s/a/e/ file
  rr a e file

Doubles the last character on each line and doubles the newline.

  rr "(.)\n" "\1\1\n\n" file

Requirements:
-------------

* Ruby 1.8.6 or greater

Install:
--------

* sudo gem install regex_replace

License:
--------

(The MIT License)

Copyright (c) 2008 Joseph Pecoraro

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
