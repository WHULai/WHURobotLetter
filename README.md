# WHU Letter LaTeX Template

An unofficial LaTeX letter template for School of Robotics, Wuhan University (WHU) students and faculty.

This template is designed to help you produce professional, formal letters with the Wuhan University branding, suitable for academic recommendations, cover letters, and official correspondence.

## Features

- **WHU Branding**: Pre-configured with the Wuhan University logo and color scheme.
- **Easy to Use**: Simple commands for address, signature, and footer customization.
- **Cross-Platform**: Compatible with standard TeX distributions (TeX Live, MacTeX) on macOS, Windows, and Linux.
- **Signature Support**: Automatic signature image integration with fallback options.

## Acknowledgements & Attribution

This project is a derivative work based on the **Departmental LaTeX Letter Class** provided by the **Mathematical Institute, University of Oxford**.

- **Original Source**: [Oxford Mathematical Institute - Letter Writing with LaTeX](https://www.maths.ox.ac.uk/members/it/faqs/latex/letters)
- **Original Author**: K. A. Gillow (2010)

We gratefully acknowledge the Oxford Mathematical Institute for providing the original `oxmathletter` class, which served as the structural foundation for this adaptation.

*Note: This adaptation replaces Oxford-specific assets (logos, proprietary fonts) with generic or WHU-specific equivalents to comply with licensing and usage rights.*

## Installation & Usage

1. Download or clone this repository.
2. Ensure you have a standard LaTeX distribution installed (e.g., MacTeX on macOS).
3. Open `main.tex` to see how to use the class.
4. (Optional) Add your signature:
   - Create a file named `mysignature.png` in the same directory as `main.tex`
   - The template will automatically use `mysignature.png` if it exists
   - Otherwise, it will use `signature_example.png` as fallback
   - If neither exists, no signature image will be shown
   - **Note:** For privacy reasons, do not commit your real signature to a public repository
5. Compile using **XeLaTeX or PDFLaTeX**:

```bash
pdflatex main.tex
```


## License

This project is licensed under the **MIT License** - see the [LICENSE](https://www.google.com/search?q=LICENSE&authuser=1) file for details.

The original code structure is adapted from the `oxmathletter` class, used here under fair use for educational and open-source adaptation purposes.
