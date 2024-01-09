#!/bin/sh

# save current working dir
cwd=$(pwd)

mkdir ~/github
cd ~/github

git clone git@github.com:stw83/turnier-react.git
git clone git@github.com:stw83/optionen-react.git
git clone git@github.com:stw83/optionen-backend.git
git clone git@github.com:stw83/turnier.git
git clone git@github.com:stw83/tatortFolder.git
git clone git@github.com:stw83/p2p2pp.git
git clone git@github.com:stw83/wordl.git
git clone git@github.com:stw83/partnerTunrier.git
git clone git@github.com:stw83/setupArch.git
git clone git@github.com:stw83/intellij-settings-bertschi.git
git clone git@github.com:stw83/deployment.git
git clone git@github.com:stw83/partnerturnier.git
git clone git@github.com:stw83/wordlSolver.git
git clone git@github.com:stw83/turnier_haswell.git

cd $cwd