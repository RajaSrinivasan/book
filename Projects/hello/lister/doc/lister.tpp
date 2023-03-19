\section{Lister}

We begin by getting some text input and output experience. The goal of this project is to
simply printout the contents of a named file - not unlike the familiar \textbf{cat}. However
the \textbf{lister} will keep track of line numbers and print them as well. The exercise 
gets us exploring several predefined libraries which are part of the language.

\subsection{Library references}

#include "../src/lister-env.tex"

The listing above represents the library environment that we intend to use 
in this project. The \textbf{package}s are appropriately named 
\textbf{Ada.Command\_Line} that helps 
retrieve the command line parameters; \textbf{Ada.Text\_Io} provides basic
text input output support while \textbf{Ada.Integer\_Text\_Io} is a specialization
for \textbf{Integer}s.

\subsection{Command Line}

#include "../src/lister-cmdline.tex"

Line 16 in the above listing confirms that an argument had indeed been provided
in this case a file name. The package \textbf{Ada.Command\_Line} provides a sparse 
set of functions supporting the command line. Later projects will feature 
a richer command line requirements and will utilize more featureful \textbf{package}s 
in the library.

\subsection{The main loop}

#include "../src/lister-mainloop.tex"

The main loop of \textbf{lister} has to retrieve each line from the file 
opened in line 23, keeping track of the line number and finally printing out
in line 29.

Of particular note is how the string retrieved from the file and the later
printout of the same deal with the variable size of the line. The variable 
line is of a fixed length and care is exercised to print only the text retrieved
which is of length linelen.