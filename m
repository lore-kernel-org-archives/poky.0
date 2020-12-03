Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.10157.1607002598038419052
 for <poky@lists.yoctoproject.org>;
 Thu, 03 Dec 2020 05:36:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=uiqqAFat;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C2B5038C083A
	for <poky@yoctoproject.org>; Thu,  3 Dec 2020 13:36:37 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id ga15so3504473ejb.4
        for <poky@yoctoproject.org>; Thu, 03 Dec 2020 05:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VHeuGxjYmWrJuGQSCEdgTjiotaxhvESrME2QUCvsfTg=;
        b=uiqqAFatSInoWC/gQCoxtsJqRFnFmAlps4mrAN1v+peTC9YyDQJslJcw6crEWTbqqX
         jbb5xYhlD4CxYM9cUlSlCRUT7zNozWYtNcOlzW/ZRrSNL6jCDXIhiKhlhmeIdErcCE5e
         nSrlAo6xY+rnrMgKVFKse1LdjL1wUxYT1d9M8h+EiB3rOim7Lld1pBW0OlDv2Mjhc/6F
         CnmrLCb0Tsjg3XQHxsZ9TzmtHRJXzLbU7xW7LMbT89wQFpkAtOzMrHWab2oIp/wBqK7j
         U+S/y1zo2HKNTZait+szgJO5eoRFb9foqApRDGFHs1GznHFUSXNnyNXGnckTh6hSeO/g
         EdOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VHeuGxjYmWrJuGQSCEdgTjiotaxhvESrME2QUCvsfTg=;
        b=T8gaeZUYRTX93hTO6gbeA9FM62LhIrfTGWbdHI/GLFT1slPYRFfHjSyewozA7yP2MO
         cT/dgA5EO9pXTctGtj1C7oX+6DrIbJzAGDZzvFWCyrr4+Sfya2qeMiYkNyqv32F24JkH
         ktwluZjczcgnDZID3lHll/4kGLnXimIcQWilv+AloGFWUhOh9DNNVcDj5W16dWxh/nHe
         meAfpMGsGaGHG9+6u8p6coGQlzhkTNsbMHBBqz5gAzZeIJOecATHmgViHAFebco55JTr
         el6zqrPtqHPWf4Nuj0SdeeGgCShXpXR5F6MoyZRXJdEjRhsXqVgb/5gRhgccTts7WY0a
         26kw==
X-Gm-Message-State: AOAM533x27/8ksQlXWaPLo0JZjW1fr8GxNXPzNkFtFfgS2H55eIEmDWq
	+uesjUtGpBPOFBI5Yf7mMUtphHe3Xrauug==
X-Google-Smtp-Source: ABdhPJwHy3yR5PdbS5Wa3mFJDXnjfVBfRiYsTpNd/G7MMiPgJ3Rednf/1QU0hWL48PD+g7dUnoWZog==
X-Received: by 2002:a17:906:2a4b:: with SMTP id k11mr2451980eje.467.1607002595882;
        Thu, 03 Dec 2020 05:36:35 -0800 (PST)
Received: from linux-f9zs.fritz.box ([2a02:2450:1011:4f7:596d:bf31:3950:5bda])
        by smtp.gmail.com with ESMTPSA id eb14sm1175337edb.20.2020.12.03.05.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 05:36:35 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: poky@yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH] poky.conf: do not write current date into distro version
Date: Thu,  3 Dec 2020 14:36:28 +0100
Message-Id: <20201203133628.12420-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

This leaks into target installs of items like os-release,
and makes them non-reproducible.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
index 31dc110bf6..20e258714a 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO =3D "poky"
 DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION =3D "3.2+snapshot-${DATE}"
+DISTRO_VERSION =3D "3.2+snapshot${@oe.utils.ifelse(d.getVar('BUILD_REPRO=
DUCIBLE_BINARIES') =3D=3D '1', '', '-${DATE}')}"
 DISTRO_CODENAME =3D "master"
 SDK_VENDOR =3D "-pokysdk"
 SDK_VERSION =3D "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}=
', 'snapshot')}"
--=20
2.29.2

