Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.153.30])
 by mx.groups.io with SMTP id smtpd.web10.7653.1633345198508731872
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 03:59:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fb.com header.s=facebook header.b=iY7Q6MmD;
 spf=pass (domain: fb.com, ip: 67.231.153.30, mailfrom: prvs=9911f96951=hkleynhans@fb.com)
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
	by m0001303.ppops.net (8.16.1.2/8.16.1.2) with SMTP id 194A8XmZ013306
	for <poky@lists.yoctoproject.org>; Mon, 4 Oct 2021 03:59:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=facebook;
 bh=nw7ySC0Ouerk60g6HCV7bY8VZJ80hVlkWqpCmHRmi+0=;
 b=iY7Q6MmDpIcU+8rR6yqJY/cKxhbRS7p9YEl1HMpn2OADhx0zJI7jZ6hYdvPGuk+9YO2+
 oBdTV0hrr/EW8fdWVhmOyWUpFgqwh2MAFQgLTlpkUksoFXR+iRFjLwNOeBLp5401BIO9
 NdL5Z+aDBZsKACNvss/uvJ+2QfwNo/wXfqk= 
Received: from mail.thefacebook.com ([163.114.132.120])
	by m0001303.ppops.net with ESMTP id 3bfykmg88p-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <poky@lists.yoctoproject.org>; Mon, 04 Oct 2021 03:59:57 -0700
Received: from intmgw001.37.frc1.facebook.com (2620:10d:c085:108::8) by
 mail.thefacebook.com (2620:10d:c085:21d::4) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Mon, 4 Oct 2021 03:59:55 -0700
Received: by devvm2497.lla0.facebook.com (Postfix, from userid 230225)
	id 066C1E00A2AA; Mon,  4 Oct 2021 03:59:49 -0700 (PDT)
From: "Henry Kleynhans" <hkleynhans@fb.com>
To: <openembedded-core@lists.openembedded.org>, <poky@lists.yoctoproject.org>
CC: <hkleynhans@fb.com>, <rmikey@fb.com>
Subject: [PATCH] sstate: Switch to ZStandard compressor support
Date: Mon, 4 Oct 2021 03:59:37 -0700
Message-ID: <20211004105937.1535306-2-hkleynhans@fb.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211004105937.1535306-1-hkleynhans@fb.com>
References: <20211004105937.1535306-1-hkleynhans@fb.com>
MIME-Version: 1.0
X-FB-Internal: Safe
X-FB-Source: Intern
X-Proofpoint-GUID: l-Y91uiYgCc0YJbNEs8wl83y5RO7edIi
X-Proofpoint-ORIG-GUID: l-Y91uiYgCc0YJbNEs8wl83y5RO7edIi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-04_04,2021-10-04_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 mlxlogscore=999
 phishscore=0 bulkscore=0 lowpriorityscore=0 mlxscore=0 spamscore=0
 clxscore=1015 impostorscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2109230001 definitions=main-2110040074
X-FB-Internal: deliver
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

This patch switches the compressor from Gzip to ZStandard for ssate cache
files.

Zstandard compression provides a significant improvement in
decompression speed as well as improvement in compression speed and disk
usage over the 'tgz' format in use.  Furthermore, its configurable
compression level offers a trade-off between time spent compressing
sstate cache files and disk space used by those files.  The reduced disk
usage also contributes to saving network traffic for those sharing their
sstate cache with others.

Zstandard should therefore be a good choice when:
* disk space is at a premium
* network speed / resources are limited
* the CI server can sstate packages can be created at high compression
* less CPU on the build server should be used for sstate decompression

