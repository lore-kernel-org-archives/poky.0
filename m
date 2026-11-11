Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.5604.1794387890403948372
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Nov 2026 01:04:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=XS0ImG0Q;
 spf=pass (domain: smile.fr, ip: 209.85.221.48, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-491f34b4e0fso1292246f8f.2
        for <poky@lists.yoctoproject.org>; Wed, 11 Nov 2026 01:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1794387889; x=1794992689; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cs6ZquWudUxfN8NrUgbfjQrLwWTEXNyRuYPnVyh/V88=;
        b=XS0ImG0QNGLdfkZt4vBHxlgPnUA98lZtbPu6nvys/erjWb88i7JiSDmxzK6a4ypK4s
         rRNe4MVGr5A6QnBwpKRT0zCrCrH0KjPt7wtU2bdblM+L3BuQ/E/r/pz7VgvVmvLmJtHN
         qt+18YQrIDyOxFUB8/qif9g1TdUU4Oyd+CBxd8wgjyCWkBs89+TdiFxEDn1vbYz1HQeG
         Dm8smfxPDiyS5SEgdM1umhstFo4PrmIIgq+sNHsBqzZRtyql3wIURDIP01VjrB+Ipcjl
         l1sgxtQq4EK16bRIZPeBP+/6KqwBmfQ5twchMUSEpIyTaK1+TRdhcawdZWgjmYyEIZJs
         kdnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794387889; x=1794992689;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cs6ZquWudUxfN8NrUgbfjQrLwWTEXNyRuYPnVyh/V88=;
        b=u2+Om3NTLa/yn+JVs25/ov1oEvDW82rJ7C2FQLOkC76g5HFXL0cbqZDsAof8hTcgSb
         PtrPoa28bE82TIkwasgCJ+JqEZ6Lha2HBZ50lCqc7VXiaeDgZSRcaBs1ubAIy3CsVnpr
         3xOLQHYZmC3Lb4E8zsMLQGqRetYeSRnVgWm7JnhpAqHk3pgw7Mih3WINxF09foPvjfi/
         KtUF4b9SRP8OO16aFUnr/zIeM3EkEldtDkn28KECkxupJmnzjKdd1Y+SGZp+sr9FT1eU
         ciYAxXgjr/qGpKLV2F0ZpoTGD1oy5UMIExegss6jMWJmwSdPIcY+WT7Z7fD8bA8II2Cs
         K5ww==
X-Gm-Message-State: APuU4Z8FwULXM+Kq1hjPapvNqjYg/IukgIGd6TFhfvBqP9LcIRzSRJ4A
	ggXPITx8aoGxgCuh0SFZ/1ZSK9pO+maKC9Ln80YJUMmJ9FbbZKOgyYPrLaO1VDIyntwgue8WoiU
	SV7iFlpA=
X-Gm-Gg: AYBFou11VBR+dmnV/5dzgrbuB6TcNBlO8UIVLbUyhOx0Orudr8YCgyNR4AlZGPTgOxP
	1iBmShNqbpS4AoifNub8GO6J0J23kd/KUYJa2Hs+7Vd87RvnCKk6LGyIiA3HIybUlUJzpKVXk2P
	VbfyjrOIoaBDSx5e9o5qqwuGqUM+bSuOq6ME8UlZYwtUJ4fYA6vrWGgjCBD75AnJyaN/FDf3WjV
	dAYroL6llUT3lbYZZc3QzCC2l9+QMIo18TNMSyctm7xDQ7aZnSNWffuY66lw+M/bC9Oo65gWvbe
	dasgy0q3/+Ab/ThhDxFSrIfT9rjHBHo91+XVZfNH6/Qr8u5jHEH9sS/FuxuYhMA3icA0gTK/TXh
	UR74U/VRIoM7vj/S5zykU2Z2R6pdFfZ3wLpF/mlJrSv3+C3LhvmkXecLNfG27vObEk9e4HTNPY4
	P+fwlwSB47GQc8oIp/T8UtgtgSfqORf8Dvz/HEfDNZWye4m8xQK2paHbsY0uPIua9jiSDKJrgEA
	Chr++tBQyjtnGglhXJQDdhTaHkepLGqvi+8yFLSvlfF8tsFb5U/IY5j6qgw7OCC8QIJbqte4W3q
	zQ2Oh1PesoA4eQXfR3zBWiP80NDvV0vbOCr+e/Se0X/wQuOJJR6PMFYiotgBefpc7MszWtf9sOk
	QxZP06e5tRACrU2dv0D/6S7HmQ566
X-Received: by 2002:a05:6000:992:b0:488:83f7:6352 with SMTP id ffacd0b85a97d-499c3ba0174mr2554517f8f.4.1794387888346;
        Wed, 11 Nov 2026 01:04:48 -0800 (PST)
Return-Path: <yoann.congal@smile.fr>
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-498361f6bacsm9882751f8f.35.2026.11.11.01.04.47
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 01:04:47 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][wrynose 0/3] Patch review
Date: Wed, 11 Nov 2026 10:04:37 +0100
Message-ID: <cover.1794387818.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Wed, 11 Nov 2026 09:04:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13996
Content-Type: text/plain; charset="utf-8"

Please review this set of changes for wrynose and have comments back by
end of day Thursday, November 12.

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/5102
* qemuarm64-musl-ptest failed with 15814 – qemuarm64 musl ptest failures
  retried in https://autobuilder.yoctoproject.org/valkyrie/?#/builders/109/builds/1543

The following changes since commit 79b6d87030178bed0088ad3b00aa6dfbabac37c4:

  yocto-bsps: update to v6.18.54 (2026-10-15 16:28:52 +0200)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/wrynose-review
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/wrynose-review

for you to fetch changes up to b60511544c41f5d29d290681e15c9e302f747efe:

  Fix LICENSE file and licensing (2026-11-06 09:53:58 +0100)

----------------------------------------------------------------

Bruce Ashfield (2):
  yocto-bsps: update to v6.18.57
  yocto-bsps: update to v6.18.59

Richard Purdie (1):
  Fix LICENSE file and licensing

 LICENSE                                       | 14 ++---------
 LICENSE.MIT                                   | 25 +++++++++++++++++++
 .../lib/oeqa/controllers/beaglebonetarget.py  |  4 +--
 .../lib/oeqa/controllers/grubtarget.py        |  2 +-
 .../linux/linux-yocto_6.18.bbappend           |  2 +-
 5 files changed, 31 insertions(+), 16 deletions(-)
 create mode 100644 LICENSE.MIT

