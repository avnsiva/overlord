#!/bin/sh
echo ""
echo "#######################################"
echo "  Releasing Overlord Distro (Community)"
echo "#######################################"
echo ""
read -p "Release Version: " RELEASE_VERSION
read -p "New Development Version: " DEV_VERSION
mvn -e --batch-mode -DreleaseVersion=$RELEASE_VERSION -DdevelopmentVersion=$DEV_VERSION clean release:prepare release:perform