Signed-off-by: Henry Kleynhans <hkleynhans@fb.com>
---
 meta/classes/sstate.bbclass        | 30 ++++++++++++++--------
 meta/conf/bitbake.conf             |  2 +-
 scripts/sstate-cache-management.sh | 40 +++++++++++++++---------------
 3 files changed, 41 insertions(+), 31 deletions(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index 92a73114bb..9d40c8ebe4 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -1,17 +1,20 @@
 SSTATE_VERSION =3D "3"
=20
+ZSTD_THREADS ?=3D "${BB_NUMBER_THREADS}"
+SSTATE_ZSTD_CLEVEL =3D "8"
+
 SSTATE_MANIFESTS ?=3D "${TMPDIR}/sstate-control"
 SSTATE_MANFILEPREFIX =3D "${SSTATE_MANIFESTS}/manifest-${SSTATE_MANMACH}=
-${PN}"
=20
 def generate_sstatefn(spec, hash, taskname, siginfo, d):
     if taskname is None:
        return ""
-    extension =3D ".tgz"
+    extension =3D ".tar.zst"
     # 8 chars reserved for siginfo
     limit =3D 254 - 8
     if siginfo:
         limit =3D 254
-        extension =3D ".tgz.siginfo"
+        extension =3D ".tar.zst.siginfo"
     if not hash:
         hash =3D "INVALID"
     fn =3D spec + hash + "_" + taskname + extension
@@ -37,7 +40,7 @@ SSTATE_PKGNAME    =3D "${SSTATE_EXTRAPATH}${@generate_s=
statefn(d.getVar('SSTATE_PK
 SSTATE_PKG        =3D "${SSTATE_DIR}/${SSTATE_PKGNAME}"
 SSTATE_EXTRAPATH   =3D ""
 SSTATE_EXTRAPATHWILDCARD =3D ""
-SSTATE_PATHSPEC   =3D "${SSTATE_DIR}/${SSTATE_EXTRAPATHWILDCARD}*/*/${SS=
TATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tgz*"
+SSTATE_PATHSPEC   =3D "${SSTATE_DIR}/${SSTATE_EXTRAPATHWILDCARD}*/*/${SS=
TATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tar.zst*"
=20
 # explicitly make PV to depend on evaluated value of PV variable
 PV[vardepvalue] =3D "${PV}"
@@ -825,23 +828,24 @@ sstate_create_package () {
 	mkdir --mode=3D0775 -p `dirname ${SSTATE_PKG}`
 	TFILE=3D`mktemp ${SSTATE_PKG}.XXXXXXXX`
=20
-	# Use pigz if available
-	OPT=3D"-czS"
-	if [ -x "$(command -v pigz)" ]; then
-		OPT=3D"-I pigz -cS"
+	OPT=3D"-cS"
+	ZSTD=3D"zstd -${SSTATE_ZSTD_CLEVEL} -T${ZSTD_THREADS}"
+	# Use pzstd if available
+	if [ -x "$(command -v pzstd)" ]; then
+		ZSTD=3D"pzstd -${SSTATE_ZSTD_CLEVEL} -p ${ZSTD_THREADS}"
 	fi
=20
 	# Need to handle empty directories
 	if [ "$(ls -A)" ]; then
 		set +e
-		tar $OPT -f $TFILE *
+		tar -I "$ZSTD" $OPT -f $TFILE *
 		ret=3D$?
 		if [ $ret -ne 0 ] && [ $ret -ne 1 ]; then
 			exit 1
 		fi
 		set -e
 	else
-		tar $OPT --file=3D$TFILE --files-from=3D/dev/null
+		tar -I "$ZSTD" $OPT --file=3D$TFILE --files-from=3D/dev/null
 	fi
 	chmod 0664 $TFILE
 	# Skip if it was already created by some other process
@@ -880,7 +884,13 @@ python sstate_report_unihash() {
 # Will be run from within SSTATE_INSTDIR.
 #
 sstate_unpack_package () {
-	tar -xvzf ${SSTATE_PKG}
+	ZSTD=3D"zstd -T${ZSTD_THREADS}"
+	# Use pzstd if available
+	if [ -x "$(command -v pzstd)" ]; then
+		ZSTD=3D"pzstd -p ${ZSTD_THREADS}"
+	fi
+
+	tar -I "$ZSTD" -xvf ${SSTATE_PKG}
 	# update .siginfo atime on local/NFS mirror
 	[ -O ${SSTATE_PKG}.siginfo ] && [ -w ${SSTATE_PKG}.siginfo ] && [ -h ${=
SSTATE_PKG}.siginfo ] && touch -a ${SSTATE_PKG}.siginfo
 	# Use "! -w ||" to return true for read only files
diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index e25d632dc1..ed746bdf99 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -498,7 +498,7 @@ HOSTTOOLS +=3D " \
 HOSTTOOLS +=3D "${@'ip ping ps scp ssh stty' if (bb.utils.contains_any('=
IMAGE_CLASSES', 'testimage testsdk', True, False, d) or any(x in (d.getVa=
r("BBINCLUDED") or "") for x in ["testimage.bbclass", "testsdk.bbclass"])=
) else ''}"
=20
 # Link to these if present
-HOSTTOOLS_NONFATAL +=3D "aws gcc-ar gpg ld.bfd ld.gold nc pigz sftp soca=
t ssh sudo"
+HOSTTOOLS_NONFATAL +=3D "aws gcc-ar gpg ld.bfd ld.gold nc pigz pzstd sft=
p socat ssh sudo"
=20
 # Temporary add few more detected in bitbake world
 HOSTTOOLS_NONFATAL +=3D "join nl size yes zcat"
diff --git a/scripts/sstate-cache-management.sh b/scripts/sstate-cache-ma=
nagement.sh
index f1706a2229..d39671f7c6 100755
--- a/scripts/sstate-cache-management.sh
+++ b/scripts/sstate-cache-management.sh
@@ -114,7 +114,7 @@ echo_error () {
 # * Add .done/.siginfo to the remove list
 # * Add destination of symlink to the remove list
 #
-# $1: output file, others: sstate cache file (.tgz)
+# $1: output file, others: sstate cache file (.tar.zst)
 gen_rmlist (){
   local rmlist_file=3D"$1"
   shift
@@ -131,13 +131,13 @@ gen_rmlist (){
               dest=3D"`readlink -e $i`"
               if [ -n "$dest" ]; then
                   echo $dest >> $rmlist_file
-                  # Remove the .siginfo when .tgz is removed
+                  # Remove the .siginfo when .tar.zst is removed
                   if [ -f "$dest.siginfo" ]; then
                       echo $dest.siginfo >> $rmlist_file
                   fi
               fi
           fi
-          # Add the ".tgz.done" and ".siginfo.done" (may exist in the fu=
ture)
+          # Add the ".tar.zst.done" and ".siginfo.done" (may exist in th=
e future)
           base_fn=3D"${i##/*/}"
           t_fn=3D"$base_fn.done"
           s_fn=3D"$base_fn.siginfo.done"
@@ -188,10 +188,10 @@ remove_duplicated () {
   total_files=3D`find $cache_dir -name 'sstate*' | wc -l`
   # Save all the sstate files in a file
   sstate_files_list=3D`mktemp` || exit 1
-  find $cache_dir -name 'sstate:*:*:*:*:*:*:*.tgz*' >$sstate_files_list
+  find $cache_dir -iname 'sstate:*:*:*:*:*:*:*.tar.zst*' >$sstate_files_=
list
=20
   echo "Figuring out the suffixes in the sstate cache dir ... "
-  sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:=
]*:[^_]*_\([^:]*\)\.tgz.*%\1%g' $sstate_files_list | sort -u`"
+  sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:=
]*:[^_]*_\([^:]*\)\.tar\.zst.*%\1%g' $sstate_files_list | sort -u`"
   echo "Done"
   echo "The following suffixes have been found in the cache dir:"
   echo $sstate_suffixes
@@ -200,10 +200,10 @@ remove_duplicated () {
   # Using this SSTATE_PKGSPEC definition it's 6th colon separated field
   # SSTATE_PKGSPEC    =3D "sstate:${PN}:${PACKAGE_ARCH}${TARGET_VENDOR}-=
${TARGET_OS}:${PV}:${PR}:${SSTATE_PKGARCH}:${SSTATE_VERSION}:"
   for arch in $all_archs; do
-      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch:[^:]*:[^:]*\.tgz$=
" $sstate_files_list
+      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch:[^:]*:[^:]*\.tar\=
.zst$" $sstate_files_list
       [ $? -eq 0 ] && ava_archs=3D"$ava_archs $arch"
       # ${builder_arch}_$arch used by toolchain sstate
-      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${builder_arch}_$arch:[=
^:]*:[^:]*\.tgz$" $sstate_files_list
+      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${builder_arch}_$arch:[=
^:]*:[^:]*\.tar\.zst$" $sstate_files_list
       [ $? -eq 0 ] && ava_archs=3D"$ava_archs ${builder_arch}_$arch"
   done
   echo "Done"
@@ -219,13 +219,13 @@ remove_duplicated () {
           continue
       fi
       # Total number of files including .siginfo and .done files
-      total_files_suffix=3D`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]=
*:[^:]*:[^:_]*_$suffix\.tgz.*" $sstate_files_list | wc -l 2>/dev/null`
-      total_tgz_suffix=3D`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:=
[^:]*:[^:_]*_$suffix\.tgz$" $sstate_files_list | wc -l 2>/dev/null`
+      total_files_suffix=3D`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]=
*:[^:]*:[^:_]*_$suffix\.tar\.zst.*" $sstate_files_list | wc -l 2>/dev/nul=
l`
+      total_archive_suffix=3D`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^=
:]*:[^:]*:[^:_]*_$suffix\.tar\.zst$" $sstate_files_list | wc -l 2>/dev/nu=
ll`
       # Save the file list to a file, some suffix's file may not exist
-      grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix=
\.tgz.*" $sstate_files_list >$list_suffix 2>/dev/null
-      local deleted_tgz=3D0
+      grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix=
\.tar\.zst.*" $sstate_files_list >$list_suffix 2>/dev/null
+      local deleted_archives=3D0
       local deleted_files=3D0
-      for ext in tgz tgz.siginfo tgz.done; do
+      for ext in tar.zst tar.zst.siginfo tar.zst.done; do
           echo "Figuring out the sstate:xxx_$suffix.$ext ... "
           # Uniq BPNs
           file_names=3D`for arch in $ava_archs ""; do
@@ -268,19 +268,19 @@ remove_duplicated () {
               done
           done
       done
-      deleted_tgz=3D`cat $rm_list.* 2>/dev/null | grep ".tgz$" | wc -l`
+      deleted_archives=3D`cat $rm_list.* 2>/dev/null | grep "\.tar\.zst$=
" | wc -l`
       deleted_files=3D`cat $rm_list.* 2>/dev/null | wc -l`
       [ "$deleted_files" -gt 0 -a $debug -gt 0 ] && cat $rm_list.*
-      echo "($deleted_tgz out of $total_tgz_suffix .tgz files for $suffi=
x suffix will be removed or $deleted_files out of $total_files_suffix whe=
n counting also .siginfo and .done files)"
+      echo "($deleted_archives out of $total_archives_suffix .tar.zst fi=
les for $suffix suffix will be removed or $deleted_files out of $total_fi=
les_suffix when counting also .siginfo and .done files)"
       let total_deleted=3D$total_deleted+$deleted_files
   done
-  deleted_tgz=3D0
+  deleted_archives=3D0
   rm_old_list=3D$remove_listdir/sstate-old-filenames
-  find $cache_dir -name 'sstate-*.tgz' >$rm_old_list
-  [ -s "$rm_old_list" ] && deleted_tgz=3D`cat $rm_old_list | grep ".tgz$=
" | wc -l`
+  find $cache_dir -name 'sstate-*.tar.zst' >$rm_old_list
+  [ -s "$rm_old_list" ] && deleted_archives=3D`cat $rm_old_list | grep "=
\.tar\.zst$" | wc -l`
   [ -s "$rm_old_list" ] && deleted_files=3D`cat $rm_old_list | wc -l`
   [ -s "$rm_old_list" -a $debug -gt 0 ] && cat $rm_old_list
-  echo "($deleted_tgz .tgz files with old sstate-* filenames will be rem=
oved or $deleted_files when counting also .siginfo and .done files)"
+  echo "($deleted_archives or .tar.zst files with old sstate-* filenames=
 will be removed or $deleted_files when counting also .siginfo and .done =
files)"
   let total_deleted=3D$total_deleted+$deleted_files
=20
   rm -f $list_suffix
@@ -289,7 +289,7 @@ remove_duplicated () {
       read_confirm
       if [ "$confirm" =3D "y" -o "$confirm" =3D "Y" ]; then
           for list in `ls $remove_listdir/`; do
-              echo "Removing $list.tgz (`cat $remove_listdir/$list | wc =
-w` files) ... "
+              echo "Removing $list.tar.zst archive (`cat $remove_listdir=
/$list | wc -w` files) ... "
               # Remove them one by one to avoid the argument list too lo=
ng error
               for i in `cat $remove_listdir/$list`; do
                   rm -f $verbose $i
@@ -322,7 +322,7 @@ rm_by_stamps (){
   find $cache_dir -type f -name 'sstate*' | sort -u -o $cache_list
=20
   echo "Figuring out the suffixes in the sstate cache dir ... "
-  local sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:=
]*:[^:]*:[^_]*_\([^:]*\)\.tgz.*%\1%g' $cache_list | sort -u`"
+  local sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:=
]*:[^:]*:[^_]*_\([^:]*\)\.tar\.zst.*%\1%g' $cache_list | sort -u`"
   echo "Done"
   echo "The following suffixes have been found in the cache dir:"
   echo $sstate_suffixes
--=20
2.30.2

