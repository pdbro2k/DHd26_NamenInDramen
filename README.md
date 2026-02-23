# DHd26_NamenInDramen
Data and Code related to the Poster ["Namen in Dramen: Es klingt so, als wurden Berufe häufiger"](https://doi.org/10.5281/zenodo.18702939) presented at DHd 2026 illustrating how two quite distinct datasets can be related to each other.

# Requirements

- all scripts where developed and tested on Python 3.12.9
- install dependencies from `requirements.txt` (e.g. by using [venv](https://docs.python.org/3/library/venv.html#creating-virtual-environments))

# Dir Structure

```bash
DHd26_NamenInDramen
│
├───data
│   ├───dfd_aggregated # CSV files derived from DFD annotations for training and testing
│   ├───dfd_training # annotations extracted from the DFD 
│   └───gerdracor_names # Names extracted from the gerdracor corpus stored as a TSV file with the columns "text" (the source drama ID), "date" (the printing date of the source drama) and "name" (the name)
├───models # serialized classifiers
└───scripts
    ├───jupyter # Jupyter notebooks for training and analysis
    └───xql # An XQL script to derive GerDraCor names from the original corpus
```

# Data

The analyzed data is derived from (1) the German drama corpus [GerDraCor](https://github.com/dracor-org/gerdracor) and (2) the surname dictionary [DFD](https://www.namenforschung.net/dfd/woerterbuch/liste/).

# Citation

```
@inproceedings{brookshire_namen_2026,
    author      = {Brookshire, Patrick Daniel},
    title       = {Namen in {Dramen}: {Es} klingt so, als wurden {Berufe} häufiger},
    booktitle   = {Book of Abstracts - DHd 2026}
    month       = feb,
    year        = 2026,
    publisher   = {Zenodo},
    doi         = {10.5281/zenodo.18702939},
    url         = {https://zenodo.org/records/18702939},
    pages       = {575--577}
}
```
