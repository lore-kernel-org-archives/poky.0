Return-Path: <kai.kang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2977CC3DA7F
	for <webhook@archiver.kernel.org>; Thu, 15 Aug 2024 05:28:17 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.116829.1723699690842758361
 for <poky@lists.yoctoproject.org>;
 Wed, 14 Aug 2024 22:28:11 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=895768b607=kai.kang@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47F4EOJp026144
	for <poky@lists.yoctoproject.org>; Thu, 15 Aug 2024 05:28:10 GMT
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 410n3qs931-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <poky@lists.yoctoproject.org>; Thu, 15 Aug 2024 05:28:09 +0000 (GMT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 14 Aug 2024 22:28:08 -0700
Received: from pek-lpg-core4.wrs.com (128.224.153.44) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.39 via Frontend Transport; Wed, 14 Aug 2024 22:28:07 -0700
From: <kai.kang@windriver.com>
To: <poky@lists.yoctoproject.org>
Subject: [PATCH] variables.rst: update GCCVERSION
Date: Thu, 15 Aug 2024 13:27:49 +0800
Message-ID: <20240815052749.3696159-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: gc-_PsbPw_mVSxLXsJTfhAL2O_Aelt2S
X-Proofpoint-GUID: gc-_PsbPw_mVSxLXsJTfhAL2O_Aelt2S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-14_22,2024-08-13_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 clxscore=1011 impostorscore=0
 spamscore=0 mlxlogscore=915 lowpriorityscore=0 mlxscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.21.0-2407110000 definitions=main-2408150038
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 15 Aug 2024 05:28:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13424

From: Kai Kang <kai.kang@windriver.com>

Update GCCVERSION to current version '14.x' in variables.rst.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 documentation/ref-manual/variables.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/ref-manual/variables.rst b/documentation/ref-manual/variables.rst
index 848cea787f..e0df9d05f6 100644
--- a/documentation/ref-manual/variables.rst
+++ b/documentation/ref-manual/variables.rst
@@ -3142,10 +3142,10 @@ system and gives an overview of their function and contents.
 
    :term:`GCCVERSION`
       Specifies the default version of the GNU C Compiler (GCC) used for
-      compilation. By default, :term:`GCCVERSION` is set to "8.x" in the
+      compilation. By default, :term:`GCCVERSION` is set to "14.x" in the
       ``meta/conf/distro/include/tcmode-default.inc`` include file::
 
-         GCCVERSION ?= "8.%"
+         GCCVERSION ?= "14.%"
 
       You can override this value by setting it in a
       configuration file such as the ``local.conf``.
-- 
2.34.1


