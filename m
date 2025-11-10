Return-Path: <stefan.tauner@artech.at>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3DF0CCF9E3
	for <webhook@archiver.kernel.org>; Mon, 10 Nov 2025 09:51:42 +0000 (UTC)
Received: from out07.mymailwall.com (out07.mymailwall.com [91.212.136.3])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.44858.1762768295130786523
 for <poky@lists.yoctoproject.org>;
 Mon, 10 Nov 2025 01:51:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@artech.at header.s=mailsecurity header.b=OgMK+06N;
 spf=pass (domain: artech.at, ip: 91.212.136.3, mailfrom: stefan.tauner@artech.at)
X-MyMailWallStatus: Email scanned(2662189334)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=artech.at; s=mailsecurity;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:content-transfer-encoding;
	bh=HW7twKuU52h4XYQyLI35z89AR5w0BuGyejB2ffHlEtA=;
	b=OgMK+06Nc78xRsAT/rdKjP+Ivjo36KcInv1fWm/nCWtyCtSSGTvI8FgU8vpTHSSpsBx0ccOb
	OmdNadMXohluc8/XLampz42AytbRO8PhDxPro7ovPawDsc0tn5zq734fmmWa/gvwFfHiuXq9
	A2ekrFRQeCB9lZ9yAbx2zqry+ZFE9dnWIaX7VbqPsp7jOyS/oS4saGfe2ilrMYiTbqxPCtPZ
	cc0LmZ5LpfITRLH38JlfL1/bnu4beiqdj+BRohHIoFG1QMu2hEnh+5GvAhl+0dVPFJJuPfMg
	kLXN0ivTaCIi3VPVz0Zh7y8pkCvUiDrhegb2pFcu9fhI2fFlin4YdA==
Received: from 91.112.220.234 (EHLO mail.artech.at) [91.112.220.234]
	by relay.mymailwall.com with ESMTP TLS id 46511 2662189334; Mon, 10 Nov 2025 10:51:29 +0100
Received: from localhost.localdomain (192.168.100.204) by SRV09.ARTech.local
 (192.168.0.89) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.61; Mon, 10 Nov
 2025 10:51:28 +0100
From: Stefan Tauner <stefan.tauner@artech.at>
To: <poky@lists.yoctoproject.org>
Subject: [PATCH] screen: Add missing RDEPENDS on ncurses-terminfo-base
Date: Mon, 10 Nov 2025 10:51:27 +0100
Message-ID: <20251110095127.194211-1-stefan.tauner@artech.at>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-Originating-IP: [192.168.100.204]
X-ClientProxiedBy: SRV09.ARTech.local (192.168.0.89) To SRV09.ARTech.local
 (192.168.0.89)
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 10 Nov 2025 09:51:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13788

Without this run-time dependency the terminfo database might not
be installed at all and screen would bail out immediately, e.g.

  $ screen
  Cannot find terminfo entry for 'vt102'.

Signed-off-by: Stefan Tauner <stefan.tauner@artech.at>
---
 meta/recipes-extended/screen/screen_4.9.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Since screen is not a niche application extraordinaire I am wondering if I =
am
doing something else wrong but AFAICT it's really that simple...
I am working with scarthgap ATM but if need be I can forward-port it too.

diff --git a/meta/recipes-extended/screen/screen_4.9.1.bb b/meta/recipes-ex=
tended/screen/screen_4.9.1.bb
index 706351a593..d395823eec 100644
--- a/meta/recipes-extended/screen/screen_4.9.1.bb
+++ b/meta/recipes-extended/screen/screen_4.9.1.bb
@@ -14,7 +14,7 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd32239bcb67346=
3ab874e80d47fae504 \

 DEPENDS =3D "ncurses virtual/crypt \
           ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'libpam', '', d)}=
"
-RDEPENDS:${PN} =3D "base-files"
+RDEPENDS:${PN} =3D "base-files ncurses-terminfo-base"

 SRC_URI =3D "${GNU_MIRROR}/screen/screen-${PV}.tar.gz \
            ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'file://screen.p=
am', '', d)} \
--
Kind regards, Stefan Tauner




FN 181686 k. HG Wien, UID-Nr. ATU 47056901, zertifiziert nach ISO 9001:2015=
 (Nr. AT-04036/0), ISO 22163:2023 (IR-00009/0), ISO 14001:2015 (U7-05420/0)=
 und ISO 27001:2022 (Nr. AT-00075/0)
Der Inhalt dieser E-Mail ist vertraulich und ausschlie=DFlich f=FCr die bez=
eichneten Adressat*innen bestimmt. Wenn Sie nicht zu den vorgesehenen Adres=
sat*innen dieser E-Mail oder deren Vertreter*innen geh=F6ren sollten, so be=
achten Sie bitte, dass jede Form der Kenntnisnahme, Ver=F6ffentlichung, Ver=
vielf=E4ltigung oder Weitergabe des Inhaltes dieser E-Mail unzul=E4ssig ist=
. Wir bitten Sie, sich in diesem Fall mit der*dem Absender*in der E-Mail in=
 Verbindung zu setzen und die E-Mail zu vernichten. F=FCr =DCbermittlungsfe=
hler oder sonstige Irrt=FCmer bei der =DCbermittlung besteht keine Haftung.
This e-mail is intended solely for the person to whom it is addressed and m=
ay contain confidential or legally privileged information. Access to this e=
-mail by anyone else is unauthorized. If an addressing or transmission erro=
r has misdirected this e-mail, please notify the author by replying to this=
 e-mail and destroy this e-mail and any attachments. E-mail may be suscepti=
ble to data corruption, interception, unauthorized amendment, viruses and d=
elays or the consequences thereof. If you are not the intended recipient, b=
e advised that you have received this e-mail in error and that any use, dis=
semination, forwarding, printing or copying of this e-mail is strictly proh=
ibited.


