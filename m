Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14EE6B279
	for <webhook@archiver.kernel.org>; Wed, 24 Dec 2025 03:04:28 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.114277.1766545466771029842
 for <poky@lists.yoctoproject.org>;
 Tue, 23 Dec 2025 19:04:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=OKWTiFip;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=445392776f=qi.chen@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO0sOAG689657
	for <poky@lists.yoctoproject.org>; Tue, 23 Dec 2025 19:04:26 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=PPS06212021; bh=wiyHZFDf+Cx5MaETC20b
	FlcUSSZBK4WJR4dF1EbSOfk=; b=OKWTiFipJmM66PzexvDxJKxQ5Nx38Z2Y7STX
	qdRUJ/KSzAWO3cJvGe+BMm0waa+J1p1qrXz8CZJ9od+QzOmwU1+IBrahSNQwyT0v
	s9BnXTk4wVUhVJdaPSNg+tpbFLGuoTN8+m0TKhkMsUmvtlajBueZNKhDGivELQRl
	amFdWJpPdO9StS+I6QguRI3Q892qveUP9VDTKwR2uqosAQi4RRq92g31+9Spyc0L
	AjthVmoLRbjV0mVxV759mJnLoJ2UF58xdhAzMM8NzNpgKsd3TUyPKa3LImAi+j7m
	zxLrG9DW4/CXEbJqkP9sypZ1ywue17ChGdInQeqhaTwrvKjndQ==
Received: from ala-exchng02.corp.ad.wrs.com ([128.224.246.37])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4b5v6hbfjq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <poky@lists.yoctoproject.org>; Tue, 23 Dec 2025 19:04:26 -0800 (PST)
Received: from ala-exchng01.corp.ad.wrs.com (10.11.224.121) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.61; Tue, 23 Dec 2025 19:04:25 -0800
Received: from oak-lpgbuild14.wrs.com (10.11.232.110) by
 ala-exchng01.corp.ad.wrs.com (10.11.224.121) with Microsoft SMTP Server id
 15.1.2507.61 via Frontend Transport; Tue, 23 Dec 2025 19:04:25 -0800
From: <Qi.Chen@windriver.com>
To: <poky@lists.yoctoproject.org>
Subject: [meta-yocto][PATCH] meta-yocto: add .gitignore file
Date: Wed, 24 Dec 2025 03:04:18 +0000
Message-ID: <20251224030418.3628833-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAyMyBTYWx0ZWRfXwobdUMzwnc98
 hzBrKoUO1leYI+hYTYIgTi1WuitUY/7LtyQrEyq/zWxGSIO7dQM4wuZzoyAEiWNyXpdvLcmC7D0
 F75DZspe6XBDgG/12UdVm34uFLXdoqUSunoi1Uwx6AC1YWQ0E6QbzOANo6jTRwV48fSaW3g4869
 WT3AJBTNX6GTH4B9tQtzSv8OGgbECJjiBtK5TbcNRzlpap9pvhJMlBnI1VhJ6ICtmnwU/MIf9hD
 I6bd0BhjdsOwM3o/UApG2WTLWZ+NeWg4rl93cQFdTZ0hBEY6ouzLyxTwZXlpoH5uLaUkMs34DBz
 8rM1D1f39R0CCB7Oa/mmPjocc5YgFHicwqMaGOen7Z1DnWmoZEQ3R38YykFRSJZiblPyVexTfG6
 CcvOJRZDUMqCfTPmngvBg7q0vhFZGME6noP1DKyBDK3WfzZ+rQ6Yv15jimAxOFrDT5Wwk7FYs0e
 K+mvShwHusQTu2H+i6g==
X-Proofpoint-GUID: eZhW0l4lNMguKpk77O85JnS-xhKf4yal
X-Proofpoint-ORIG-GUID: eZhW0l4lNMguKpk77O85JnS-xhKf4yal
X-Authority-Analysis: v=2.4 cv=KYffcAYD c=1 sm=1 tr=0 ts=694b583a cx=c_pps
 a=Lg6ja3A245NiLSnFpY5YKQ==:117 a=Lg6ja3A245NiLSnFpY5YKQ==:17
 a=wP3pNCr1ah4A:10 a=VkNPw1HP01LnGYTKEx00:22 a=t7CeM3EgAAAA:8
 a=cBF9cfga92SrhWuShCkA:9 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_01,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1011 impostorscore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 bulkscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240023
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 24 Dec 2025 03:04:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13812

From: Chen Qi <Qi.Chen@windriver.com>

The contents are a direct copy of the .gitignore in meta-openembedded.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 .gitignore | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 0000000..c01df45
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,7 @@
+*.pyc
+*.pyo
+/*.patch
+*.swp
+*.orig
+*.rej
+*~
-- 
2.43.0


