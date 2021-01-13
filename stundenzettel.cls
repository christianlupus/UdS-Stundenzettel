% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Stundenzettel}

\LoadClass[10pt,parskip=half]{scrartcl}

\RequirePackage[ngerman]{babel}
\RequirePackage[landscape,left=1.4cm,right=1.3cm,top=0.9cm,bottom=0.7cm%
% ,showframe%
]{geometry}
\RequirePackage{wasysym}
\RequirePackage{array}
\RequirePackage{etoolbox}
\RequirePackage[table]{xcolor}
\RequirePackage{xifthen}
\RequirePackage{graphicx}
\RequirePackage{enotez}

\AfterEndPreamble{\stundenzettel@printit}

\pagestyle{empty}
\setlength\parindent{0pt}
\setlength\parskip{2pt}

\colorlet{Marked}{blue!35!white!90!red}
\colorlet{Shaded}{black!10}

\newcommand{\SetWorkJan}[1]{\def\stundenzettel@jan@work{#1}}
\newcommand{\SetHoursJan}[1]{\def\stundenzettel@jan@hours{#1}}
\newcommand{\SetHoursExternalJan}[1]{\def\stundenzettel@jan@exthours{#1}}
\newcommand{\SetWorkFeb}[1]{\def\stundenzettel@feb@work{#1}}
\newcommand{\SetHoursFeb}[1]{\def\stundenzettel@feb@hours{#1}}
\newcommand{\SetHoursExternalFeb}[1]{\def\stundenzettel@feb@exthours{#1}}
\newcommand{\SetWorkMar}[1]{\def\stundenzettel@mar@work{#1}}
\newcommand{\SetHoursMar}[1]{\def\stundenzettel@mar@hours{#1}}
\newcommand{\SetHoursExternalMar}[1]{\def\stundenzettel@mar@exthours{#1}}
\newcommand{\SetWorkApr}[1]{\def\stundenzettel@apr@work{#1}}
\newcommand{\SetHoursApr}[1]{\def\stundenzettel@apr@hours{#1}}
\newcommand{\SetHoursExternalApr}[1]{\def\stundenzettel@apr@exthours{#1}}
\newcommand{\SetWorkMai}[1]{\def\stundenzettel@mai@work{#1}}
\newcommand{\SetHoursMai}[1]{\def\stundenzettel@mai@hours{#1}}
\newcommand{\SetHoursExternalMai}[1]{\def\stundenzettel@mai@exthours{#1}}
\newcommand{\SetWorkJun}[1]{\def\stundenzettel@jun@work{#1}}
\newcommand{\SetHoursJun}[1]{\def\stundenzettel@jun@hours{#1}}
\newcommand{\SetHoursExternalJun}[1]{\def\stundenzettel@jun@exthours{#1}}
\newcommand{\SetWorkJul}[1]{\def\stundenzettel@jul@work{#1}}
\newcommand{\SetHoursJul}[1]{\def\stundenzettel@jul@hours{#1}}
\newcommand{\SetHoursExternalJul}[1]{\def\stundenzettel@jul@exthours{#1}}
\newcommand{\SetWorkAug}[1]{\def\stundenzettel@aug@work{#1}}
\newcommand{\SetHoursAug}[1]{\def\stundenzettel@aug@hours{#1}}
\newcommand{\SetHoursExternalAug}[1]{\def\stundenzettel@aug@exthours{#1}}
\newcommand{\SetWorkSep}[1]{\def\stundenzettel@sep@work{#1}}
\newcommand{\SetHoursSep}[1]{\def\stundenzettel@sep@hours{#1}}
\newcommand{\SetHoursExternalSep}[1]{\def\stundenzettel@sep@exthours{#1}}
\newcommand{\SetWorkOkt}[1]{\def\stundenzettel@okt@work{#1}}
\newcommand{\SetHoursOkt}[1]{\def\stundenzettel@okt@hours{#1}}
\newcommand{\SetHoursExternalOkt}[1]{\def\stundenzettel@okt@exthours{#1}}
\newcommand{\SetWorkNov}[1]{\def\stundenzettel@nov@work{#1}}
\newcommand{\SetHoursNov}[1]{\def\stundenzettel@nov@hours{#1}}
\newcommand{\SetHoursExternalNov}[1]{\def\stundenzettel@nov@exthours{#1}}
\newcommand{\SetWorkDez}[1]{\def\stundenzettel@dez@work{#1}}
\newcommand{\SetHoursDez}[1]{\def\stundenzettel@dez@hours{#1}}
\newcommand{\SetHoursExternalDez}[1]{\def\stundenzettel@dez@exthours{#1}}

\newcommand{\SetYear}[1]{\def\stundenzettel@year{#1}}
\newcommand{\SetTitel}[1]{\def\stundenzettel@titel{#1}}
\newcommand{\SetAktenzeichen}[1]{\def\stundenzettel@aktenzeichen{#1}}
\newcommand{\SetName}[1]{\def\stundenzettel@name{#1}}
\newcommand{\SetLeiter}[1]{\def\stundenzettel@leiter{#1}}
\newcommand{\SetAnteil}[1]{\def\stundenzettel@anteil{#1}}
\newcommand{\SetZeitraum}[1]{\def\stundenzettel@zeitraum{#1}}

\newcommand{\SetSignature}[1]{\setboolean{signature}{true}\def\stundenzettel@signature{#1}}
\newcommand{\SetDate}[1]{\setboolean{thedate}{true}\def\stundenzettel@thedate{#1}}

\SetHoursJan{0}\SetWorkJan{}\SetHoursExternalJan{0}
\SetHoursFeb{0}\SetWorkFeb{}\SetHoursExternalFeb{0}
\SetHoursMar{0}\SetWorkMar{}\SetHoursExternalMar{0}
\SetHoursApr{0}\SetWorkApr{}\SetHoursExternalApr{0}
\SetHoursMai{0}\SetWorkMai{}\SetHoursExternalMai{0}
\SetHoursJun{0}\SetWorkJun{}\SetHoursExternalJun{0}
\SetHoursJul{0}\SetWorkJul{}\SetHoursExternalJul{0}
\SetHoursAug{0}\SetWorkAug{}\SetHoursExternalAug{0}
\SetHoursSep{0}\SetWorkSep{}\SetHoursExternalSep{0}
\SetHoursOkt{0}\SetWorkOkt{}\SetHoursExternalOkt{0}
\SetHoursNov{0}\SetWorkNov{}\SetHoursExternalNov{0}
\SetHoursDez{0}\SetWorkDez{}\SetHoursExternalDez{0}

\SetYear{18}
\SetTitel{C\_6150000\_35}
\SetAktenzeichen{}
\SetName{}
\SetLeiter{Martin Wagner}
\SetAnteil{100 \%}
\SetZeitraum{}

\newcounter{tothoursmonth}

\newcounter{totreal}
\newcounter{totextreal}
\newcounter{totmax}

\newboolean{signature}
\SetSignature{}
\setboolean{signature}{false}

\newboolean{thedate}
\SetDate{}
\setboolean{thedate}{false}

\setcounter{totreal}{0}
\setcounter{totextreal}{0}
\setcounter{totmax}{0}

\renewcommand{\arraystretch}{1.25}

\newcommand{\stundenzettel@printline}[2]{%
\ifthenelse{
	\equal{\csname stundenzettel@#2@work\endcsname}{} \AND
	\(\equal{\csname stundenzettel@#2@hours\endcsname}{} \OR
	\equal{\csname stundenzettel@#2@hours\endcsname}{0}\)
	}%
	{}{
		#1 \stundenzettel@year &
		\csname stundenzettel@#2@work\endcsname &
		\csname stundenzettel@#2@hours\endcsname \addtocounter{totreal}{\csname stundenzettel@#2@hours\endcsname} &
		\csname stundenzettel@#2@exthours\endcsname \addtocounter{totextreal}{\csname stundenzettel@#2@exthours\endcsname} &
		\cellcolor{Shaded}%
		\setcounter{tothoursmonth}{\csname stundenzettel@#2@hours\endcsname}%
		\addtocounter{tothoursmonth}{\csname stundenzettel@#2@exthours\endcsname}%
		\addtocounter{totmax}{\value{tothoursmonth}}
		\thetothoursmonth
		\\ \hline
	}%
}

\newcommand{\stundenzettel@printit}{%
{\raggedleft \textbf{Stand: \ifthenelse{\boolean{thedate}}{\stundenzettel@thedate}{\today}} \\}
{ \centering
	\textbf{\underline{\large Stundennachweis}} \\
	f\"ur \textbf{nicht ausschlie\ss{}lich im Vorhaben t\"atige Mitarbeiter} \\
	(Anlage 2d zum Zuwendungsbescheid) \\
}
\vspace{1em}
\begin{tabular}{p{0.537\textwidth}  p{0.417\textwidth}}
Vorhabentitel: \stundenzettel@titel & Aktenzeichen: \stundenzettel@aktenzeichen \\
Name der Mitarbeiterin / des Mitarbeiters: \stundenzettel@name \\
Name des Vorhabenleiters bzw. der Vorhabenleiterin: \stundenzettel@leiter & Abrechnungszeitraum Mittelabruf: \stundenzettel@zeitraum \\
Aktueller Besch\"aftigungsanteil im Unternehmen in Prozent: \stundenzettel@anteil \\
\end{tabular}

Der/die oben genannte Mitarbeiter(in) hat im Abrechnungszeitraum folgende Arbeitsstunden geleistet\footnote{In der Tabelle muss immer auf volle Stunden abgerundet werden (Bsp.: 140,75 Stunden = 140 Stunden). Die w\"ahrend der Vorhabenlaufzeit in anderen \"offentlich gef\"orderten Vorhaben geleisteten Arbeitsstunden werden auf die maximale Stundenobergrenze gem\"a\ss{} Kostenplan (entsprechend Ziffer 5.4.3 BNBest-P Technologie) angerechnet. Dies kann dann zu einer K\"urzung der zuwendungsf\"ahigen Arbeitsstunden f\"uhren, wenn die geleisteten Arbeitsstunden im Vorhaben und die geleisteten Arbeitsstunden in anderen \"offentlich gef\"orderten Vorhaben \"uber dieser H\"ochstgrenze liegen.}:

\begin{tabular}{| >{\raggedleft} p{1.65cm} | >{\centering} p{10.6cm} | >{\centering} p{3.65cm} | >{\centering} p{4.25cm} | >{\centering\arraybackslash} p{4.35cm} |}
\hline
\rowcolor{Marked}
\centering
Monat/ Jahr &
\textbf{Tätigkeit im gef\"orderten Vorhaben} \newline
(unter Bezugnahme auf die Arbeitsschritte, wie sie im Antrag \newline
beschrieben wurden) &
% \centering
\multicolumn{1}{p{3.65cm} |}{
\small Anzahl der tats\"achlich
geleisteten Arbeitsstunden 
im gef\"orderten Vorhaben
(volle Stunden)} &
\centering \small Anzahl der tats\"achlich
geleisteten Arbeitsstunden in
anderen \"offentlich geförderten
Vorhaben (volle Stunden) &
Gesamtzahl der Stunden die auf
die Stundenobergrenze
angerechnet werden
\\ \hline

\stundenzettel@printline{Jan}{jan}
\stundenzettel@printline{Feb}{feb}
\stundenzettel@printline{Mär}{mar}
\stundenzettel@printline{Apr}{apr}
\stundenzettel@printline{Mai}{mai}
\stundenzettel@printline{Jun}{jun}
\stundenzettel@printline{Jul}{jul}
\stundenzettel@printline{Aug}{aug}
\stundenzettel@printline{Sep}{sep}
\stundenzettel@printline{Okt}{okt}
\stundenzettel@printline{Nov}{nov}
\stundenzettel@printline{Dez}{dez}

\multicolumn{2}{l|}{} &
\cellcolor{Marked} \thetotreal &
\cellcolor{Marked} \thetotextreal &
\cellcolor{Marked} \thetotmax
\\ \cline{3-5}
\end{tabular}

% \vspace{0.3cm}
\vfill

Hinweis: Die Angaben stellen subventionserhebliche Tatsachen i.S.d. \S{} 264 StGB dar.

Die Mitarbeiterin/ Der Mitarbeiter wurde darauf hingewiesen, dass das Vorhaben mit Finanzmitteln aus dem Europ\"aischen Fonds für regionale Entwicklung (EFRE) kofinanziert wurde.

\CheckedBox{} Es wird best\"atigt, dass die angegebenen \glqq{}tats\"achlich geleisteten Arbeitsstunden\grqq{} außerhalb von Urlaubs-, Feier- und Krankheitstagen erbracht wurden.

\begin{tabular}{p{10cm} p{3cm} p{10cm}}
\rule{0pt}{1cm}\ifthenelse{\boolean{signature}}{\ifthenelse{\boolean{thedate}}{\stundenzettel@thedate}{\today} \hspace{1.5em} \includegraphics[height=1cm]{\stundenzettel@signature}}{} && \\ \cline{1-1} \cline{3-3}
\textbf{Datum und Unterschrift des/der Mitarbeiter(in)s} && \textbf{Datum und Unterschrift des/der Vorhabenleiter(in)s}
\end{tabular}
\pagebreak
\printendnotes
}

\endinput
