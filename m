Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
 by mx.groups.io with SMTP id smtpd.web08.5968.1633083086942691420
 for <poky@lists.yoctoproject.org>;
 Fri, 01 Oct 2021 03:11:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fb.com header.s=facebook header.b=n/nNa9um;
 spf=pass (domain: fb.com, ip: 67.231.145.42, mailfrom: prvs=99084d9215=hkleynhans@fb.com)
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19141HOg012681
	for <poky@lists.yoctoproject.org>; Fri, 1 Oct 2021 03:11:26 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=facebook; bh=Oc3YqOaxbNjLw0qpXEuK9/EJDiJXRMqaRGNgohbNDL0=;
 b=n/nNa9umDi+Dn4nD/X8N3quBHaHq2B1R+b+a0BzvjhAuLn4l/pDxFS+VVyv8gXE4w1fv
 1TCJLMD1W3iJWVOOrx4FsIMeB04srxv1ov78GHRkwPI/FkqEX7N0inM0eGFyhwUwejDF
 CSGcw87Ual2Dt0AZa6Ry5qEkN+ui+/WZR3A= 
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 3bdh9qncwj-19
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <poky@lists.yoctoproject.org>; Fri, 01 Oct 2021 03:11:25 -0700
Received: from intmgw001.05.ash7.facebook.com (2620:10d:c0a8:1b::d) by
 mail.thefacebook.com (2620:10d:c0a8:82::e) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Fri, 1 Oct 2021 03:11:23 -0700
Received: by devvm2497.lla0.facebook.com (Postfix, from userid 230225)
	id 47C23D6CB536; Fri,  1 Oct 2021 03:11:21 -0700 (PDT)
From: hkleynhans@fb.com
To: <poky@lists.yoctoproject.org>
CC: <hkleynhans@fb.com>, <rmikey@fb.com>
Subject: [PATCH] sstate: Add ZStandard compressor support
Date: Fri, 1 Oct 2021 03:11:18 -0700
Message-ID: <20211001101118.2526538-1-hkleynhans@fb.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-FB-Internal: Safe
X-FB-Source: Intern
X-Proofpoint-ORIG-GUID: MowVyOrzZT4iyXMvqw7uCRlq0v0Mqx8y
X-Proofpoint-GUID: MowVyOrzZT4iyXMvqw7uCRlq0v0Mqx8y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-01_01,2021-10-01_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0 malwarescore=0
 mlxlogscore=999 impostorscore=0 clxscore=1011 mlxscore=0
 priorityscore=1501 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2109230001 definitions=main-2110010069
X-FB-Internal: deliver
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

This patch adds support to optionally use the Zstandard compressor for
ssate cache files.

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
 meta/classes/sstate.bbclass        | 49 +++++++++++++++++++++++-------
 scripts/sstate-cache-management.sh | 40 ++++++++++++------------
 2 files changed, 58 insertions(+), 31 deletions(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index 92a73114bb..a73d631679 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -1,17 +1,30 @@
 SSTATE_VERSION =3D "3"
=20
+SSTATE_USE_ZSTD ?=3D "0"
+SSTATE_ZSTD_CLEVEL ?=3D "3"
+SSTATE_ZSTD_NTHREADS ?=3D "0"
+
 SSTATE_MANIFESTS ?=3D "${TMPDIR}/sstate-control"
 SSTATE_MANFILEPREFIX =3D "${SSTATE_MANIFESTS}/manifest-${SSTATE_MANMACH}=
-${PN}"
=20
-def generate_sstatefn(spec, hash, taskname, siginfo, d):
+def generate_sstate_ext(use_zstd, d):
+    if use_zstd =3D=3D "1":
+        return "tar.zst"
+    return "tgz"
+
+def generate_sstatefn(spec, hash, taskname, siginfo, use_zstd, d):
     if taskname is None:
        return ""
     extension =3D ".tgz"
+    if use_zstd =3D=3D "1":
+       extension =3D ".tar.zst"
     # 8 chars reserved for siginfo
     limit =3D 254 - 8
     if siginfo:
         limit =3D 254
         extension =3D ".tgz.siginfo"
+        if use_zstd =3D=3D "1":
+           extension =3D ".tar.zst.siginfo"
     if not hash:
         hash =3D "INVALID"
     fn =3D spec + hash + "_" + taskname + extension
@@ -33,11 +46,12 @@ def generate_sstatefn(spec, hash, taskname, siginfo, =
d):
 SSTATE_PKGARCH    =3D "${PACKAGE_ARCH}"
 SSTATE_PKGSPEC    =3D "sstate:${PN}:${PACKAGE_ARCH}${TARGET_VENDOR}-${TA=
RGET_OS}:${PV}:${PR}:${SSTATE_PKGARCH}:${SSTATE_VERSION}:"
 SSTATE_SWSPEC     =3D "sstate:${PN}::${PV}:${PR}::${SSTATE_VERSION}:"
