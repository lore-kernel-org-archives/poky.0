Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3EBAD4C81174
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 15:37:16 -0600 (CST)
Received: from [192.168.0.7] (5ada2504.bb.sky.com [90.218.37.4])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 5F3BC12EC117
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 16:14:01 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
Date: Fri, 12 Nov 2010 21:37:08 +0000
Message-ID: <1289597828.27930.41.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Subject: [PATCH 2/5] image-swab: introduce a class for generating swabber reports
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
X-List-Received-Date: Fri, 12 Nov 2010 21:37:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


Add a postprocess command to rootfs generation which generates a swabber
report.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/classes/image-swab.bbclass |   83
+++++++++++++++++++++++++++++++++++++++
 meta/conf/local.conf.sample     |    1 +
 2 files changed, 84 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/image-swab.bbclass

diff --git a/meta/classes/image-swab.bbclass
b/meta/classes/image-swab.bbclass
new file mode 100644
index 0000000..7dd83f8
--- /dev/null
+++ b/meta/classes/image-swab.bbclass
@@ -0,0 +1,83 @@
+HOST_DATA ?= "${TMPDIR}/host-contamination-data/"
+SWABBER_REPORT ?= "${LOG_DIR}/swabber/"
+SWABBER_LOGS ?= "${LOG_DIR}/contamination-logs"
+TRACE_LOGDIR ?= "${SWABBER_LOGS}/${PACKAGE_ARCH}"
+export TRACE_LOGFILE = "${TRACE_LOGDIR}/${PN}-${PV}"
+
+SWAB_ORIG_TASK := "${BB_DEFAULT_TASK}"
+BB_DEFAULT_TASK = "generate_swabber_report"
+
+# Several recipes don't build with parallel make when run under strace
+# Ideally these should be fixed but as a temporary measure disable
parallel
+# builds for troublesome recipes
+PARALLEL_MAKE_pn-openssl = ""
+PARALLEL_MAKE_pn-eglibc = ""
+PARALLEL_MAKE_pn-glib-2.0 = ""
+PARALLEL_MAKE_pn-libxml2 = ""
+PARALLEL_MAKE_pn-readline = ""
+PARALLEL_MAKE_pn-util-linux = ""
+PARALLEL_MAKE_pn-binutils = ""
+PARALLEL_MAKE_pn-bison = ""
+PARALLEL_MAKE_pn-cmake = ""
+PARALLEL_MAKE_pn-elfutils = ""
+PARALLEL_MAKE_pn-gcc = ""
+PARALLEL_MAKE_pn-gcc-runtime = ""
+PARALLEL_MAKE_pn-m4 = ""
+PARALLEL_MAKE_pn-opkg = ""
+PARALLEL_MAKE_pn-pkgconfig = ""
+PARALLEL_MAKE_pn-prelink = ""
+PARALLEL_MAKE_pn-qemugl = ""
+PARALLEL_MAKE_pn-rpm = ""
+PARALLEL_MAKE_pn-tcl = ""
+PARALLEL_MAKE_pn-beecrypt = ""
+PARALLEL_MAKE_pn-curl = ""
+PARALELL_MAKE_pn-gmp = ""
+PARALLEL_MAKE_pn-libmpc = ""
+PARALLEL_MAKE_pn-libxslt = ""
+PARALLEL_MAKE_pn-lzo = ""
+PARALLEL_MAKE_pn-popt = ""
+PARALLEL_MAKE_pn-linux-wrs = ""
+PARALLEL_MAKE_pn-libgcrypt = ""
+PARALLEL_MAKE_pn-gpgme = ""
+PARALLEL_MAKE_pn-udev = ""
+PARALLEL_MAKE_pn-gnutls = ""
+PARALLEL_MAKE_pn-sat-solver = ""
+PARALLEL_MAKE_pn-libzypp = ""
+PARALLEL_MAKE_pn-zypper = ""
+
+python() {
+    # NOTE: It might be useful to detect host infection on native and
cross
+    # packages but as it turns out to be pretty hard to do this for all
native
+    # and cross packages which aren't swabber-native or one of its
dependencies
+    # I have ignored them for now...
+    if not bb.data.inherits_class('native', d) and not
bb.data.inherits_class('nativesdk', d) and not
bb.data.inherits_class('cross', d):
+       deps = (bb.data.getVarFlag('do_setscene', 'depends', d) or
"").split()
+       deps.append('strace-native:do_populate_sysroot')
+       bb.data.setVarFlag('do_setscene', 'depends', " ".join(deps), d)
+       logdir = bb.data.expand("${TRACE_LOGDIR}", d)
+       bb.utils.mkdirhier(logdir)
+       bb.data.setVar('BB_RUNTASK', 'bitbake-runtask-strace', d)
+}
+
+do_generate_swabber_report () {
+  echo "Updating host data"
+
+  # Ensure we have the very latest host information
+  if [ "${NOSWABBERUPDATE}" != "1" ]; then
+     update_distro ${HOST_DATA}
+  fi
+
+  # Swabber can't create the directory for us
+  mkdir -p ${SWABBER_REPORT}
+
+  REPORTSTAMP=${SWAB_ORIG_TASK}-`date +%2m%2d%2H%2M%Y`
+
+  if [ "$(ls -A ${HOST_DATA})" ]; then
+    echo "Generating swabber report"
+    swabber -d ${HOST_DATA} -l ${SWABBER_LOGS} -o
${SWABBER_REPORT}/report-${REPORTSTAMP}.txt -r
${SWABBER_REPORT}/extra_report-${REPORTSTAMP}.txt
+  else
+    echo "No host data, cannot generate swabber report."
+  fi
+}
+addtask generate_swabber_report after do_${SWAB_ORIG_TASK}
+do_generate_swabber_report[depends] =
"swabber-native:do_populate_sysroot"
diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
index a2e1374..fae949c 100644
--- a/meta/conf/local.conf.sample
+++ b/meta/conf/local.conf.sample
@@ -79,6 +79,7 @@ PACKAGE_CLASSES ?= "package_rpm package_ipk"
 
 # A list of additional classes to use when building the system
 # include 'image-prelink' in order to prelink the filesystem image
+# include 'image-swab' to perform host system intrusion detection
 USER_CLASSES ?= "image-prelink"
 
 # POKYMODE controls the characteristics of the generated
packages/images by
-- 
1.7.3.2



