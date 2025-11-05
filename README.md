# CSB2025 - Practical Material for the Computational Systems Biology course, Fall 2025, session 9

This repository contains the practical material for Session 9 of the Computational Systems Biology (CSB 2025) course. It includes hands-on materials demonstrating the use of shell scripting, Python, and R for systems biology analyses.

## Contents

- `additional_files/` — Directory containing supplementary data and resources
  - `PROFILE/` — Files related to PROFILE analysis
  - `PROFILE_v2/` — Updated version of PROFILE analysis files
- `Setting-up.txt` — Installation notes and environment setup instructions
- `LICENSE` — License information for the repository

## Requirements

To reproduce the analyses in this session, you'll need:

1. Shell environment (Bash/PowerShell)
   - Basic command line tools
   - Git for version control

2. Python environment
   - Python 3.8 or higher
   - Key packages: numpy, pandas, matplotlib, seaborn
   - Jupyter notebooks (optional, for interactive analysis)

3. R environment
   - R 4.0 or higher
   - Required R packages will be listed in the setup instructions

### Environment Setup

The following steps will guide you through setting up your environment for Tasks 4 and 5:

#### 1. Clone Required Repositories

```bash
# Clone main repositories
git clone https://github.com/sysbio-curie/PROFILE.git
git clone https://github.com/ArnauMontagud/PROFILE_v2.git
```

#### 2. Set Up Data Files

```bash
# Navigate to data directory
cd PROFILE/Data

# Download and extract data files
wget https://bitbucket.org/Arnau_Montagud/profile_repo_data/get/7dfdff0ea701.zip

# Install unar for extraction (if not already installed)
sudo apt install unar

# Extract and organize files
unar 7dfdff0ea701.zip
mv ./Arnau_Montagud-profile_repo_data-7dfdff0ea701/METABRIC/* ./METABRIC/
unar -o ./METABRIC/ ./METABRIC/data_CNA.7z
unar -o ./METABRIC/ ./METABRIC/data_expression.7z
```

#### 3. Python Setup

You can re-use the Python environment setup (using conda) from the previous session or install the required packages

```bash

conda activate CSB2025
conda install numpy pandas matplotlib seaborn jupyter

# Install required Python package
pip install argparse
```

#### 4. R Installation (for WSL2)

If you need to install R on WSL2, follow these steps:

```bash
# Update package indices
sudo apt update -qq

# Install required helper packages
sudo apt install --no-install-recommends software-properties-common dirmngr

# Add R repository signing key
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc

# Add CRAN repository
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

# Install R
sudo apt install --no-install-recommends r-base
```

Note: To verify the R repository key, you can run:

```bash
gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
```

The fingerprint should be: E298A3A825C0D65DFD57CBB651716619E084DAB9

You will need to install some libraries upon opening the R files.

#### 5. Additional Setup

- Copy the files from the `additional_files` folder to their corresponding folders as needed for your analysis.
- Make sure all dependencies are properly installed before proceeding with the exercises.

## Session Overview

This session covers:

- Shell scripting for data processing and analysis automation
- Python-based analysis of biological networks
- R-based statistical analysis and visualization
- Integration of multiple tools and languages in bioinformatics workflows

## Notebook tasks / exercises

The notebook contains several hands-on tasks. Highlights:

- **Task 4**: Obtain the profiles of GDSC cell lines to contextualise the PKN Boolean models.
- **Task 5**: Run MaBoSS simulations on the personalised PKN model for different cell lines.
- **Task 6**: Version the heatmap figure with the combination of drugs.

## License

This repository is released under the BSD 3-Clause License. See `LICENSE` for details.

## Contact / support

If you find issues or need help, open an issue in the repository or contact the course instructor.

## Citation

If you use materials from this repository, please cite:
[Citation information to be added by course instructors]
