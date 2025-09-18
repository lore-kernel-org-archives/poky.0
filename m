Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA4E1CA1013
	for <webhook@archiver.kernel.org>; Thu, 18 Sep 2025 16:31:04 +0000 (UTC)
Received: from rusty.tulip.relay.mailchannels.net (rusty.tulip.relay.mailchannels.net [23.83.218.252])
 by mx.groups.io with SMTP id smtpd.web10.19462.1758213061102103483
 for <poky@lists.yoctoproject.org>;
 Thu, 18 Sep 2025 09:31:01 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@rootcommit.com header.s=hostingermail-a header.b=qMobuLh2;
 spf=pass (domain: rootcommit.com, ip: 23.83.218.252, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremailsmtpin|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 11EC58A1BB8
	for <poky@lists.yoctoproject.org>; Thu, 18 Sep 2025 16:30:59 +0000 (UTC)
Received: from fr-int-smtpout17.hostinger.io (trex-blue-7.trex.outbound.svc.cluster.local [100.108.36.32])
	(Authenticated sender: hostingeremailsmtpin)
	by relay.mailchannels.net (Postfix) with ESMTPA id 3E8BE8A13A7
	for <poky@lists.yoctoproject.org>; Thu, 18 Sep 2025 16:30:58 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1758213058; a=rsa-sha256;
	cv=none;
	b=mv0Pc9kmwqNPgbQmWjGseTU29mlNH8DqkZK0hod/1G+/7oxJJgbP7DcKMgng+3ILxTbcO0
	72wlBtMqkEb1pMjf9wIE3CeHqu4f4DNd1D5FWNAJXiYuy1mfI4QUm6k6eNuWIOy3mlkgEv
	vYk9Ma9ekNFBcjRKnbwq57X5eXwyUOndiV3qMGHgyCEBY9zfHn2ICrT81FEBQCS+NbqltD
	Att6Ok51Deew34/xqx1q+sd6M31jTumg+b+9BYcCodIciWZle2xUY/W4MNtorpvZXeWioR
	S/BAXK5PEGl1FbSWI+0Xep0Q8YKoJH4s71xQC/GwnNrLrX647Z/SDpfrsrOsbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1758213058;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=lO9nl4XpksejODXmsRIraP/hx5psBxSrq8KiewGl2MY=;
	b=hGNKjfgTe4x/qeqDcdhc3d4k+NP/zcztlLGLiQsV5WtrxkjlMleCF5PgNXfHw1Gn+df1AU
	q7WqnAx/4ouMa2XLwyfbiolZ+GM6jCdfrINqrFOMAw7fbShmtpgBdF5mzAFisDWs+S3xRa
	TmhwfrVzGKIGVivrQKWdspPFTcGgWc39y58hXbsXIAoAOOLjGMSRWz+6K4UhYRItgLYRA7
	LfdbVOrq10dQ/Xlvlv8WSP3ix2/NXEa7Gkz+EkYkXi7bwI1VspUWnrZusg4NU+6Dmo9tqU
	8z+B1uPSTf/uypLowITcEnkumnonhxPuVOZfC6cFMa+W00fe6AH+4iAaNRbxAg==
ARC-Authentication-Results: i=1;
	rspamd-7c7bd86f7-ch68d;
	auth=pass smtp.auth=hostingeremailsmtpin
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremailsmtpin|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremailsmtpin|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremailsmtpin
X-Whispering-Lyrical: 31fbd34c130b85f1_1758213058782_785613572
X-MC-Loop-Signature: 1758213058782:3552967984
X-MC-Ingress-Time: 1758213058782
Received: from fr-int-smtpout17.hostinger.io (fr-int-smtpout17.hostinger.io
 [148.222.54.37])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.108.36.32 (trex/7.1.3);
	Thu, 18 Sep 2025 16:30:58 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:861:4448:6b00:d66c:dbef:1c7a:ba0b])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4cSLjX2CsTz1xnv;
	Thu, 18 Sep 2025 16:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1758213056;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lO9nl4XpksejODXmsRIraP/hx5psBxSrq8KiewGl2MY=;
	b=qMobuLh2nbMFRKHS2/ZzybHoMcS1Bz9O68uHE1qVFFHNDXHm2BCBJ7vw+IF14HksCxD2L8
	FZoYY8r2I6RfUwAKw20wh/w+fzcvuAkqpalZduiSu2nOuHlcsJLDasF1m+gR7EXXqL23Wn
	6rj/CDw89e5+BIQD9H3QPk2342EUGnxzLgtXarVTpcJ3N9qsgZrVhmPg21Zr5EgYM1vEzf
	Q9mSl4WIycxC7pLlXj1HxWPKj5Uk4xCRh3/tFSSod39R+q5nIXgEvUaihfIpwWlG6wP9ku
	DsI2CK7+OTiMoKgwpDrmigGzSDojZu8FpO9Bfp+TeNEn4pCZYKqsGnHGvqim8w==
From: michael.opdenacker@rootcommit.com
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Subject: [PATCH] poky.conf: remove unnecessary INHERIT += "create-spdx"
Message-ID: <20250918163049.43647-1-michael.opdenacker@rootcommit.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Date: Thu, 18 Sep 2025 16:30:56 +0000 (UTC)
X-CM-Analysis: v=2.4 cv=DJTd4DNb c=1 sm=1 tr=0 ts=68cc33c0 a=ZIr1cLi1LN7EepFizT/AHQ==:617 a=xqWC_Br6kY4A:10 a=d70CFdQeAAAA:8 a=ClLK6mlHpnJAcosBTSMA:9 a=NcxpMcIZDGm-g932nG_k:22
X-CM-Envelope: MS4xfMvTZMPbmxlqfP7RBre33xmm+vp8m8eccNGbo5vQrSbr9QSKi0ZV7eQsk3IEoLcjJbwy3U76DCpk5qIh6WBMBBEWWhlxaGb+/TuP05K+GF/Jhl0PV2ke kdFzyNaMY+q1SHkWYmbrI0WKhn8ja9ECEG7siS1C+XQTN4FNL8tADQkiP7W9Gf9Wo+L5f5WtycqJll05t/qMWlsQeHaCowMBTJuQPgPO8vmY1Kv1S2nMJV1I XslfmTERDwlgglxD8xBfgcPapOqDKcx0uKF3HVtRfZaunTm277Eb5tYQ3gJU3rskavr2pGQRwYzA9goR6bAfsdfby0LMC8691yoOosY0tUc=
X-AuthUser: michael.opdenacker@rootcommit.com
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 18 Sep 2025 16:31:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13751

From: Michael Opdenacker <michael.opdenacker@rootcommit.com>

Already inherited through meta/conf/distro/defaultsetup.conf

Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
---
 meta-poky/conf/distro/poky.conf | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
index d86630b153..3a17748fdb 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -73,6 +73,3 @@ INIT_MANAGER ?=3D "${POKY_INIT_MANAGER}"
=20
 # We need debug symbols so that SPDX license manifests for the kernel wo=
rk
 KERNEL_EXTRA_FEATURES:append =3D " features/debug/debug-kernel.scc"
-
-# Enable creation of SPDX manifests by default
-INHERIT +=3D "create-spdx"

