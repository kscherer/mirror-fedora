#/bin/bash
. $(dirname $0)/mirror-fedora.conf.$HOSTNAME
rsync -av --copy-links --delete --delete-delay \
  rsync://apt.puppetlabs.com/packages/apt/ \
  ${PUPPETLABS_MIRROR_ROOT}/apt
