# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="rkwifi_fw"
PKG_VERSION="6e182b9"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/JN-Chen/rkwifi_fw"
PKG_URL="https://github.com/JN-Chen/rkwifi_fw.git"
PKG_DEPENDS_HOST="toolchain:host"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="rkwifi_fw"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  echo "install to ${INSTALL}"
  mkdir -p ${INSTALL}/rkwifi/firmware
  cp  ${PKG_BUILD}/*.hcd ${INSTALL}/rkwifi/firmware/
  cp  ${PKG_BUILD}/*.bin ${INSTALL}/rkwifi/firmware/
  cp  ${PKG_BUILD}/*.txt ${INSTALL}/rkwifi/firmware/
  cp  ${PKG_BUILD}/*.cal ${INSTALL}/rkwifi/firmware/
  cp  ${PKG_BUILD}/*.map ${INSTALL}/rkwifi/firmware/
}

post_install() {  
  echo "post install"
	enable_service rkwifi_bt.service
}
