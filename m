Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 74B564C80050
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 09:04:26 -0600 (CST)
Received: by wwb31 with SMTP id 31so6327690wwb.11
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 07:04:25 -0800 (PST)
Received: by 10.216.37.8 with SMTP id x8mr3244467wea.30.1293030264783;
	Wed, 22 Dec 2010 07:04:24 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id m50sm3176417wek.8.2010.12.22.07.04.23
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 22 Dec 2010 07:04:24 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1293029368.25087.7644.camel@rex>
Date: Wed, 22 Dec 2010 16:04:23 +0100
Message-Id: <ED7C4989-D54D-4C12-AD6A-2135EB1258AE@dominion.thruhere.net>
References: <70D74F2C-4429-4294-9668-2D17B8A31943@dominion.thruhere.net>
	<1293029368.25087.7644.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: RDEPENDS = "foo" in core layer
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 22 Dec 2010 15:04:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 22 dec 2010, om 15:49 heeft Richard Purdie het volgende geschreven:

> On Wed, 2010-12-22 at 14:49 +0100, Koen Kooi wrote:
>> The core layer has tons of RDEPENDS =3D "foo", which should actually =
be
>> RDEPENDS_${PN}. What's the policy on those?
>=20
> They should be fixed. Patches very welcome...

A quick sed gives me:

 76 files changed, 77 insertions(+), 77 deletions(-)

Do you want that as a single patch and if not, how do you want to have =
it split and are PR bumps needed?

regards,

Koen

complete diffstat:

 meta-demoapps/recipes-connectivity/telepathy/empathy_2.26.1.bb          =
      |    2 +-
 meta-demoapps/recipes-gnome/abiword/abiword-2.5.inc                     =
      |    2 +-
 meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb                     =
      |    2 +-
 meta-demoapps/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb   =
      |    2 +-
 meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb               =
      |    2 +-
 meta/recipes-bsp/grub/grub_0.97.bb                                      =
      |    2 +-
 meta/recipes-bsp/hostap/hostap-conf_1.0.bb                              =
      |    2 +-
 meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb                            =
      |    2 +-
 meta/recipes-bsp/qemu-config/qemu-config.bb                             =
      |    2 +-
 meta/recipes-bsp/zaurusd/zaurusd_svn.bb                                 =
      |    2 +-
 meta/recipes-connectivity/gsm/gsmd.inc                                  =
      |    2 +-
 meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb               =
      |    2 +-
 meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb                  =
      |    2 +-
 meta/recipes-connectivity/ppp-dialin/ppp-dialin_0.1.bb                  =
      |    2 +-
 meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb                 =
      |    2 +-
 meta/recipes-core/glibc/glibc.inc                                       =
      |    2 +-
 meta/recipes-core/initscripts/initscripts_1.0.bb                        =
      |    2 +-
 meta/recipes-core/meta/external-python-tarball.bb                       =
      |    2 +-
 meta/recipes-core/meta/meta-toolchain.bb                                =
      |    2 +-
 meta/recipes-core/tasks/task-base.bb                                    =
      |    2 +-
 meta/recipes-core/tasks/task-poky-boot.bb                               =
      |    2 +-
 meta/recipes-devtools/apt/apt_0.7.14.bb                                 =
      |    2 +-
 meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb                    =
      |    2 +-
 meta/recipes-devtools/intltool/intltool.inc                             =
      |    2 +-
 meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb                      =
      |    2 +-
 meta/recipes-devtools/python/python-dbus_0.83.1.bb                      =
      |    2 +-
 meta/recipes-devtools/python/python-gst_0.10.19.bb                      =
      |    2 +-
 meta/recipes-devtools/python/python-imaging_1.1.7.bb                    =
      |    2 +-
 meta/recipes-devtools/python/python-pycurl_7.19.0.bb                    =
      |    2 +-
 meta/recipes-devtools/python/python-pygtk_2.17.0.bb                     =
      |    2 +-
 meta/recipes-devtools/python/python-pyrex-native_0.9.9.bb               =
      |    2 +-
 meta/recipes-devtools/python/python-scons-native_2.0.1.bb               =
      |    2 +-
 meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb                    =
      |    2 +-
 meta/recipes-devtools/qemu/qemu-helper-nativesdk_1.0.bb                 =
      |    2 +-
 meta/recipes-devtools/subversion/subversion_1.6.13.bb                   =
      |    2 +-
 meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb              =
      |    2 +-
 =
meta/recipes-devtools/update-alternatives/update-alternatives-dpkg_1.13.22=
.bb |    2 +-
 meta/recipes-extended/libzypp/libzypp_git.bb                            =
      |    2 +-
 meta/recipes-extended/man-pages/man-pages_3.25.bb                       =
      |    2 +-
 meta/recipes-extended/mc/mc_4.7.3.bb                                    =
      |    2 +-
 meta/recipes-extended/polkit/polkit_0.99.bb                             =
      |    2 +-
 meta/recipes-extended/shadow/shadow.inc                                 =
      |    2 +-
 meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb                     =
      |    2 +-
 meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb                        =
      |    2 +-
 meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb                      =
      |    2 +-
 meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb                          =
      |    2 +-
 meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb        =
      |    2 +-
 meta/recipes-graphics/cairo/cairo_1.10.0.bb                             =
      |    2 +-
 meta/recipes-graphics/libsdl/libsdl-nativesdk_1.2.11.bb                 =
      |    2 +-
 meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb                =
      |    2 +-
 meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb                =
      |    2 +-
 meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb              =
      |    2 +-
 meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb                       =
      |    2 +-
 meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb                     =
      |    2 +-
 meta/recipes-graphics/xorg-font/font-util_1.2.0.bb                      =
      |    2 +-
 meta/recipes-graphics/xorg-font/xorg-font-common.inc                    =
      |    2 +-
 meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb                     =
      |    2 +-
 meta/recipes-graphics/xorg-util/imake_1.0.4.bb                          =
      |    2 +-
 meta/recipes-kernel/oprofile/oprofile_0.9.6.bb                          =
      |    2 +-
 meta/recipes-kernel/oprofile/oprofile_cvs.bb                            =
      |    2 +-
 meta/recipes-kernel/update-modules/update-modules_1.0.bb                =
      |    4 ++--
 meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb                 =
      |    2 +-
 meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb           =
      |    2 +-
 meta/recipes-qt/qt-apps/fotowall_0.9.bb                                 =
      |    2 +-
 meta/recipes-qt/qt-apps/qmmp_0.4.1.bb                                   =
      |    2 +-
 meta/recipes-qt/qt-apps/quicky_0.4.bb                                   =
      |    2 +-
 meta/recipes-sato/eds/eds-tools_bzr.bb                                  =
      |    2 +-
 meta/recipes-sato/gaku/gaku_svn.bb                                      =
      |    2 +-
 meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_svn.bb        =
      |    2 +-
 meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb            =
      |    2 +-
 meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb            =
      |    2 +-
 meta/recipes-sato/owl-video-widget/libowl-av_svn.bb                     =
      |    2 +-
 meta/recipes-sato/pimlico/contacts.inc                                  =
      |    2 +-
 meta/recipes-sato/pimlico/dates.inc                                     =
      |    2 +-
 meta/recipes-support/enchant/enchant_1.6.0.bb                           =
      |    2 +-
 meta/recipes-support/hal/hal.inc                                        =
      |    2 +-
 76 files changed, 77 insertions(+), 77 deletions(-)