-SSTATE_PKGNAME    =3D "${SSTATE_EXTRAPATH}${@generate_sstatefn(d.getVar(=
'SSTATE_PKGSPEC'), d.getVar('BB_UNIHASH'), d.getVar('SSTATE_CURRTASK'), F=
alse, d)}"
+SSTATE_PKGNAME    =3D "${SSTATE_EXTRAPATH}${@generate_sstatefn(d.getVar(=
'SSTATE_PKGSPEC'), d.getVar('BB_UNIHASH'), d.getVar('SSTATE_CURRTASK'), F=
alse, d.getVar('SSTATE_USE_ZSTD'), d)}"
 SSTATE_PKG        =3D "${SSTATE_DIR}/${SSTATE_PKGNAME}"
 SSTATE_EXTRAPATH   =3D ""
 SSTATE_EXTRAPATHWILDCARD =3D ""
-SSTATE_PATHSPEC   =3D "${SSTATE_DIR}/${SSTATE_EXTRAPATHWILDCARD}*/*/${SS=
TATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tgz*"
+SSTATE_PKG_EXT    =3D "${@generate_sstate_ext(d.getVar('SSTATE_USE_ZSTD'=
), d)}"
+SSTATE_PATHSPEC   =3D "${SSTATE_DIR}/${SSTATE_EXTRAPATHWILDCARD}*/*/${SS=
TATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.${SSTATE_PKG_EXT}*"
=20
 # explicitly make PV to depend on evaluated value of PV variable
 PV[vardepvalue] =3D "${PV}"
