# WHU Letter Templates

An unofficial set of letter templates for School of Robotics, Wuhan University (WHU) students and faculty.

This repository is designed to help you produce professional, formal letters for WHU-related academic and official correspondence. It currently includes a WHU-branded LaTeX letter class and a Typst letter template adapted from Modern CV.

## Features

- **WHU Branding**: The LaTeX class is pre-configured with the Wuhan University logo, header, and footer styling.
- **Two Workflows**: Includes a LaTeX class (`whurobotletter.cls`) and a Typst template (`typst-letter-template.typ` and `typst-letter-example.typ`).
- **Formal Letter Layout**: Supports recipient blocks, subject lines, signatures, and footer metadata for regular correspondence.
- **Typst Letter Adaptation**: Refactors the Modern CV cover-letter component into a general-purpose letter template with multilingual labels and a simplified letter-oriented interface.

## Acknowledgements & Attribution

This project contains derivative work based on two upstream templates:

- **LaTeX Source**: [Oxford Mathematical Institute - Letter Writing with LaTeX](https://www.maths.ox.ac.uk/members/it/faqs/latex/letters)
- **LaTeX Original Author**: K. A. Gillow (2010)
- **Typst Source**: [Modern CV](https://github.com/ptsouchlos/modern-cv), originally developed by DeveloperPaul123
- **Typst Package**: [modern-cv on Typst Universe](https://typst.app/universe/package/modern-cv/)

We gratefully acknowledge the Oxford Mathematical Institute for providing the original `oxmathletter` class, which served as the structural foundation for the LaTeX version. We also acknowledge DeveloperPaul123 (`ptsouchlos`) for creating Modern CV, whose cover-letter component provided the design basis for the Typst adaptation included here.

*Note: These adaptations replace Oxford-specific assets and restructure the Modern CV cover-letter interface to better suit WHU-branded and general-purpose formal correspondence.*

## Installation & Usage

1. Download or clone this repository.
2. Ensure you have the toolchain needed for the workflow you want to use:
   - For LaTeX: a standard TeX distribution such as TeX Live, MacTeX, or MiKTeX
   - For Typst: the Typst CLI or the Typst web app
3. Choose the template you want to edit:
   - `latex-letter-example.tex` demonstrates the LaTeX letter class
   - `typst-letter-example.typ` demonstrates the Typst letter template
4. (Optional) Add your signature:
   - For LaTeX, create a file named `mysignature.png` in the same directory as `latex-letter-example.tex`
   - The LaTeX class will automatically use `mysignature.png` if it exists, otherwise `signature_example.png`
   - The Typst sample uses `signature_example.png` in the closing block; replace that file or update `typst-letter-template.typ` if you want a different signature image
   - **Note:** For privacy reasons, do not commit your real signature to a public repository
5. Compile using the appropriate command:

### LaTeX

```bash
pdflatex latex-letter-example.tex
```

### Typst

```bash
typst compile typst-letter-example.typ
```

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

The repository includes adaptations of the `oxmathletter` class and the Modern CV Typst template. Please retain appropriate attribution when redistributing derivative work.
