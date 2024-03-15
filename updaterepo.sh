#!/bin/bash

# $releasever:7
# $basearch:x86_64
# $infra:stock

yum-complete-transaction --cleanup-only

reposync --repoid=base    --download_path=/data/local-repository/centos/7/x86_64 --downloadcomps --newest-only
reposync --repoid=epel    --download_path=/data/local-repository/centos/7/x86_64 --downloadcomps --newest-only
reposync --repoid=extras  --download_path=/data/local-repository/centos/7/x86_64 --downloadcomps --newest-only
reposync --repoid=updates --download_path=/data/local-repository/centos/7/x86_64 --downloadcomps --newest-only
createrepo /data/local-repository/centos/7/x86_64/base
createrepo /data/local-repository/centos/7/x86_64/epel
createrepo /data/local-repository/centos/7/x86_64/extras
createrepo /data/local-repository/centos/7/x86_64/updates



reposync --repoid=pgdg-common --download_path=/data/local-repository/PostgreSQL/7/x86_64 --downloadcomps --newest-only
reposync --repoid=pgdg10      --download_path=/data/local-repository/PostgreSQL/7/x86_64 --downloadcomps --newest-only
reposync --repoid=pgdg11      --download_path=/data/local-repository/PostgreSQL/7/x86_64 --downloadcomps --newest-only
reposync --repoid=pgdg12      --download_path=/data/local-repository/PostgreSQL/7/x86_64 --downloadcomps --newest-only
reposync --repoid=pgdg13      --download_path=/data/local-repository/PostgreSQL/7/x86_64 --downloadcomps --newest-only
reposync --repoid=pgdg14      --download_path=/data/local-repository/PostgreSQL/7/x86_64 --downloadcomps --newest-only
reposync --repoid=pgdg15      --download_path=/data/local-repository/PostgreSQL/7/x86_64 --downloadcomps --newest-only
createrepo /data/local-repository/PostgreSQL/7/x86_64/pgdg-common
createrepo /data/local-repository/PostgreSQL/7/x86_64/pgdg10
createrepo /data/local-repository/PostgreSQL/7/x86_64/pgdg11
createrepo /data/local-repository/PostgreSQL/7/x86_64/pgdg12
createrepo /data/local-repository/PostgreSQL/7/x86_64/pgdg13
createrepo /data/local-repository/PostgreSQL/7/x86_64/pgdg14
createrepo /data/local-repository/PostgreSQL/7/x86_64/pgdg15


reposync --repoid=pgpool44      --download_path=/data/local-repository/pgpool/7/x86_64/ --downloadcomps --newest-only
createrepo /data/local-repository/pgpool/7/x86_64/pgpool44
