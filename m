Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web10.17269.1636192071726152811
 for <poky@lists.yoctoproject.org>;
 Sat, 06 Nov 2021 02:47:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NmzDVKtX;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: leif.middelschulte@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id x15so10385601edv.1
        for <poky@lists.yoctoproject.org>; Sat, 06 Nov 2021 02:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :cc:to;
        bh=a8c5HWd4GvuKG9bT/CN1brs3euk8YLi2BKNHrjX8DyY=;
        b=NmzDVKtXMEWyk/X+9RaYYyUgszWxcecNbKly4hBq47eFuGtZz4m21ng7NC7BJPfEqO
         NO4UJkMXP/rc3wsFSYqhZJoEmzK1tQ8DeBgfNTbEPRffbDxZGc3JvRXRlU1kayPmYe40
         P398rk3HTQ2vb68j7ScxCCOmm6Aizg8KuPSXckZjJvfmhSbandn2+nmPoNWeHTRpQvnT
         n8wHPg1qipFvHZ2aJwTfJKcGAaapjjsobm5x5X0vu97+qVMtHsGJ2g/o1cNJ2Ola+PZ/
         bWNCaohtxuOKtdnM6tDDC3e/dgnFQLiUH0h6n7lfDB1dc8/GyCfdX3PP50OFPqt8VDR6
         xblg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:cc:to;
        bh=a8c5HWd4GvuKG9bT/CN1brs3euk8YLi2BKNHrjX8DyY=;
        b=6+yEogQnv20ZC1xS5ZkjsIDuLbzUADNOoWzF1yND/DLZuNCjbWgOsvd6q0TloZ+Lyu
         Usschv6xPZ2ngluO1L4jdk7GxUq5srRQVwj9+3qqtTR8Qlf+fn47MUd3M6uXLHa7XLYq
         WQ+4CbFAbZJlz/XPY4P5wwOj4J3fpmVqBpviGx2PptbmBnc5hi27zdt/K7BBr3p3Bt22
         8oKKQwdFBbVCCcags0lc1XJufBpl/f9hhr8PranlX4RyuHLzkI7E6VEzqm41EtyKwtE8
         j+hWbr5J2rE9j6unL0Rdv6K74+35F+hIuvSbhkTUY80UqdJKNwceKQjoiuuwkftJyh45
         Kvbg==
X-Gm-Message-State: AOAM531vd61ZW1ua71qTmvwKEsT+ppa3kggjCfUdsc0jhyLhILm/eCat
	UpY/sVTOuWIHIy7GWWguFGKe7lpEAuzNbQ==
X-Google-Smtp-Source: ABdhPJwdqKUYHfPQUZgm7LhDxqvItjdGafZCDSQUd26BhW6PCTqcVcJiYNV5JX2medLw8hjJfM5RDg==
X-Received: by 2002:a17:906:9459:: with SMTP id z25mr17680887ejx.331.1636192070111;
        Sat, 06 Nov 2021 02:47:50 -0700 (PDT)
Return-Path: <leif.middelschulte@gmail.com>
Received: from smtpclient.apple ([46.183.103.17])
        by smtp.gmail.com with ESMTPSA id c7sm5279346ejd.91.2021.11.06.02.47.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Nov 2021 02:47:49 -0700 (PDT)
From: "Leif Middelschulte" <leif.middelschulte@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Subject: [PATCH] meson: make https:// wrap source downloads work
Message-Id: <873EB729-5CCC-4B12-B45D-B9D481D38E89@gmail.com>
Date: Sat, 6 Nov 2021 10:47:44 +0100
Cc: Leif Middelschulte <Leif.Middelschulte@klsmartin.com>
To: poky@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3693.20.0.1.32)
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Meson would fail to fetch wraps' sources on bare systems (i.e. docker =
images),
that only provide little more than the SDK.

The SDK's SSL directory was not searched, so meson would fail when it =
tried
to fetch sources via https, that were specified in wrap files.
Specifically `urllib` would fail:
```
<urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify =
failed: unable to get local issuer certificate (_ssl.c:1129)>
```

Caution: this patch depends on the underlying C library (i.e. openssl)
to consider this environment variable.

Signed-off-by: Leif Middelschulte <Leif.Middelschulte@klsmartin.com>
---
meta/recipes-devtools/meson/meson/meson-wrapper | 4 ++++
1 file changed, 4 insertions(+)

diff --git a/meta/recipes-devtools/meson/meson/meson-wrapper =
b/meta/recipes-devtools/meson/meson/meson-wrapper
index d4b5187f8d..8fafaad975 100755
--- a/meta/recipes-devtools/meson/meson/meson-wrapper
+++ b/meta/recipes-devtools/meson/meson/meson-wrapper
@@ -4,6 +4,10 @@ if [ -z "$OECORE_NATIVE_SYSROOT" ]; then
    echo "OECORE_NATIVE_SYSROOT not set; are you in a Yocto SDK =
environment?" >&2
fi

+if [ -z "$SSL_CERT_DIR" ]; then
+    export SSL_CERT_DIR=3D"${OECORE_NATIVE_SYSROOT}/etc/ssl/certs/"
+fi
+
# If these are set to a cross-compile path, meson will get confused and =
try to
# use them as native tools. Unset them to prevent this, as all the =
cross-compile
# config is already in meson.cross.
--=20
2.33.0

