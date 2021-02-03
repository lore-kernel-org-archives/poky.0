Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.10361.1612364378280777074
 for <poky@lists.yoctoproject.org>;
 Wed, 03 Feb 2021 06:59:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=pESPqlwm;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 281E238C064C
	for <poky@yoctoproject.org>; Wed,  3 Feb 2021 14:59:37 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id z32so303130qtd.8
        for <poky@yoctoproject.org>; Wed, 03 Feb 2021 06:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=enE3dwpsAI9IJ6sVQC3fvlBX2GeLEcLyCRSwS+E5OFk=;
        b=pESPqlwmgN7MlSaASZr1OsbyW0+iI1w4mRDDJ49N/UiB9B40YlYFbLkjKbvqFL7cnt
         YXWPlSmoWknbV1PbHtbAP8ZkRgbw81GdgWaxR3lA7jClPhvDZP+yLjarNlrQBzKJDh5c
         oH5TTQEB8P+GW/qppNSV4NoLrg1RXiARJLpXzabdxutZD5xICwRoGRUw57v7m5LtaYYi
         8Fe0I+YTqKcn+yBqnZjR97ekp+p0/TF3pO3jbQWadHqUa3Sqv427BtTjGJTMDkXP6UG7
         j0PBe3DAdWtIsoDtvbP/86fSZotoJeW5VNGesipmXU0v3qZd/mE7Fxr3qsvr/jos+5OZ
         3RNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=enE3dwpsAI9IJ6sVQC3fvlBX2GeLEcLyCRSwS+E5OFk=;
        b=tbp+M+H5qTRbcYQZ0LzVGgudFgrQUA8G4XYdsrMAEwGAs/HKWTBunrxQKZbaXj7CiK
         170xdaHwE4ICp89KxjnJBVPFtVmvU4yqhIg1tB7mIqTsHHJeyg1GJcl7TxeC51CK9PdO
         5H7I4lVOD5WNDvMfzgPWwQb9P2w5FYUs5Gq1emBj3lDAQh3xcqxMR7JVbNLjhegqBqwr
         Zy801sr/06SVQQuvmLlE06IPHlkI20u+bmbK6hTsd9I4rpcT+cBV5Z/EbS/LtTu/ktEr
         QyMsVYEp46YIbhiC15+os9cgAlJeqoocsf4C8fdBa2ytrrFNY986hIsnzZf1U9LBBS5t
         k/hw==
X-Gm-Message-State: AOAM5309omnomIpWgscCRqk8VX5gAfCgL2FCrpkrQdnaKxU7cGo5gX2R
	is8xDy4Qo0jtShS3U4Hs8/E=
X-Google-Smtp-Source: ABdhPJyk81CQptMYnVe1KBrH71BzkolfjMWjSvUXKh5xWvbTc3XbnzZLRafWgIRuvSmSfb0t8vTBWQ==
X-Received: by 2002:ac8:57ca:: with SMTP id w10mr2755206qta.12.1612364374861;
        Wed, 03 Feb 2021 06:59:34 -0800 (PST)
Received: from localhost.localdomain (cpe04d4c4975b80-cm64777d5e8820.cpe.net.cable.rogers.com. [174.112.159.151])
        by smtp.gmail.com with ESMTPSA id o5sm1806762qko.85.2021.02.03.06.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 06:59:34 -0800 (PST)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: poky@yoctoproject.org
Subject: [PATCH] yocto-bsp: linux-yocto: update to v5.10.12
Date: Wed,  3 Feb 2021 09:59:32 -0500
Message-Id: <20210203145932.5044-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating linux-yocto 5.10 bbapends to the latest korg -stable release

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappen=
d b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index d6c5424fc7..8fb7e2c340 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,10 +7,10 @@ KMACHINE_genericx86 ?=3D "common-pc"
 KMACHINE_genericx86-64 ?=3D "common-pc-64"
 KMACHINE_beaglebone-yocto ?=3D "beaglebone"
=20
-SRCREV_machine_genericx86 ?=3D "f08df324ccdbc73b9f0c2de2826a2843bcdf651b=
"
-SRCREV_machine_genericx86-64 ?=3D "f08df324ccdbc73b9f0c2de2826a2843bcdf6=
51b"
-SRCREV_machine_edgerouter ?=3D "1f3d7b6a85e98317771367e70824f7803ff9ca30=
"
-SRCREV_machine_beaglebone-yocto ?=3D "f08df324ccdbc73b9f0c2de2826a2843bc=
df651b"
+SRCREV_machine_genericx86 ?=3D "cdca78778415b4b3bd64e8390ee8adf04bf7e17a=
"
+SRCREV_machine_genericx86-64 ?=3D "cdca78778415b4b3bd64e8390ee8adf04bf7e=
17a"
+SRCREV_machine_edgerouter ?=3D "2e1fb8f84f09ca768eb531f33a126a40bb90e791=
"
+SRCREV_machine_beaglebone-yocto ?=3D "cdca78778415b4b3bd64e8390ee8adf04b=
f7e17a"
=20
 COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
--=20
2.19.1

