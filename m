Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com [148.163.143.35])
 by mx.groups.io with SMTP id smtpd.web09.1006.1606938791144965039
 for <poky@lists.yoctoproject.org>;
 Wed, 02 Dec 2020 11:53:11 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@hpe.com header.s=pps0720 header.b=j8kKtiKz;
 spf=pass (domain: hpe.com, ip: 148.163.143.35, mailfrom: prvs=0605e810b7=javier.tia@hpe.com)
Received: from pps.filterd (m0148664.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0B2JqV1H017575
	for <poky@lists.yoctoproject.org>; Wed, 2 Dec 2020 19:53:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-type :
 content-transfer-encoding; s=pps0720;
 bh=WLLF1J+iIIGqr8gMeml6zs5ZGp59HZGCtNo1K3KSEKg=;
 b=j8kKtiKz8s3ql92FuRAwKL9QiUGD8fytfb3lnNjEC/KiGE1o9x6iotl+Ad5ia6oWvYBH
 3p7FTeG2gkJ3IhBa814Tp8zmTJZVT46QEVMtQoIp3VMj626gLbYdjQYlQZfC+h9ICbkT
 h4VzVdFN7epffjSHdVEN3xZMYtn0yEbiREDXjWC2SRSAPPVNvGD/OZVQb7eEkkSus1Bt
 4l/B9aWKiCBoENU92OIYikQ2UY8yG24R6MgAf9l51qw+YGZdkkswmptK3M2npClBQzGA
 G9z6EvvEj05nIHHpVKj3U9gwmRqXJWnU/W9OfjlZ6W25kxqd6aplZgTKBxo4ywQjMH6B NQ== 
Received: from g2t2353.austin.hpe.com (g2t2353.austin.hpe.com [15.233.44.26])
	by mx0b-002e3701.pphosted.com with ESMTP id 355rn2kb69-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <poky@lists.yoctoproject.org>; Wed, 02 Dec 2020 19:53:10 +0000
Received: from g2t2360.austin.hpecorp.net (g2t2360.austin.hpecorp.net [16.196.225.135])
	by g2t2353.austin.hpe.com (Postfix) with ESMTP id 76E348D
	for <poky@lists.yoctoproject.org>; Wed,  2 Dec 2020 19:53:09 +0000 (UTC)
Received: from hpnsw4260.rose.rdlabs.hpecorp.net (hpnsw4260.rose.rdlabs.hpecorp.net [15.116.49.55])
	by g2t2360.austin.hpecorp.net (Postfix) with ESMTP id 235BA39;
	Wed,  2 Dec 2020 19:53:09 +0000 (UTC)
From: "Javier Tia" <javier.tia@hpe.com>
To: poky@lists.yoctoproject.org
Cc: =?utf-8?q?Javier=20Ti=C3=A1?= <javier.tia@hpe.com>
Subject: [poky][PATCH] Add variable-key quality checker
Date: Wed,  2 Dec 2020 11:53:07 -0800
Message-Id: <20201202195307.126789-1-javier.tia@hpe.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-12-02_12:2020-11-30,2020-12-02 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=559
 priorityscore=1501 mlxscore=0 malwarescore=0 impostorscore=0 adultscore=0
 clxscore=1011 spamscore=0 suspectscore=1 bulkscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012020117
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0b-002e3701.pphosted.com id 0B2JqV1H017575
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Allow to select between a warning or error message when variable key
replace the original key.

Signed-off-by: Javier Ti=C3=A1 <javier.tia@hpe.com>
---
 bitbake/lib/bb/data.py      | 11 ++++++++++-
 meta/classes/insane.bbclass |  3 ++-
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/data.py b/bitbake/lib/bb/data.py
index 0d75d0c1a9..ca14d64abe 100644
--- a/bitbake/lib/bb/data.py
+++ b/bitbake/lib/bb/data.py
@@ -100,7 +100,16 @@ def expandKeys(alterdata, readdata =3D None):
         if newval is not None:
             val =3D alterdata.getVar(key, False)
             if val is not None:
-                bb.warn("Variable key %s (%s) replaces original key %s (=
%s)." % (key, val, ekey, newval))
+                msg =3D "Variable key %s (%s) replaces original key %s (=
%s)." % (key, val, ekey, newval)
+                error_qa =3D alterdata.getVar('ERROR_QA', False)
+                warn_qa =3D alterdata.getVar('WARN_QA', False)
+                if error_qa and 'variable-key' in error_qa:
+                    bb.error(msg)
+                elif warn_qa and 'variable-key' in warn_qa:
+                    bb.warn(msg)
+                else:
+                    bb.warn(msg)
+
         alterdata.renameVar(key, ekey)
=20
 def inheritFromOS(d, savedenv, permitted):
diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
index 9605ac2bae..731875ee28 100644
--- a/meta/classes/insane.bbclass
+++ b/meta/classes/insane.bbclass
@@ -28,6 +28,7 @@ WARN_QA ?=3D "ldflags useless-rpaths rpaths staticdev l=
ibdir xorg-driver-abi \
             pn-overrides infodir build-deps src-uri-bad \
             unknown-configure-option symlink-to-sysroot multilib \
             invalid-packageconfig host-user-contaminated uppercase-pn pa=
tch-fuzz \
+            variable-key \
             "
 ERROR_QA ?=3D "dev-so debug-deps dev-deps debug-files arch pkgconfig la =
\
             perms dep-cmp pkgvarcheck perm-config perm-line perm-link \
@@ -1205,7 +1206,7 @@ do_unpack[postfuncs] +=3D "do_qa_unpack"
=20
 python () {
     import re
-   =20
+
     tests =3D d.getVar('ALL_QA').split()
     if "desktop" in tests:
         d.appendVar("PACKAGE_DEPENDS", " desktop-file-utils-native")
--=20
2.29.2

