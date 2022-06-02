Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.117.1654189409013576303
 for <poky@lists.yoctoproject.org>;
 Thu, 02 Jun 2022 10:03:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=ffoU8iAU;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.41, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f41.google.com with SMTP id u12-20020a17090a1d4c00b001df78c7c209so10002723pju.1
        for <poky@lists.yoctoproject.org>; Thu, 02 Jun 2022 10:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=CPKntKgJNhLg4wTV3TpMmAfyeDqA5bi+kCA6QyYMVFY=;
        b=ffoU8iAUwiEQ7p+G0PEoTv5r12yAsymML/AzzSH1PMz8W3mUzGMHaAfzH3f4iaCII1
         HMItTx0Ir5ZE7N42MU3RXRnfyTfVN06IvzBRvgZO7umTFirZf2VJkis9ao08nYC1wmLY
         0VJXMvYP0rpT4d4Qxb63Dptniqxobrk2ECk6zO6e9gVJYF/BHqfJA0fHvWnHcxIJ558d
         VAmE2SLW6colNIAYNK2XI9Z1tKcXImDCs6xU2P6gr+6UWj43Fu2PJXVXgiRkH2Igbm3u
         98WHwxLyrbkDwGgNxBPNPbWhEgH3s/Kat78d+9/tcyIWqZyM3MpalEqm8pKG01lcG65Q
         gutQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CPKntKgJNhLg4wTV3TpMmAfyeDqA5bi+kCA6QyYMVFY=;
        b=dpDgLUId/XT2D1p7o0q0VDdHdmXFhGzgLSC9Obs+SLVJ5N22FzlvM9P+St/qS5zxcv
         vlIbtLzcbQ5NpKPjr/4g+1Q6ApBHjBU7ektl/zQnG2WrXnMY5/KLH1wBgBHCuuGzwDJg
         jzwsklBJ5Z3Orwspi4MeOLAvFAV8M6+m64Hs0n1j6pV2TqFVgSGhsh2t6CFgGkt3Fv7d
         vNMXlIzr51w2blQKE9osizn+/Exegpt8b5lfTeIUOFsfcjb+7/eV8F8O2nJZsqFxpPJa
         TfqHtoPGI5VnRe2OOIAOW3HEAp/hsqTP885a7f2GDr15OFcyM96qVNHx5/Ry0+8ccWLo
         tstA==
X-Gm-Message-State: AOAM532gQvM/eaDsSgOrihhuUO3bStWciFFk1W0EB02I/L5UlY3Rpvcn
	TLbJ25vQ2sIJXajFr2t7tleYjnMrtUnpgcl6
X-Google-Smtp-Source: ABdhPJxvZBC5O8xwycExu8OEVoed3aGJTc3NlVHpGGrzZp/RdTcIOctbYaEp0ynKCKotar+TZmZmUg==
X-Received: by 2002:a17:902:f34c:b0:163:fa4f:2ff5 with SMTP id q12-20020a170902f34c00b00163fa4f2ff5mr5785991ple.174.1654189407621;
        Thu, 02 Jun 2022 10:03:27 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id r14-20020a63ec4e000000b003fb0354c43asm3574855pgj.32.2022.06.02.10.03.26
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 10:03:26 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 1/1] poky.conf: bump version for 3.1.17 release
Date: Thu,  2 Jun 2022 07:03:15 -1000
Message-Id: <afdc726b7dfbb3258366b9b7f7a33ff01672f283.1654189358.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1654189358.git.steve@sakoman.com>
References: <cover.1654189358.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index f8deac4..bd20e84 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.16"
+DISTRO_VERSION = "3.1.17"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

