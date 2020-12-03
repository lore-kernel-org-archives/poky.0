Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.11340.1607008058473053545
 for <poky@lists.yoctoproject.org>;
 Thu, 03 Dec 2020 07:07:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=NHam3BGh;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B87E138C0868
	for <poky@yoctoproject.org>; Thu,  3 Dec 2020 15:07:37 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id k4so2462150edl.0
        for <poky@yoctoproject.org>; Thu, 03 Dec 2020 07:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NGu4naYuEcWJr4DjH90FMCBcGZCVPhRpp4+tEPsexHk=;
        b=NHam3BGhuL9Uq5X2dea67IpIGUsMdaFqyXSZ4I02b8uUflR/zV68AxMUmTHaQ34bB5
         FOrRJYlzDmNExNospzdp/LK+6nZvBwsI52tgue2LlnC1ym8k9rJZld38GJgu3VlkrwMy
         VHbTEchcwNX8JqSMMvdx8S74wVN/FKPQoYAahNZNRSA72oGyuGSjv0LzKLBAH8XydKh5
         agZbTZ7pANg2cNB1sJlnTEEptlstJ5EI7COAQTPHdoD7yzCQU1DL5K5gZ/MctSGbMLkg
         zSUXq/E1ifomI39s0TtzkRdvDBvg1uqDJr5xvgwGcT/IHBLZQxPlNjt5KDP9CqQ7hKTi
         Asbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NGu4naYuEcWJr4DjH90FMCBcGZCVPhRpp4+tEPsexHk=;
        b=rzAKlukEoMfyJIbT59RkcoiuxIKlSrvH4fmGg+Z3BrUopdN5Vygs/BpCwmCUEZ+wKg
         U54GUzWrOXlmU8UjZPBE7V7WfJwbOJc6Pb8fm4ig0fH7ATSfflOAJ7rYzTp6y9CKOy7C
         sgtSwZ0mI0qU5w2KS3PGvzHHup8LxEbZc2Mj0HVU2pHsCMg4b+vJ8ZEcqpsyNud/3mIi
         52mPYZKBJAZ/QYyvdxmvf9xg7HpkbJ84zDOwgonJ/VmBp8XwhYT3j/PyKojI00+7lFqQ
         JuhyRgLGgrdHo4oCGQtebQrepqvKdAXtijkr/K3T4hcm7jxHQJi68KejArYMIgyT+clb
         KSjg==
X-Gm-Message-State: AOAM530Hh5FzvGXXFz7MYS/Nd2MDASYvPJQPfEn9xyGvn2bqZTAnrg4U
	wNmM5L7MqAcuRSJrjTdY1a4belDS2zRxoA==
X-Google-Smtp-Source: ABdhPJwiHRbX6n+9ZgoLm2wmzOmSlsh8wXzjPOwTtbm6dhOl3Gf0tPRreykVc7zXEihWJRe5qBMCSA==
X-Received: by 2002:aa7:ca41:: with SMTP id j1mr3270776edt.295.1607008055786;
        Thu, 03 Dec 2020 07:07:35 -0800 (PST)
Received: from linux-f9zs.fritz.box ([2a02:2450:1011:4f7:596d:bf31:3950:5bda])
        by smtp.gmail.com with ESMTPSA id p25sm1005947eju.63.2020.12.03.07.07.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 07:07:35 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: poky@yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH] poky.conf: do not write current date into distro version, use git hash instead
Date: Thu,  3 Dec 2020 16:07:29 +0100
Message-Id: <20201203150729.12008-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

The date leaks into target installs of items like os-release,
and makes them non-reproducible.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
index 31dc110bf6..1f37b91613 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO =3D "poky"
 DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION =3D "3.2+snapshot-${DATE}"
+DISTRO_VERSION =3D "3.2+snapshot-${METADATA_REVISION}"
 DISTRO_CODENAME =3D "master"
 SDK_VENDOR =3D "-pokysdk"
 SDK_VERSION =3D "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}=
', 'snapshot')}"
--=20
2.29.2

