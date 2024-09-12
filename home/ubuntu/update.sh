#!/bin/bash
#---------------------------------------------------------
# written by: Lawrence McDaniel
#             https://lawrencemcdaniel.com
#
# date:       sep-2024
#
# usage: update all installed software.
#--------------------------------------------------------

# update standard ubuntu packages
sudo apt update
sudo apt upgrade -y

# update anything installed with brew: terraform terragrunt helm k9s
brew update
brew upgrade

