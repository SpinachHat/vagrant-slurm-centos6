#!/bin/bash

sh /vagrant/copy-slurm.sh
ssh node1 "sh /vagrant/copy-slurm.sh"
ssh node2 "sh /vagrant/copy-slurm.sh"
ssh node3 "sh /vagrant/copy-slurm.sh"
ssh node4 "sh /vagrant/copy-slurm.sh"
