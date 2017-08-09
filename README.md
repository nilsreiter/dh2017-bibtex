# DH2017 BibTeX Entries

This repository contains all the abstracts from the DH2017 conference in [BibTeX](http://www.bibtex.org) format. Most reference managers can handle BibTeX files.

No guarantee on correctness, use as you like.

## Example

This example shows what information is included in the files:

```bibtex
@inproceedings{Reiter:2017dh,
	Title={{A Shared Task for a Shared Goal: Systematic Annotation of Literary Texts}},
	Author={Reiter, Nils and  Gius, Evelyn and  Strötgen, Jannik and  Willand, Marcus},
	Booktitle={Book of Abstracts of DH2017},
	Url={https://dh2017.adho.org/abstracts/192/192.pdf},
	Address={Montréal, Canada},
	Month={August},
	Keywords={shared task, narratology, annotation guidelines},
	Organization={Alliance of Digital Humanities Organizations},
	Year={2017}
}
```

## Conversion

The conversion is done based on the list of abstracts posted on [this page](https://dh2017.adho.org/program/abstracts/). I extracted the list element (`ul#submissions`) and ran the perl script called `convert.pl` on it.

