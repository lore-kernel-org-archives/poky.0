Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.11001.1612366402706796153
 for <poky@lists.yoctoproject.org>;
 Wed, 03 Feb 2021 07:33:22 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=q6UBLGqA;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 626DE38C05C4
	for <poky@yoctoproject.org>; Wed,  3 Feb 2021 15:33:22 +0000 (UTC)
Received: by mail-qk1-f171.google.com with SMTP id u20so17351qku.7
        for <poky@yoctoproject.org>; Wed, 03 Feb 2021 07:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=780txbSOPre+9PCZmq2V96TvljTiCUBzuOGGl5vVrw8=;
        b=q6UBLGqAC1d4BR77WLAgkKCmkqvYVjTiCjGDWp+UMAqiI78Wg3B8Fhm2PXxIxYXtLZ
         F6zOjG01KD5VFIhSRoyUlyU9+iA/a4SFD0/LVFTcOXHoGexU0P6EfpaWs+zhLbgs3p8p
         vZVFQBgEFnRzu7aCyHyPhe46pDTA6vG9eq32NRWdCv0gNKXDVb6EzndKRLLhSunsvVLn
         fn7Ayt8hp8a1W7Sam5NRUVxwL2Ayiz5BRPUUxlu2wk/YpjZbt42CGVBYgg4jyANRrNPP
         5/b1pJXXq13C32UtXDVkLMCoh72IgRH1emf2OCnl2Uyl0HQEiB00QTHqG7u+6sd6Y0hA
         Ts8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=780txbSOPre+9PCZmq2V96TvljTiCUBzuOGGl5vVrw8=;
        b=DE3hrsV0b4FpjkCSXeIHBhygOKKfmhPpQeFt92Ri3wl/j+ZK8g+8tcHqfhHhPqedmn
         XTVGwkCFns2LeAMlD9jeL0snWkBpyYwbunR/IpYS1g3Lc2IzJeCkLL3tU1ztaKnoJVgS
         j2asA+cKpMqCZZt/yf8W0Mk20NxIql7NsYKdAHMXdm8mT4ETOccOZLDtCpfvla3hri3j
         gvgnqGWTz7i9np3iiiDbNHhdyzmMALVOnGV+jYZL2fB7K6bKHCJd942pYA27o8bQPHOm
         FuzFHj/FhgjOOdseqsi8eBMHWYQ+18hTA9+P2Dbr4+cgmh7IstlNrtSc632Rc5aTVD3v
         zCXQ==
X-Gm-Message-State: AOAM533oBbNWhEkyKpcv8W91AJ8B9H/aXcRfkT6Fq53b2xA8xTzrYDH5
	ZN8Vcj0cr3ljFmqPBLj/CUs=
X-Google-Smtp-Source: ABdhPJzWp16OLvo64rn0U0oyXlg7zA4pCXv43uRln7PPS77OTZllF3Syd+frN9WzLXMoe70ohLRYKQ==
X-Received: by 2002:a37:9e51:: with SMTP id h78mr3314982qke.284.1612366401314;
        Wed, 03 Feb 2021 07:33:21 -0800 (PST)
Received: from localhost.localdomain (cpe04d4c4975b80-cm64777d5e8820.cpe.net.cable.rogers.com. [174.112.159.151])
        by smtp.gmail.com with ESMTPSA id t8sm1756532qkt.125.2021.02.03.07.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 07:33:20 -0800 (PST)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: poky@yoctoproject.org
Subject: [PATCH v2] yocto-bsp: linux-yocto: update to v5.10.12
Date: Wed,  3 Feb 2021 10:33:19 -0500
Message-Id: <20210203153319.5267-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating linux-yocto 5.10 bbapends to the latest korg -stable release

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---

v2: added the version variable bumps along with the SRCREVs

 .../linux/linux-yocto_5.10.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappen=
d b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index d6c5424fc7..87e47352a6 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?=3D "common-pc"
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
 COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
=20
-LINUX_VERSION_genericx86 =3D "5.10.5"
-LINUX_VERSION_genericx86-64 =3D "5.10.5"
-LINUX_VERSION_edgerouter =3D "5.10.5"
-LINUX_VERSION_beaglebone-yocto =3D "5.10.5"
+LINUX_VERSION_genericx86 =3D "5.10.12"
+LINUX_VERSION_genericx86-64 =3D "5.10.12"
+LINUX_VERSION_edgerouter =3D "5.10.12"
+LINUX_VERSION_beaglebone-yocto =3D "5.10.12"
--=20
2.19.1