@@ -825,12 +839,20 @@ sstate_create_package () {
 	mkdir --mode=3D0775 -p `dirname ${SSTATE_PKG}`
 	TFILE=3D`mktemp ${SSTATE_PKG}.XXXXXXXX`
=20
-	# Use pigz if available
-	OPT=3D"-czS"
-	if [ -x "$(command -v pigz)" ]; then
-		OPT=3D"-I pigz -cS"
+	if [ x"${SSTATE_USE_ZSTD}" !=3D x"0" ]; then
+		export ZSTD_CLEVEL=3D"${SSTATE_ZSTD_CLEVEL}"
+		export ZSTD_NBTHREADS=3D"${SSTATE_ZSTD_NTHREADS}"
+		OPT=3D"-I zstd -cS"
+	else
+		# Use pigz if available
+		OPT=3D"-czS"
+		if [ -x "$(command -v pigz)" ]; then
+			OPT=3D"-I pigz -cS"
+		fi
 	fi
=20
+  echo "OPTS=3D${OPTS}"
+
 	# Need to handle empty directories
 	if [ "$(ls -A)" ]; then
 		set +e
@@ -880,7 +902,12 @@ python sstate_report_unihash() {
 # Will be run from within SSTATE_INSTDIR.
 #
 sstate_unpack_package () {
-	tar -xvzf ${SSTATE_PKG}
+	if [[ "${SSTATE_PKG}" =3D=3D *.tar.zst ]]; then
+		export ZSTD_NBTHREADS=3D"${SSTATE_ZSTD_NTHREADS}"
+		tar -I zstd -xvf ${SSTATE_PKG}
+	else
+		tar -xvzf ${SSTATE_PKG}
+	fi
 	# update .siginfo atime on local/NFS mirror
 	[ -O ${SSTATE_PKG}.siginfo ] && [ -w ${SSTATE_PKG}.siginfo ] && [ -h ${=
SSTATE_PKG}.siginfo ] && touch -a ${SSTATE_PKG}.siginfo
 	# Use "! -w ||" to return true for read only files
@@ -922,7 +949,7 @@ def sstate_checkhashes(sq_data, d, siginfo=3DFalse, c=
urrentcount=3D0, summary=3DTrue,
=20
         spec, extrapath, tname =3D getpathcomponents(tid, d)
=20
-        sstatefile =3D d.expand("${SSTATE_DIR}/" + extrapath + generate_=
sstatefn(spec, gethash(tid), tname, siginfo, d))
+        sstatefile =3D d.expand("${SSTATE_DIR}/" + extrapath + generate_=
sstatefn(spec, gethash(tid), tname, siginfo, d.getVar('SSTATE_USE_ZSTD'),=
 d))
=20
         if os.path.exists(sstatefile):
             bb.debug(2, "SState: Found valid sstate file %s" % sstatefil=
e)
@@ -1016,11 +1043,11 @@ def sstate_checkhashes(sq_data, d, siginfo=3DFals=
e, currentcount=3D0, summary=3DTrue,
         evdata =3D {'missed': [], 'found': []};
         for tid in missed:
             spec, extrapath, tname =3D getpathcomponents(tid, d)
-            sstatefile =3D d.expand(extrapath + generate_sstatefn(spec, =
gethash(tid), tname, False, d))
+            sstatefile =3D d.expand(extrapath + generate_sstatefn(spec, =
gethash(tid), tname, siginfo, False, d))
             evdata['missed'].append((bb.runqueue.fn_from_tid(tid), bb.ru=
nqueue.taskname_from_tid(tid), gethash(tid), sstatefile ) )
         for tid in found:
             spec, extrapath, tname =3D getpathcomponents(tid, d)
-            sstatefile =3D d.expand(extrapath + generate_sstatefn(spec, =
gethash(tid), tname, False, d))
+            sstatefile =3D d.expand(extrapath + generate_sstatefn(spec, =
gethash(tid), tname, siginfo, False, d))
             evdata['found'].append((bb.runqueue.fn_from_tid(tid), bb.run=
queue.taskname_from_tid(tid), gethash(tid), sstatefile ) )
         bb.event.fire(bb.event.MetadataEvent("MissedSstate", evdata), d)
=20
diff --git a/scripts/sstate-cache-management.sh b/scripts/sstate-cache-ma=
nagement.sh
index f1706a2229..61c7f9f763 100755
--- a/scripts/sstate-cache-management.sh
+++ b/scripts/sstate-cache-management.sh
@@ -114,7 +114,7 @@ echo_error () {
 # * Add .done/.siginfo to the remove list
 # * Add destination of symlink to the remove list
 #
-# $1: output file, others: sstate cache file (.tgz)
+# $1: output file, others: sstate cache file (.tgz or .tar.zstd)
 gen_rmlist (){
   local rmlist_file=3D"$1"
   shift
@@ -131,13 +131,13 @@ gen_rmlist (){
               dest=3D"`readlink -e $i`"
               if [ -n "$dest" ]; then
                   echo $dest >> $rmlist_file
-                  # Remove the .siginfo when .tgz is removed
+                  # Remove the .siginfo when .tgz or .tar.zst is removed
                   if [ -f "$dest.siginfo" ]; then
                       echo $dest.siginfo >> $rmlist_file
                   fi
               fi
           fi
-          # Add the ".tgz.done" and ".siginfo.done" (may exist in the fu=
ture)
+          # Add the ".tgz.done" or ".tar.zst.done" and ".siginfo.done" (=
may exist in the future)
           base_fn=3D"${i##/*/}"
           t_fn=3D"$base_fn.done"
           s_fn=3D"$base_fn.siginfo.done"
@@ -188,10 +188,10 @@ remove_duplicated () {
   total_files=3D`find $cache_dir -name 'sstate*' | wc -l`
   # Save all the sstate files in a file
   sstate_files_list=3D`mktemp` || exit 1
-  find $cache_dir -name 'sstate:*:*:*:*:*:*:*.tgz*' >$sstate_files_list
+  find $cache_dir -name 'sstate:*:*:*:*:*:*:*.tgz*' -o -iname 'sstate:*:=
*:*:*:*:*:*.tar.zst*' >$sstate_files_list
=20
   echo "Figuring out the suffixes in the sstate cache dir ... "
-  sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:=
]*:[^_]*_\([^:]*\)\.tgz.*%\1%g' $sstate_files_list | sort -u`"
+  sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:=
]*:[^_]*_\([^:]*\)\.\(tgz\|tar\.\zst\).*%\1%g' $sstate_files_list | sort =
-u`"
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
+      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch:[^:]*:[^:]*\.\(tg=
z\|tar\.\zst\)$" $sstate_files_list
       [ $? -eq 0 ] && ava_archs=3D"$ava_archs $arch"
       # ${builder_arch}_$arch used by toolchain sstate
-      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${builder_arch}_$arch:[=
^:]*:[^:]*\.tgz$" $sstate_files_list
+      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${builder_arch}_$arch:[=
^:]*:[^:]*\.\(tgz\|tar\.zst\)$" $sstate_files_list
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
*:[^:]*:[^:_]*_$suffix\.\(tgz\|tar\.zst\).*" $sstate_files_list | wc -l 2=
>/dev/null`
+      total_archive_suffix=3D`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^=
:]*:[^:]*:[^:_]*_$suffix\.\(tgz\|tar\.zst\)$" $sstate_files_list | wc -l =
2>/dev/null`
       # Save the file list to a file, some suffix's file may not exist
-      grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix=
\.tgz.*" $sstate_files_list >$list_suffix 2>/dev/null
-      local deleted_tgz=3D0
+      grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix=
\.\(tgz\|tar\.zst\).*" $sstate_files_list >$list_suffix 2>/dev/null
+      local deleted_archives=3D0
       local deleted_files=3D0
-      for ext in tgz tgz.siginfo tgz.done; do
+      for ext in tgz tgz.siginfo tgz.done tar.zst tar.zst.siginfo tar.zs=
t.done; do
           echo "Figuring out the sstate:xxx_$suffix.$ext ... "
           # Uniq BPNs
           file_names=3D`for arch in $ava_archs ""; do
@@ -268,19 +268,19 @@ remove_duplicated () {
               done
           done
       done
-      deleted_tgz=3D`cat $rm_list.* 2>/dev/null | grep ".tgz$" | wc -l`
+      deleted_archives=3D`cat $rm_list.* 2>/dev/null | grep ".\(tgz\|tar=
\.zst\)$" | wc -l`
       deleted_files=3D`cat $rm_list.* 2>/dev/null | wc -l`
       [ "$deleted_files" -gt 0 -a $debug -gt 0 ] && cat $rm_list.*
-      echo "($deleted_tgz out of $total_tgz_suffix .tgz files for $suffi=
x suffix will be removed or $deleted_files out of $total_files_suffix whe=
n counting also .siginfo and .done files)"
+      echo "($deleted_archives out of $total_archives_suffix .tgz or .ta=
r.zst files for $suffix suffix will be removed or $deleted_files out of $=
total_files_suffix when counting also .siginfo and .done files)"
       let total_deleted=3D$total_deleted+$deleted_files
   done
-  deleted_tgz=3D0
+  deleted_archives=3D0
   rm_old_list=3D$remove_listdir/sstate-old-filenames
-  find $cache_dir -name 'sstate-*.tgz' >$rm_old_list
-  [ -s "$rm_old_list" ] && deleted_tgz=3D`cat $rm_old_list | grep ".tgz$=
" | wc -l`
+  find $cache_dir -name 'sstate-*.tgz' -o -name 'sstate-*.tar.zst' >$rm_=
old_list
+  [ -s "$rm_old_list" ] && deleted_archives=3D`cat $rm_old_list | grep "=
.\(tgz\|tar\.zst\)$" | wc -l`
   [ -s "$rm_old_list" ] && deleted_files=3D`cat $rm_old_list | wc -l`
   [ -s "$rm_old_list" -a $debug -gt 0 ] && cat $rm_old_list
-  echo "($deleted_tgz .tgz files with old sstate-* filenames will be rem=
oved or $deleted_files when counting also .siginfo and .done files)"
+  echo "($deleted_archives .tgz or .tar.zst files with old sstate-* file=
names will be removed or $deleted_files when counting also .siginfo and .=
done files)"
   let total_deleted=3D$total_deleted+$deleted_files
=20
   rm -f $list_suffix
@@ -289,7 +289,7 @@ remove_duplicated () {
       read_confirm
       if [ "$confirm" =3D "y" -o "$confirm" =3D "Y" ]; then
           for list in `ls $remove_listdir/`; do
-              echo "Removing $list.tgz (`cat $remove_listdir/$list | wc =
-w` files) ... "
+              echo "Removing $list archive (`cat $remove_listdir/$list |=
 wc -w` files) ... "
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
]*:[^:]*:[^_]*_\([^:]*\)\.\(tgz\|tar\.zst\).*%\1%g' $cache_list | sort -u=
`"
   echo "Done"
   echo "The following suffixes have been found in the cache dir:"
   echo $sstate_suffixes
--=20
2.30.2

