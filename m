Return-Path: <jose.bollo@iot.bzh>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0841E00655; Mon,  6 Mar 2017 09:50:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46A89E004D2
	for <poky@yoctoproject.org>; Mon,  6 Mar 2017 09:50:52 -0800 (PST)
Received: by mail-wr0-f178.google.com with SMTP id u48so122268349wrc.0
	for <poky@yoctoproject.org>; Mon, 06 Mar 2017 09:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=iot-bzh.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:organization:mime-version
	:content-transfer-encoding;
	bh=AmKBK1tin3qQqisrddV+Lf87EZVMMti6ponWiYwdEJQ=;
	b=Cfu/YlJeoMNXLRqUXpklFer3NH0HOrdemxH/bdrV1w55wf2s9SOG6Liuf/ERt4o3uf
	io2Li2Dw6Wu97RaRGU9gPhFu53TKxmtlCtlylN2x88Q0yI/Fn2uJn03eobM51O3ZcBhM
	DuLLrB/yyY3myxvvNs273mzTncQlLolHNxllNTzHiUTnDDNVLB27iWDzAoWJMDiQbddA
	EUUM7Ra1ORez2Wq022+khNbBlL+2u4aGygOxEbuCV3R+CkdXphouKEPc71ekVANjLeOz
	tFaxpZQoLSMWorVwwDGn1gjz9vJve7uuuPmN9rMTxHECVOs4irvYoMw8/sguS2nYBDjg
	R9CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:organization
	:mime-version:content-transfer-encoding;
	bh=AmKBK1tin3qQqisrddV+Lf87EZVMMti6ponWiYwdEJQ=;
	b=iH5McLIkGs9IO5nijemvh1NzdLK8apOd+vmnlfoqiHksz0Kcyd3l9hv5itZffssXJe
	3U9IrD0pf++oh6ydwEgAWirNvMEPpFxWkK4VyGyZ4mHDvX9kyUACIpUsR0iQx3c0Oqnw
	dr/Lg0+SBeXtxlr9giwwF8qcWMIoh5icO9jUrXT0ngcLFr+DOZ1TCIhb0oee3fVOcnSs
	YCpgRlRhhxZ60R00fCVMZUaYAuL5j9nhov2+dsZEVOkFhQlj3sRSCwc4ZjvYVXrpfga6
	TEcNwxfMJn4r4Ut1OJTSnEtYHPHBkYRfAcAZx0A+j7icI4I0FV2Y6suVUr9I7Glo+1SH
	8t3g==
X-Gm-Message-State: AMke39nUd3GkiRCv+oBXEB4cbvqOlPFjyiF8M9pdkpnOUbHNYlEeFI6jvpleCyRAZr5hJw==
X-Received: by 10.223.177.18 with SMTP id l18mr16026780wra.96.1488822651389;
	Mon, 06 Mar 2017 09:50:51 -0800 (PST)
Received: from d-jobol.iot.bzh ([2a01:e34:ee5c:ee50:d6be:d9ff:fea3:db03])
	by smtp.gmail.com with ESMTPSA id
	k76sm27105555wrc.12.2017.03.06.09.50.50 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 06 Mar 2017 09:50:50 -0800 (PST)
Date: Mon, 6 Mar 2017 18:50:49 +0100
From: =?UTF-8?B?Sm9zw6k=?= Bollo <jose.bollo@iot.bzh>
To: poky@yoctoproject.org
Message-ID: <20170306185049.421a2ba0@d-jobol.iot.bzh>
Organization: IoT.BzH
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Subject: [PATCH] shadow: use config 'attr' if distro has 'xattr'
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
X-List-Received-Date: Mon, 06 Mar 2017 17:50:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

When DISTRO_FEATURES has 'xattr' the shadow package
now automatically activates its config 'attr'.
The current implmentation is a copy of what is
made currently for libcap.

Change-Id: Ie2a8469bc18b8ca7a067caf83413a28f8bcfbc84
Signed-off-by: Jos=C3=A9 Bollo <jose.bollo@iot.bzh>
---
 meta/recipes-extended/shadow/shadow.inc | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-extended/shadow/shadow.inc
b/meta/recipes-extended/shadow/shadow.inc index 99ffac3..e59ff64 100644
--- a/meta/recipes-extended/shadow/shadow.inc
+++ b/meta/recipes-extended/shadow/shadow.inc
@@ -74,7 +74,8 @@ PAM_PLUGINS =3D "libpam-runtime \
                pam-plugin-shells \
                pam-plugin-rootok"
=20
-PACKAGECONFIG =3D "${@bb.utils.filter('DISTRO_FEATURES', 'pam', d)}"
+PACKAGECONFIG ??=3D "${@bb.utils.filter('DISTRO_FEATURES', 'pam', d)} \
+                   ${@bb.utils.contains('DISTRO_FEATURES', 'xattr',
'attr', '', d)}" PACKAGECONFIG_class-native =3D ""
 PACKAGECONFIG_class-nativesdk =3D ""
 PACKAGECONFIG[pam] =3D
"--with-libpam,--without-libpam,libpam,${PAM_PLUGINS}"
--=20
2.9.3


