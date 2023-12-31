
########################################################
#               利用Bioconda管理生物软件         #
########################################################
#软件官网
http://bioconda.github.io/
#软件搜索
https://anaconda.org/bioconda/repo

#=========================
#      bioconda软件安装  #
#=========================
#1 下载biconda
#wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh  
wget https://github.com/conda-forge/miniforge/releases/download/22.9.0-2/Mambaforge-22.9.0-2-Linux-x86_64.sh

#https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-x86_64.sh
#2 安装
sh Mambaforge-Linux-x86_64.sh
source ~/.bashrc
#3 添加软件源
conda config --add channels bioconda 
conda config --add channels conda-forge

#安装软件(bwa，samtools，bcftools软件为例)
#搜索软件    
conda search bwa    
#安装软件    
conda install -y samtools=1.9 bcftools=1.9    
#查看已安装软件  
conda list  
#升级软件  
conda update bwa  
#移除软件  
conda remove bwa 

#重新初始化
conda init 
#刷新设置
source ~/.bashrc


#=========================
#        安装常用软件    #
#=========================
#利用mamba安装软件
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

#安装数据质控软件
mamba install -y fastqc multiqc 
mamba install -y trimmomatic
mamba install -y fastp

#安装基因组拼接相关工具
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

#安装基因功能分析软件
mamba install -y prodigal
mamba install -y glimmer
mamba install -y augustus
mamba install -y trf

#=========================
#     升级bioconda软件    #
#=========================
# 更新基础conda
mamba update -n base -c defaults conda
#更新全部包
mamba update -y --all

#####################################################
#                   七十三、虚拟环境                 #
#####################################################
#=========================
#     1 查看虚拟环境      #
#=========================
conda env list
#创建虚拟环境
conda create -n test -y
#激活虚拟环境
conda activate test
#安装软件
mamba install -c bioconda bwa=0.7.15 samtools=1.6 bcftools=1.12
#退出虚拟环境
conda deactivate

#=========================
#   2 创建python 2.7环境   #
#=========================

conda create -n py27 python=2.7 -y
#查看现有虚拟环境
conda env list
#激活python2.7环境
conda activate py27
#查看python版本
python -V

#在python2中安装软件
mamba install -y blast=2.7.1
mamba install -y metaphlan2
mamba install -y humann2
mamba install -y htseq

#=========================
#    3 安装rnaseq分析软件   #
#=========================
#创建RNAseq分析环境
conda create -n rnaseq -y
conda activate rnaseq
#安装软件
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

#=========================
#  4 普通用户使用虚拟环境   #
#=========================
#查看管理员虚拟环境
ll /ifs1/Software/miniconda3/envs/
#激活环境
conda activate /ifs1/Software/miniconda3/envs/rnaseq/
#查看软件
conda list
#退出环境
conda deacivate

#直接运行py27中的python
conda run -n py27 python --version

#5 导出虚拟环境
conda env export -n rnaseq >rnaseq.yaml
#通过配置文件安装软件
conda env create -n rnaseq --file rnaseq.yaml

#6 移除虚拟环境
conda env remove -n rnaseq


#=========================
#      5 重置默认环境     #
#=========================
#1删除bioconda
#rm -rf ~/miniconda3/
rm -rf ~/mambaforge
#2删除bioconda配置文件
rm ~/.condarc

#3 替换默认.bashrc文件
cp /etc/skel/.bashrc ./

#4 刷新设置
source ~/.bashrc

