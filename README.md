# Denis' Latex Template

To compile your document, run `make compile-pdf` from the root of your project.

## File Structure

`compilation/main.tex` is the file that is actually compiled. It contains most of the settings and styles and invokes `content/body.tex` to get its content.

`content/body.tex` is where the document is structered. It sources slow changing parts from `content/fix/*` and, for smaller documents (less than 25 pages) should contain all their content: all the sections and appendices. 

In `content/fix/frontmatter.tex`, you can control all the stuff that usually comes before the main body of a document.

I assume you have your bibliography living in your home directory (`~/references.bib`). Every time you run `make compile-pdf`, the current version of the bib file living in your home directory is copied to the project folder. This assures the PDF is compiled with the latest version of your references.

## Gotchas

* In LaTeX, the paths must be relative to the folder where the main document is located, not to the folder where the file which specifies the path is.

```
main_file/
    main_file.tex
content/
    figs/
        nice_plot.png
    var/
        text_explaining_plot.tex
```

In the folder structure above, if you want to inclulde `nice_plot.png` in `text_explaining_plot.tex`, this is how you specify the path: `../content/figs/nice_plot.png`, i.e. you must assume you are referencing it from `main_file.tex`. Not a nice thing, since it makes restructuring your project a nightmare.


