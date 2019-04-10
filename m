Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25325E00B5C; Wed, 10 Apr 2019 08:23:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jeff.dagenais[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37201E00B1B
	for <poky@yoctoproject.org>; Wed, 10 Apr 2019 08:23:45 -0700 (PDT)
Received: by mail-qt1-f194.google.com with SMTP id x12so3305407qts.7
	for <poky@yoctoproject.org>; Wed, 10 Apr 2019 08:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=pt09Pg7G068W+0VkwZlHIQ4jfYnBEXt+WBgVSRpSZp8=;
	b=RwLNr1JZBc7WtFeubUs6EjG7fieoalimNW11NWULWc7ThyLhsifhePSnv7XFDh6gpD
	uPSHueuCf820NePA1J0LNmyCL/xg/AspvlGaYmtw0rJiro5yLbLbNbWADRfvBsfTbuJP
	S9hQ++wiza19rXsatB+M+h6mepDhkK//UNqgBaongXSqbBs18RaWEboY4/c+S5x02G5c
	Vg/ttAbZejTLsuH0MXbvUDZ1IuMzuGx+2m7mH8UqDhcrBgVa38hNncoTA2N+JqZo0UEl
	gMp8dmzggdg7ld5MBDYfR7Zc0hqOJDCIPN3aHs61SJYXbjb8Nc3VZ27bewMllH+f45Fk
	UXwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=pt09Pg7G068W+0VkwZlHIQ4jfYnBEXt+WBgVSRpSZp8=;
	b=GGA363j31Wyg011N1azR2dn5nkVtugh24Vk99JnK/o6TZq8W/IoxnKh1z9L5y+fmoU
	Kiun5im3PXW27U90CkrdkeWtaIyTdvTDrKyJPZ625rEYQAcXybU6qKyWfIiHPLhQGuqn
	ztV44UXDYCEdpcSkMr/FoXvAb9YvXb6L7On1S8ge4o2OzxEawLjDq7hjpxYy7aQ5gAa7
	QI1Hl1PvylE7GXUVPK0ciCkhYqf/aEYGozRPj5L+DlbTeB7Ce3T2tjM68P+eY8DBwmGe
	zFB/avWc2EOJZBR2VF0TKi203iAomisgGXHd57UiTsmOcPL5+m0IxDxapHOSJBXNQ0LR
	DKhw==
X-Gm-Message-State: APjAAAWkL8DILqhCou8wXVOz0ZUNF84OqEPJSLUVCaACwnkHjOTS6YnV
	0WCj/16GzBNaxm8FcanhJ8mRSCQmm7U=
X-Google-Smtp-Source: APXvYqznTzskm3IJlbQcgxQupKV01FI19nuRKuZ4Ts6iz9YVFRIcpVdjXLhrcwmfIoVYJuncQpTCag==
X-Received: by 2002:a0c:ef06:: with SMTP id t6mr36452209qvr.125.1554909824137; 
	Wed, 10 Apr 2019 08:23:44 -0700 (PDT)
Received: from jfddesk.Sonatest.net
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	x24sm9840669qtm.65.2019.04.10.08.23.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 10 Apr 2019 08:23:43 -0700 (PDT)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
To: poky@yoctoproject.org
Date: Wed, 10 Apr 2019 11:23:19 -0400
Message-Id: <20190410152319.3323-1-jeff.dagenais@gmail.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH v1] weston: introduce meson build on v5.0.94
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Apr 2019 15:23:46 -0000

Signed-off-by: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
---
 meta/recipes-graphics/wayland/weston_git.bb | 102 ++++++++++++++++++++++++++++
 1 file changed, 102 insertions(+)
 create mode 100644 meta/recipes-graphics/wayland/weston_git.bb

