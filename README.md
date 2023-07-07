# How to Use Bioconda (如何使用bioconda)


### 1 Download bioconda（下载bioconda）
We choose to use Mabafore for it is running more quickly.

这里选择下载Mambaforge，运行速度更快
```
#wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh  
wget https://github.com/conda-forge/miniforge/releases/download/22.9.0-2/Mambaforge-22.9.0-2-Linux-x86_64.sh
#https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-x86_64.sh
```
### 2 Installation（安装）

```
sh Mambaforge-Linux-x86_64.sh
source ~/.bashrc
```

### 3 Add a bioconda channel （添加软件源）

```
conda config --add channels bioconda 
conda config --add channels conda-forge
```

### 4 Installation Examples （安装软件)
```
#1 search (搜索软件)    
conda search bwa    

#2 install (安装软件)
conda install -y samtools=1.9 bcftools=1.9    #y for yes

#3 list (查看已安装软件)
conda list  

#4 update (升级软件)
conda update bwa  

#5 remove(移除软件)
conda remove bwa 
```

### 5 Common bioinformatics software（安装常用软件）
```
mamba install -y bwa 
mamba install -y samtools
mamba install -y bcftools
mamba install -y blast 
mamba install -y blat 
mamba install -y mummer 
mamba install -y mafft 
mamba install -y muscle 
mamba install -y lastz
mamba install -y sra-tools
mamba install -y seqkit
mamba install -y seqtk
mamba install -y bedtools
mamba install -y bedops
mamba install -y gfatools
mamba install -y circos
mamba install -y entrez-direct
mamba install -y emboss
```
### 6 QC（数据质控软件）
```
mamba install -y fastqc multiqc 
mamba install -y trimmomatic
mamba install -y fastp
```
### 7 Assembly（安装基因组拼接相关工具）
```
mamba install -y velvet
mamba install -y flye
mamba install -y miniasm
mamba install -y canu
mamba install -y megahit
mamba install -y spades
mamba install -y quast
mamba install -y racon
mamba install -y miniasm
mamba install -y nanopolish
```

### 8 Genome Analysis（安装基因功能分析软件）
```
mamba install -y prodigal
mamba install -y glimmer
mamba install -y augustus
mamba install -y trf
```

### 9 Update （升级软件）
```
# update conda
mamba update -n base -c defaults conda
# update all software
mamba update -y --all
```
### 10 Virtual Enviroment(查看虚拟环境)

```
# list env(查看环境)
conda env list

# create env（创建虚拟环境）
conda create -n test -y

# activate env（激活虚拟环境）
conda activate test

#install （安装软件）
mamba install -c bioconda bwa=0.7.15 samtools=1.6 bcftools=1.12

#exit env（退出虚拟环境）
conda deactivate
```
### 11 Python 2.7 （创建python 2.7环境）
```
# create a python2.7 env ()
conda create -n py27 python=2.7 -y

#activate python2.7 env (激活python2.7环境)
conda activate py27

# python version(查看python版本)
python -V

#install biosoftware in python 2.7 env (在python2.7环境中安装软件)
mamba install -y blast=2.7.1
mamba install -y metaphlan2
mamba install -y humann2
mamba install -y htseq
```


### 12 RNAseq (安装rnaseq分析软件)

```
# create a rnase env (创建RNAseq分析环境)
conda create -n rnaseq -y
conda activate rnaseq
# install biosoftware in rnaseq env(在rnaseq环境中安装软件)
mamba install -y gffread
mamba install -y fastqc
mamba install -u multiqc
mamba install -y fastp
mamba install -y parallel
mamba install -y hisat2
mamba install -y star
mamba install -y subread
mamba install -y salmon
mamba install -y kallisto
mamba install -y rsem
mamba install -y trinity
```
