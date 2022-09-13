#!/bin/sh

sudo docker run \
                            -e "BRANCH_NAME=lineage-17.1" \
                            -e "DEVICE_LIST=hlte" \
                            -e "SIGN_BUILDS=true" \
                            -e "SIGNATURE_SPOOFING=restricted" \
                            -e "CUSTOM_PACKAGES=GmsCore GsfProxy FakeStore MozillaNlpBackend NominatimNlpBackend com.google.android.maps.jar FDroid FDroidPrivilegedExtension BromiteWebView additional_repos.xml" \
                            -v "/home/user/lineage:/srv/src" \
                            -v "/home/user/zips:/srv/zips" \
                            -v "/home/user/logs:/srv/logs" \
                            -v "/home/user/cache:/srv/ccache" \
                            -v "/home/user/keys:/srv/keys" \
                            -v "/home/user/manifests:/srv/local_manifests" \
                            lineageos4microg/docker-lineage-cicd
