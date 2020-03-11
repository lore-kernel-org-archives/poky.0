Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web12.5349.1583923484166873068
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Mar 2020 03:44:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SP/bID3x;
 spf=pass (domain: gmail.com, ip: 209.85.221.68, mailfrom: ja.kaisrlik@gmail.com)
Received: by mail-wr1-f68.google.com with SMTP id n15so1894284wrw.13
        for <poky@lists.yoctoproject.org>; Wed, 11 Mar 2020 03:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XGgahzjHx/DBsGQbd+NVY7UiApwfG2g0HRgyKvPO/K0=;
        b=SP/bID3xk3N1KYxkbM6KiqhCSaKTwyet//T+jfMjbZjpvNMiCkBEUq1zOfjw+haEHW
         kETzc68bQ9TtmhpiYKX46GgB0vKlvezrSjoyVvhK75ASV0HKUkFfhc1V+pNSNKajL/ZM
         DDYjxptpVFIqgDfN0Df/FJq+WwGJJuxBNYSJyTS15G2+PqvgIrJGtQNBdF9KV0Ui24XR
         5bJ8h3HQYofxpygkq9S40zmyn+qttqkC2ijuemoQZ7JtzfGtL9iiUIBturn302P1zguZ
         VtqIHF3kbi6hEiw5bz4tS//mwlKYdQoITdtl3qey9vrb/MwXPCv8W5Eo/sxmQHCD0N7r
         79Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XGgahzjHx/DBsGQbd+NVY7UiApwfG2g0HRgyKvPO/K0=;
        b=FS8XZhjqHITcfxI21A9rhaLhBM3D3kuXaVhDPq/WM/CTvm5gPY3lJj5xa200DWuxvp
         MttDLnv4IMyT6yo8id/WS/RC8PM8n4aMZYBiPdi6+bvvFSopqR9LZHUo/EDV01M305RB
         toaraZOJYweHWhG7LpcOtuV0dEiFc8C/xTZcQ/P4NO9u7BLhofmsNFtyzIyR+uyziyCC
         ZWCQe/QQpiSS0k0lyj3xs1EE/twtArl7rXchKoIUO01877scY3A3ZQJrUOTyWbEUCFkS
         Xe4ie9WO4J0nNXtAL3/657vA9+LuGjOoUPUvhS+2fAviysrqeLhdJvANIk3yZBi7FMa5
         QJXA==
X-Gm-Message-State: ANhLgQ0HzpL5BgQfofQ2suzvlec/3C6SW4v54S94J3OdpDRtOluh4I5L
	q0ak8pyfUYsm5cNNJpBkUGtUfxShBAED2Q==
X-Google-Smtp-Source: ADFU+vu+/hmHHkSwxvYV7ERXwLGhl4yZCaLo0r+H+Rc5pESdcBnuDuIqQfpLkegy/EIIlI0sKv0k/A==
X-Received: by 2002:a5d:4ac8:: with SMTP id y8mr3801686wrs.272.1583923482301;
        Wed, 11 Mar 2020 03:44:42 -0700 (PDT)
Return-Path: <ja.kaisrlik@gmail.com>
Received: from xeri-steel.it.int.avast.com ([2001:67c:284:64:2e72:b023:a491:3237])
        by smtp.gmail.com with ESMTPSA id q16sm55956493wrj.73.2020.03.11.03.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 03:44:41 -0700 (PDT)
From: ja.kaisrlik@gmail.com
To: poky@lists.yoctoproject.org
Cc: raj.khem@gmail.com,
	armccurdy@gmail.com,
	Jan Kaisrlik <ja.kaisrlik@gmail.com>
Subject: [meta-poky][PATCH] musl: removes aliases for glibc provided libraries
Date: Wed, 11 Mar 2020 11:44:23 +0100
Message-Id: <20200311104423.556794-1-ja.kaisrlik@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jan Kaisrlik <ja.kaisrlik@gmail.com>

Based on the recommendation in musl mailing list[1] All symlinks have
been removed from musl recipe.

[1]: https://www.openwall.com/lists/musl/2020/03/10/11

Signed-off-by: Jan Kaisrlik <ja.kaisrlik@gmail.com>

---

To move discusion from musl mainling list futher I wrote this patch. I'm affraid
that the patch can break existing builds. OTOH I've tested with my non-trivial
distro and I find sdk/image working without any additional patches.

 meta/recipes-core/musl/musl_git.bb | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/meta/recipes-core/musl/musl_git.bb b/meta/recipes-core/musl/musl_git.bb
index afc8446547..f4fbb03092 100644
--- a/meta/recipes-core/musl/musl_git.bb
+++ b/meta/recipes-core/musl/musl_git.bb
@@ -66,24 +66,11 @@ do_install() {
 	rm -f ${D}${bindir}/ldd ${D}${GLIBC_LDSO}
 	lnr ${D}${libdir}/libc.so ${D}${bindir}/ldd
 	lnr ${D}${libdir}/libc.so ${D}${GLIBC_LDSO}
-	for l in crypt dl m pthread resolv rt util xnet
-	do
-		ln -sf libc.so ${D}${libdir}/lib$l.so
-	done
-	for i in libc.so.6 libcrypt.so.1 libdl.so.2 libm.so.6 libpthread.so.0 libresolv.so.2 librt.so.1 libutil.so.1; do
-		ln -sf libc.so ${D}${libdir}/$i
-	done
 }
 
 PACKAGES =+ "${PN}-glibc-compat"
 
-FILES_${PN}-glibc-compat += "\
-                ${libdir}/libc.so.6 ${libdir}/libcrypt.so.1 \
-                ${libdir}/libdl.so.2 ${libdir}/libm.so.6 \
-                ${libdir}/libpthread.so.0 ${libdir}/libresolv.so.2 \
-                ${libdir}/librt.so.1 ${libdir}/libutil.so.1 \
-                ${GLIBC_LDSO} \
-                "
+FILES_${PN}-glibc-compat += "${GLIBC_LDSO}"
 
 RDEPENDS_${PN}-dev += "linux-libc-headers-dev bsd-headers-dev libssp-nonshared-staticdev"
 RPROVIDES_${PN}-dev += "libc-dev virtual-libc-dev"
-- 
2.25.0

