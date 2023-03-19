\section{Dump}

In this projectlet, we will start our own code into packages each dedicated to a single 
function. An example is command line processing. Similarly we begin building up a library
of useful modules or \textbf{package}s. A good library of course should feature clean 
interfaces with the use cases being the guide.

The utility developed will provide a hexadecimal dump of a file.

\subsection{Library references}
#include "../src/dump-env.tex"

\subsection{Command Line}

#include "../src/dump_cli-cli.tex"

\subsection{Library - Interface}

\subsubsection{Dump File}
#include "../../adalib/src/hex-dump-file-spec.tex"

\subsubsection{Hexadecimal conversions}
#include "../../adalib/src/hex-heximpl.tex"

\begin{landscape}
\section{Usage Examples}
#shell "../../bin/dump ../src/dump.adb"
\end{landscape}