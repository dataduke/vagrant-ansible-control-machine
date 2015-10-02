#!/usr/bin/env sh


echo ""
echo "********************************************************************************"
echo "  Updating and Installing Prerequisite Packages"
echo "********************************************************************************"
echo ""

yum --assumeyes update yum
yum --assumeyes --exclude=kernel* update

# python-devel is required to build the (optional) C extension for simplejson
yum --assumeyes install python-pip python-devel


echo ""
echo "********************************************************************************"
echo "  Installing Ansible"
echo "********************************************************************************"
echo ""

yum --assumeyes install ansible


echo ""
echo "********************************************************************************"
echo "  Finished with bootstrap.sh."
echo "********************************************************************************"
echo ""
