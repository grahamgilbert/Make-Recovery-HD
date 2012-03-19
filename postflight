#!/bin/bash
echo "attaching the disk image"
hdiutil attach /tmp/RecoveryHDUpdate.dmg

echo "expanding the first package"
pkgutil --expand /Volumes/Mac\ OS\ X\ Lion\ Recovery\ HD\ Update/RecoveryHDUpdate.pkg /tmp/RecoveryHDUpdate

echo "attaching the second disk image"
hdiutil attach /tmp/RecoveryHDUpdate/RecoveryHDUpdate.pkg/RecoveryHDMeta.dmg

echo "partitioning"
/tmp/RecoveryHDUpdate/RecoveryHDUpdate.pkg/Scripts/Tools/dmtest ensureRecoveryPartition / /Volumes/Recovery\ HD\ Update/BaseSystem.dmg 0 0 /Volumes/Recovery\ HD\ Update/BaseSystem.chunklist

hdiutil eject /Volumes/Recovery\ HD\ Update
hdiutil eject /Volumes/Mac\ OS\ X\ Lion\ Recovery\ HD\ Update