diff --git a/meta/recipes-graphics/wayland/weston_git.bb b/meta/recipes-graphics/wayland/weston_git.bb
new file mode 100644
index 0000000000..f591550f9a
--- /dev/null
+++ b/meta/recipes-graphics/wayland/weston_git.bb
@@ -0,0 +1,102 @@
+SUMMARY = "Weston, a Wayland compositor"
+DESCRIPTION = "Weston is the reference implementation of a Wayland compositor"
+HOMEPAGE = "http://wayland.freedesktop.org"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d79ee9e66bb0f95d3386a7acae780b70 \
+                    file://libweston/compositor.c;endline=27;md5=6c53bbbd99273f4f7c4affa855c33c0a"
+
+SRC_URI = "git://github.com/wayland-project/weston \
+           file://weston.png \
+           file://weston.desktop \
+           file://xwayland.weston-start \
+"
+
+S = "${WORKDIR}/git"
+SRCREV = "cc64cc3717ab39882df37bc244d1ac6cf8526f93"
+PV = "5.0.94+git${SRCPV}"
+# from meson.build:libweston_major
+WESTON_MAJOR_VERSION = "6"
+
+UPSTREAM_CHECK_URI = "https://wayland.freedesktop.org/releases.html"
+
+inherit meson useradd distro_features_check
+# depends on virtual/egl
+REQUIRED_DISTRO_FEATURES = "opengl"
+
+DEPENDS = "libxkbcommon pixman cairo glib-2.0 jpeg"
+DEPENDS += "wayland wayland-protocols libinput virtual/egl pango wayland-native"
+
+EXTRA_OEMESON = " \
+                -Dbackend-default=auto \
+                -Dimage-jpeg=true \
+		-Dsimple-dmabuf-drm= \
+                "
+PACKAGECONFIG ??= "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'drm fbdev egl', '', d)} \
+                   ${@bb.utils.contains('DISTRO_FEATURES', 'x11 wayland', 'xwayland', '', d)} \
+                   ${@bb.utils.filter('DISTRO_FEATURES', 'systemd x11', d)} \
+                   launch tools shell-desktop demo-clients simple-clients"
+
+WESTON_TOOLS ?= "calibrator,debug,info,terminal,touch-calibrator"
+
+#
+# see https://github.com/wayland-project/weston/raw/master/meson_options.txt
+#
+PACKAGECONFIG[drm] = "-Ddrm-compositor=true,-Ddrm-compositor=false,drm udev virtual/mesa virtual/libgbm mtdev"
+PACKAGECONFIG[vaapi] = "-Dbackend-drm-screencast-vaapir=true,-Dbackend-drm-screencast-vaapi=false,libva drm"
+PACKAGECONFIG[headless] = "-Dbackend-headless=true,-Dbackend-headless=false,"
+PACKAGECONFIG[rdp] = "-Dbackend-rdp=true,-Dbackend-rdp=false,freerdp"
+PACKAGECONFIG[screenshare] = "-Dscreenshare=true -Dshell-fullscreen=true,-Dscreenshare=false"
+PACKAGECONFIG[wayland] = "-Dbackend-wayland=true,-Dbackend-wayland=false,virtual/mesa"
+PACKAGECONFIG[x11] = "-Dbackend-x11=true,-Dbackend-x11=false,libxcb"
+PACKAGECONFIG[xwayland] = "-Dxwayland=true,-Dxwayland=false,libxcb libxcursor"
+PACKAGECONFIG[systemd] = "-Dlauncher-logind=true,-Dlauncher-logind=false,systemd dbus"
+PACKAGECONFIG[remote] = "-Dremoting=true,-Dremoting=false, gstreamer"
+PACKAGECONFIG[shell-desktop] = "-Dshell-desktop=true,-Dshell-desktop=false"
+PACKAGECONFIG[shell-fullscreen] = "-Dshell-fullscreen=true,-Dshell-fullscreen=false"
+PACKAGECONFIG[shell-ivi] = "-Dshell-ivi=true,-Dshell-ivi=false"
+PACKAGECONFIG[fbdev] = "-Dbackend-fbdev=true,-Dbackend-fbdev=false,libinput mtdev udev (>=136)"
+PACKAGECONFIG[egl] = "-Drender-gl=true,-Drender-gl=false"
+PACKAGECONFIG[lcms] = "-Dcolor-management-lcms=true,-Dcolor-management-lcms=false,lcms"
+PACKAGECONFIG[colord] = "-Dcolor-management-colord=true,-Dcolor-management-colord=false,lcms"
+PACKAGECONFIG[launch] = "-Dweston-launch=true,-Dweston-launch=false,drm libpam systemd"
+PACKAGECONFIG[webp] = "-Dimage-webp=true,-Dimage-webp=false,libwebp"
+PACKAGECONFIG[tools] = "-Dtools=${WESTON_TOOLS},-Dtools=,"
+PACKAGECONFIG[demo-clients] = "-Ddemo-clients=true,-Ddemo-clients=false"
+PACKAGECONFIG[simple-clients] = "-Dsimple-clients=all,-Dsimple-clients="
+PACKAGECONFIG[wcap-decode] = "-Dwcap-decode=true,-Dwcap-decode=false"
+PACKAGECONFIG[test-junit-xml] = "-Dtest-junit-xml=true,-Dtest-junit-xml=false,libxml"
+
+do_install_append() {
+	# If X11, ship a desktop file to launch it
+	if [ "${@bb.utils.filter('DISTRO_FEATURES', 'x11', d)}" ]; then
+		install -d ${D}${datadir}/applications
+		install ${WORKDIR}/weston.desktop ${D}${datadir}/applications
+
+		install -d ${D}${datadir}/icons/hicolor/48x48/apps
+		install ${WORKDIR}/weston.png ${D}${datadir}/icons/hicolor/48x48/apps
+	fi
+
+	if [ "${@bb.utils.contains('PACKAGECONFIG', 'xwayland', 'yes', 'no', d)}" = "yes" ]; then
+		install -Dm 644 ${WORKDIR}/xwayland.weston-start ${D}${datadir}/weston-start/xwayland
+	fi
+}
+
+PACKAGES += "${@bb.utils.contains('PACKAGECONFIG', 'xwayland', '${PN}-xwayland', '', d)} \
+             libweston-${WESTON_MAJOR_VERSION} ${PN}-examples"
+
+FILES_${PN} = "${bindir}/weston ${bindir}/weston-terminal ${bindir}/weston-info ${bindir}/weston-launch ${bindir}/wcap-decode ${libexecdir} ${libdir}/${BPN}/*.so ${datadir}"
+
+FILES_libweston-${WESTON_MAJOR_VERSION} = "${libdir}/lib*${SOLIBS} ${libdir}/libweston-${WESTON_MAJOR_VERSION}/*.so"
+SUMMARY_libweston-${WESTON_MAJOR_VERSION} = "Helper library for implementing 'wayland window managers'."
+
+FILES_${PN}-examples = "${bindir}/*"
+
+FILES_${PN}-xwayland = "${libdir}/libweston-${WESTON_MAJOR_VERSION}/xwayland.so"
+RDEPENDS_${PN}-xwayland += "xserver-xorg-xwayland"
+
+RDEPENDS_${PN} += "xkeyboard-config"
+RRECOMMENDS_${PN} = "weston-conf liberation-fonts"
+RRECOMMENDS_${PN}-dev += "wayland-protocols"
+
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM_${PN} = "--system weston-launch"
-- 
2.11.0


