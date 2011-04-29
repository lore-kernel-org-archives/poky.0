Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABAB34C806FA
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 01:44:17 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3T6iG1O019687
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Apr 2011 23:44:16 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 28 Apr 2011 23:44:15 -0700
Message-ID: <4DBA5E83.4050704@windriver.com>
Date: Fri, 29 Apr 2011 14:45:23 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
X-Originating-IP: [128.224.163.157]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: bitbake gs failed
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
X-List-Received-Date: Fri, 29 Apr 2011 06:44:18 -0000
X-Groupsio-MsgNum: 5647
Content-Type: multipart/mixed; boundary="------------080305080002070609040106"

--------------080305080002070609040106
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Saul,

When I import gs (ghostscript) from oe, I copy the whole directory of gs 
from oe and put it at meta/recipes-extend/gs.  When run 'bitbake gs', 
the bitbake comlains:

ERROR: Nothing PROVIDES 'gs'
ERROR: Command execution failed: Traceback (most recent call last):
   File "/mnt/sda8/poky-neil/bitbake/lib/bb/command.py", line 102, in 
runAsyncCommand
     commandmethod(self.cmds_async, self, options)
   File "/mnt/sda8/poky-neil/bitbake/lib/bb/command.py", line 200, in 
buildTargets
     command.cooker.buildTargets(pkgs_to_build, task)
   File "/mnt/sda8/poky-neil/bitbake/lib/bb/cooker.py", line 827, in 
buildTargets
     taskdata.add_provider(localdata, self.status, k)
   File "/mnt/sda8/poky-neil/bitbake/lib/bb/taskdata.py", line 353, in 
add_provider
     self.add_provider_internal(cfgData, dataCache, item)
   File "/mnt/sda8/poky-neil/bitbake/lib/bb/taskdata.py", line 373, in 
add_provider_internal
     raise bb.providers.NoProvider(item)
NoProvider: gs

The bb file is in attachment.
Would you like to help me to check it?
Thank you!
Kai

--------------080305080002070609040106
Content-Type: text/plain; name="gs_8.64.bb"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="gs_8.64.bb"

DESCRIPTION = "An interpreter of the Postscript language"
LICENSE = "GPLv2"
SECTION = "console/utils"
HOMEPAGE = "http://www.gnu.org/software/ghostscript/ghostscript.html"
DEPENDS = "jpeg zlib fontconfig cups gs-tools-native"
PR = "r4"

SRC_URI = "${DEBIAN_MIRROR}/main/g/ghostscript/ghostscript_${PV}~dfsg.orig.tar.gz;name=tarball \
           file://0001_svn_snapshot.patch \
           file://0002_svn_snapshot_jbig2dec.patch \
           file://1001_install_cjk_examples.patch \
           file://1002_ps2pdf_man_fix.patch \
           file://1003_fix_autoconf_create_from_infiles.patch \
           file://1004_CVE-2009-0792_CVE-2009-0584_CVE-2009-0583.patch \
           file://1006_system-jasper.patch \
           file://1007_fix_pphs_script_not_lib.patch \
           file://2001_docdir_fix_for_debian.patch \
           file://2002_gs_man_fix_debian.patch \
           file://unix-aux.mak \
           "

SRC_URI[tarball.md5sum] = "e42706c2409815df5c959484080fd4a3"
SRC_URI[tarball.sha256sum] = "cc856d33cb781cdc3383b8eb4e0f390997f8359fe144a906b84297b5d377f03d"

S = "${WORKDIR}/ghostscript-${PV}~dfsg"

inherit autotools

EXTRA_OECONF = "--without-x --with-jasper --with-zlib=${STAGING_DIR_HOST}${layout_prefix} --with-fontpath=${datadir}/fonts"

TARGET_CC_ARCH += "${LDFLAGS}"

PACKAGES += "cups-gs"

do_configure() {
        # hack script to allow for cross compiling jasper
        sed 's,&& ./configure$,& --host=\$host --build=\$build --target=\$target,g' -i configure
        gnu-configize
        CFLAGS="${CFLAGS} -fPIC" oe_runconf
}

do_configure_append() {
        # copy tools from the native gs build
        mkdir -p obj soobj
        for i in genarch genconf mkromfs echogs gendev genht; do
                cp ${STAGING_BINDIR_NATIVE}/gs-tools-${PV}/$i obj/$i
                cp ${STAGING_BINDIR_NATIVE}/gs-tools-${PV}/$i soobj/$i
        done
        # Prevent mkromfs from being recompiled for the target
        cp ${WORKDIR}/unix-aux.mak base/
}

do_compile_append () {
        oe_runmake CFLAGS="${CFLAGS} -fPIC" so
}

do_install_prepend () {
        sed -e 's#CUPSSERVERBIN=${STAGING_LIBDIR}/cups#CUPSSERVERBIN=${libdir}/cups#g' -i ${S}/Makefile
        sed -e 's#CUPSDATA=${STAGING_DATADIR}/cups#CUPSDATA=${datadir}/cups#g' -i ${S}/Makefile
}

do_install_append () {
        oe_runmake 'DESTDIR=${D}' soinstall
	# recent cups expects this file in /usr/share/cups/mime
	# so duplicate it for compatibility
	mkdir -p ${D}/${datadir}/cups/mime/
        cp ${D}/etc/cups/pstoraster.convs ${D}/${datadir}/cups/mime/

	install -d ${D}${incluedir}/ghostscript
	install -m 644 ${S}/psi/*.h ${D}${includedir}/ghostscript/
}

FILES_${PN} += "${datadir}/ghostscript"
FILES_cups-gs = "${libdir}/cups/filter/ ${datadir}/cups ${sysconfdir}/cups"

RDEPENDS_cups-gs += "gs"

--------------080305080002070609040106--
