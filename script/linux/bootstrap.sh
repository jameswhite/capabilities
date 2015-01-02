#!/bin/bash
OPSCRAFTDIR=$(cd $(dirname $0); pwd)
if [ ! -z $(which lsb_release) ]; then
  DISTRIBUTION="$(lsb_release -si| tr 'A-Z' 'a-z')"
  CODENAME="$(lsb_release -sc | tr 'A-Z' 'a-z')"
fi

################################################################################
# Load the functions and variables from preferences
if [ -f "${OPSCRAFTDIR}/preferences" ]; then
    . ${OPSCRAFTDIR}/preferences
fi
if [ ! -z "${DISTRIBUTION}" ];then
    # Override the base preferences the Distributions default preferences (if necessary)
    if [ -f "${OPSCRAFTDIR}/${DISTRIBUTION}/preferences" ]; then
        . ${OPSCRAFTDIR}/${DISTRIBUTION}/preferences
    fi
    if [ ! -z "${CODENAME}" ];then
        # Override the distribution's preferences with the codename's preferences (if necessary)
        if [ -f "${OPSCRAFTDIR}/${DISTRIBUTION}/${CODENAME}/preferences" ]; then
          . ${OPSCRAFTDIR}/${DISTRIBUTION}/${CODENAME}/preferences
        fi
    fi
fi
# If there are domain preferences, override everything in favor of them
if [ ! -z "${DOMAINNAME}" ]; then
    if [ -f "${OPSCRAFTDIR}/$(DOMAINNAME)/preferences" ]; then
        . ${OPSCRAFTDIR}/$(DOMAINNAME)/preferences
    fi
fi


################################################################################
# these are defined in the preferences
echo "install_package $WEBSERVER $PKGMANAGER $VERSIONCONTROL $PGP $RNG"
install_package $WEBSERVER $PKGMANAGER $VERSIONCONTROL $PGP $RNG


################################################################################
# Optional Software Administrator (some non-root account to do things as)
export OPT_ADMIN='opt'
getent group  ${OPT_ADMIN} > /dev/null 2>&1 || groupadd -g 400 ${OPT_ADMIN}
getent passwd ${OPT_ADMIN} > /dev/null 2>&1 || useradd  -g 400 -u 400 -m -d /home/${OPT_ADMIN} -k /etc/skel -s /bin/bash ${OPT_ADMIN}

# randomize the OPT_ADMIN password
if [ ! -f /home/${OPT_ADMIN}/.secret ]; then
    secret=$(dd if=/dev/urandom bs=12 count=1|base64)
    echo "${OPT_ADMIN}:${passwd}"|chpasswd
    echo "The secret is [ ${secret} ]"
    echo "${secret}" > /home/${OPT_ADMIN}/.secret
fi
chmod 400 /home/${OPT_ADMIN}/.password

################################################################################
#
setup_random_number_generator
setup_packaging_utility
setup_package_repository
setup_version_control_system
setup_configuration_management_system

