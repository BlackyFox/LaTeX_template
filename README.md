# LaTeX_template            [![Build Status](https://travis-ci.org/BlackyFox/LaTeX_template.svg?branch=master)](https://travis-ci.org/BlackyFox/LaTeX_template)
Personnal LaTeX template

## Compilation

Compilation is easy right here. You are provided with a makefile helping you manage the bibliography.In this ```makefile``` change the 2 firsts variables (main and bib) to satisfy your filenames.

Make sure you have pandoc installed. If not, run:
```bash
sudo apt-get install pandoc
```

Then, you are good to go!
 * ```make all``` for creating the pdf, docx, rtf and html files
 * ```make main.pdf``` for creating only the pdf file
 * ```make main.docx``` for creating only the docx file
 * ```make main.rtf``` for creating only the rtf file
 * ```make main.html``` for creating only the html file
 * ```make organise``` to move the rendered files into the ```Rendus/``` directory
 * ```make clean``` to delete every temporary files

