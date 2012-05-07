class Pry
  class Docmore
    def self.split_docs doc_string
      Hash[doc_string.split(/\n/).map { |e| e.split(/\s+/,2) }]
    end
    @DOCS = [
      {
        label: 'Keyword',
        source: 'ruby source, lex.c, circa line 219',
        explanations: self.split_docs(%q{
alias ...pry-docmore TODO!
and ...pry-docmore TODO!
begin ...pry-docmore TODO!
BEGIN ...pry-docmore TODO!
break ...pry-docmore TODO!
case ...pry-docmore TODO!
class ...pry-docmore TODO!
def ...pry-docmore TODO!
defined? ...pry-docmore TODO!
do ...pry-docmore TODO!
else ...pry-docmore TODO!
elsif ...pry-docmore TODO!
__ENCODING__ ...pry-docmore TODO!
end ...pry-docmore TODO!
END ...pry-docmore TODO!
ensure ...pry-docmore TODO!
false ...pry-docmore TODO!
__FILE__ ...pry-docmore TODO!
for ...pry-docmore TODO!
if ...pry-docmore TODO!
in ...pry-docmore TODO!
__LINE__ ...pry-docmore TODO!
module ...pry-docmore TODO!
next ...pry-docmore TODO!
nil ...pry-docmore TODO!
not ...pry-docmore TODO!
or ...pry-docmore TODO!
redo ...pry-docmore TODO!
rescue ...pry-docmore TODO!
retry ...pry-docmore TODO!
return ...pry-docmore TODO!
self ...pry-docmore TODO!
super ...pry-docmore TODO!
then ...pry-docmore TODO!
true ...pry-docmore TODO!
undef ...pry-docmore TODO!
unless ...pry-docmore TODO!
until ...pry-docmore TODO!
when ...pry-docmore TODO!
while ...pry-docmore TODO!
yield ...pry-docmore TODO!
        })
      },

      {
        label: 'Global Variable',
        source: 'Started from: http://www.zenspider.com/Languages/Ruby/QuickRef.html#pre-defined-variables',
        explanations: self.split_docs(%q{
$SAFE      ...pry-docmore TODO!
$KCODE     ...pry-docmore TODO!
$-K        ...pry-docmore TODO!
$LOADED_FEATURES  ...pry-docmore TODO!
$-W        ...pry-docmore TODO!
$PROGRAM_NAME  Same as $0 - Contains the name of the script being executed. May be assignable.
$!         The exception information message set by 'raise'.
$@         Array of backtrace of the last exception thrown.
$&         The string matched by the last successful match.
$`         The string to the left of the last successful match.
$'         The string to the right of the last successful match.
$+         The highest group matched by the last successful match.
$1         The 1st group of the last successful match. May be > 1.
$2         The 2nd group of the last successful match. May be > 1.
$3         The 3rd group of the last successful match. May be > 1.
$4         The 4th group of the last successful match. May be > 1.
$5         The 5th group of the last successful match. May be > 1.
$6         The 6th group of the last successful match. May be > 1.
$7         The 7th group of the last successful match. May be > 1.
$8         The 8th group of the last successful match. May be > 1.
$9         The 9th group of the last successful match. May be > 1.
$~         The information about the last match in the current scope.
$=         The flag for case insensitive, nil by default.
$/         The input record separator, newline by default.
$\         The output record separator for the print and IO#write. Default is nil.
$,         The output field separator for the print and Array#join.
$;         The default separator for String#split.
$.         The current input line number of the last file that was read.
$<         The virtual concatenation file of the files given on command line (or from $stdin if no files were given).
$>         The default output for print, printf. $stdout by default.
$_         The last input line of string by gets or readline.
$0         Same as $PROGRAM_NAME. Contains the name of the script being executed. May be assignable.
$*         Command line arguments given for the script sans args.
$$         The process number of the Ruby running this script.
$?         The status of the last executed child process.
$:         Load path for scripts and binary modules by load or require.
$"         The array contains the module names loaded by require.
$DEBUG     The status of the -d switch.
$FILENAME  Current input file from $<. Same as $<.filename.
$LOAD_PATH The alias to the $:.
$stderr    The current standard error output.
$stdin     The current standard input.
$stdout    The current standard output.
$VERBOSE   The verbose flag, which is set by the -v switch.
$-0        The alias to $/.
$-a        True if option -a is set. Read-only variable.
$-d        The alias to $DEBUG.
$-F        The alias to $;.
$-i        In in-place-edit mode, this variable holds the extension, otherwise nil.
$-I        The alias to $:.
$-l        True if option -l is set. Read-only variable.
$-p        True if option -p is set. Read-only variable.
$-v        The alias to $VERBOSE.
$-w        True if option -w is set.})
      },
    ]
    def self.explain thing
      @DOCS.each do |kind|
        return kind[:explanations][thing] if kind[:explanations].has_key? thing
      end
      nil
    end
  end
end
