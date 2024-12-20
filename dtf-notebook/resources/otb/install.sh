#!/bin/bash
set -e

export OTB_RELEASE=9.1.0

# Copy start-notebook-otb
cp resources/otb/start-notebook-otb.sh /usr/local/bin
chmod +x /usr/local/bin/start-notebook-otb.sh

# Install dependencies 
apt-get update --quiet
DEBIAN_FRONTEND=noninteractive apt-get install --yes --quiet --no-install-recommends \
    cmake \
    gcc \
    g++ \
    swig \
    findutils \
    file \
    python3-gdal


# Pull and extract otb
curl https://www.orfeo-toolbox.org/packages/archives/OTB/OTB-$OTB_RELEASE-Linux.tar.gz -o OTB-$OTB_RELEASE-Linux.tar.gz
tar xvf OTB-$OTB_RELEASE-Linux.tar.gz --one-top-level="/opt/otb"
rm OTB-$OTB_RELEASE-Linux.tar.gz
chmod 755 /opt/otb
chown -R $NB_USER:$NB_USER /opt/otb/
