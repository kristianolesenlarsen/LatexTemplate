# A pseudo-academic latex template
Look at `main.pdf` for a preview of the template.

## Changing the abstract
Is done by altering `02_chapters/01_Abstract.tex`.

## Changing the title
Is done by altering `01_preamble/title_page.tex` This is also where you can add authors and thank-you notes.

## Turning of section-wise equation numbering
Is done by removing the line `\numberwithin{equation}{section}` from `main.tex`.

## Custom reference commands
Are found in `01_preamble/ref_commands.tex`. These allow you to quickly refer to appendices, tables etc by writing for example `\Aref{apendixlabel}`.

## Line spacing
Is set in `main.tex` by the `\setstretch{}` command.

## Bibliography
Is by default stored in `references.bib`, you can add more bib-files if you need them.


## Random info
This is based on a template which I got through a friend. Unfortunately I haven't been able to figure out who was the original creator. If you think you know who made the original version please tell me :)
