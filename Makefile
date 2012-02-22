include /usr/local/share/luggage/luggage.make

TITLE=Make_Recovery_HD
PACKAGE_NAME=Make_Recovery_HD
REVERSE_DOMAIN=com.grahamgilbert
PAYLOAD=\
	curl-dmg \
	pack-recovery-update \
	pack-script-postflight
	
DMGURL=http://support.apple.com/downloads/DL1464/en_US/RecoveryHDUpdate.dmg
DMGNAME=RecoveryHDUpdate.dmg

pack-recovery-update: l_root
	@sudo mkdir -p ${WORK_D}/tmp
	@sudo ${DITTO} ./${DMGNAME} ${WORK_D}/tmp
	
curl-dmg:	
	curl -o -L "${DMGURL}" "${DMGNAME}"
	#while ! curl -C - -O "${DMGURL}"; do sleep 10; done