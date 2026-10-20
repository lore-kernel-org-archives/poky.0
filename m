Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.4748.1792538599476436003
 for <poky@lists.yoctoproject.org>;
 Tue, 20 Oct 2026 16:23:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20251104.gappssmtp.com header.s=20251104 header.b=Zkduw012;
 spf=pass (domain: smile.fr, ip: 209.85.128.46, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4a140e7405dso669805e9.3
        for <poky@lists.yoctoproject.org>; Tue, 20 Oct 2026 16:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20251104.gappssmtp.com; s=20251104; t=1792538598; x=1793143398; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=MsUx8xaRWHUaZGxUVEQJW8+cCE0g80NM+eYbRtWqK88=;
        b=Zkduw012FXpFjJmgwCxKaOUx1EppLVOzo84+dOpPwN2D6KDZeI+Rx/PUS6zvnOBAt3
         8BvEq1mh0bhnhZUV9hOUb2+TNnTAzh8i3iHJH7NJnArLLjrZnEWqz9Ob2PtxmNblsglC
         8BDXhPpanbwRtxYOC6sueAb7IB31qHICP+XYqAyF/wcD9LRWx5jz0H4Lry7P8hY8IWrJ
         Na2frKCWecCi1NpzODkn8/iMkI+P0JvkD4LTUpq9mX02ooOvonuFpoPBE1fUUuwNnjX5
         0/YZ/9iDbIDUHr78tf0ZV346bSlYbJlwQZAH+NtcXnfUP3g2H814la+NH7vq16eaORTO
         ujwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792538598; x=1793143398;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=MsUx8xaRWHUaZGxUVEQJW8+cCE0g80NM+eYbRtWqK88=;
        b=o9T2YchG6Y+tiW+8oWQRUr66apCKcyhvYYCG6m5K5IkiQdkZZymxhyqN3V/gva2Zvz
         am3uVivlllDfSCiqVcIPDafNQLlWB/At20jnhZn7/9TFBBBmMJDhXOMY28J7q4dOvUX4
         zp9isQ79x8Xv1NRcB8LG/gylY051LNodt3Uuh7wbxyOMznJwmPBNXs6ooS4vHzBqFUT8
         WU5wt+eZP/FCr9mQYo/ScRggBSQGHrwSEYS/l4VtdLBqi8Fy7Brtbyn+4tJ0mC7U2/qD
         ZlEFLeNucqW/XidNeG3QC6MJRuYsh+6GZPNNIIcX5EVIpxLSU5XHt3phjlZHMWBgAV6o
         aYcw==
X-Gm-Message-State: AFq9FYIKZGJOUcU8gpdV/kwNLoXVkIgGjURUdONYb9mFTQoHCPDpoWst
	QoIxTSnFLWJdW6c0DYWkKiFBwKy4gOavZjJVQN/ygh4B9r/T7873I8R8f8BwhPKDZdoFI10C9Hx
	M9hxqT7w=
X-Gm-Gg: AYBFou2OqC24NtXjttRCulieXNq7K1fKC7vaAlSic/M/JBt2mbIdvTCr7Z/B9VJCmXs
	F/0vIR2yKADeyxDV68ClcBHI/e+83Wmw2wvN5emRs/d+eKCFXbRAVveMuIBjY+ky6e78N+dVCSP
	PyKhbmUm7xfh3bFE4Aw2dBOa8Hif3gwvXYnjSXsik9X3c+aYvo4IaLkReUJDAiMIsbwtBacdrDE
	Uc6b4spyLMrO6UwkGWO/LO7oSmECupoai0mnCgLnVzdiXkbdu/tMRHrSYigbqulRM9FGslB2dAg
	CArBGSQ4+HQ7kjSJ6TgQmk7Vq6JBZkt5exWpLoZ8g5mlhQuC/K1+hdEW+KeLISq1q2hT8Jx5LiP
	8YyFUga0x1oLu2zD5/bHA4FBWKf4Qag5hkRnHXZiELumD0ozOrFFS912yHqEAbWwQP7jDjQmxoG
	Oa9BCYqU5F5maIDFmuoPbItuMwlXLVIEtjj2BP9N4doFeyFGVgW/Tk9ZSzE4pCMlkDRLc8m2qtw
	Io9rPkBmsM/5NvFHoCPHVrXb4bh4+VYXN6qUOwnXK4gddKTjwKMALQqWq3TqOH8ebW0UJkPounN
	augiYnKQIdKz5QTjhGQGu31SWS67aC49/A4Ew1gy80Ty49PQ76r34Is=
X-Received: by 2002:a05:600c:1c1a:b0:4a1:bc6e:2f4 with SMTP id 5b1f17b1804b1-4a1fd72acf3mr4762465e9.0.1792538597487;
        Tue, 20 Oct 2026 16:23:17 -0700 (PDT)
Return-Path: <yoann.congal@smile.fr>
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1fb845dc2sm29123795e9.8.2026.10.20.16.23.17
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 16:23:17 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][wrynose 0/1] Patch review
Date: Wed, 21 Oct 2026 01:23:14 +0200
Message-ID: <cover.1792537853.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Tue, 20 Oct 2026 23:23:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13975
Content-Type: text/plain; charset="utf-8"

Please review this set of changes for wrynose and have comments back by
end of day Friday, October 23.

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/4961


The following changes since commit 7c25b11156553145fa6b241a2d4f65d94438f804:

  poky.conf: Bump version for 6.0.4 release (2026-09-30 10:48:47 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/wrynose-review
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/wrynose-review

for you to fetch changes up to 79b6d87030178bed0088ad3b00aa6dfbabac37c4:

  yocto-bsps: update to v6.18.54 (2026-10-15 16:28:52 +0200)

----------------------------------------------------------------

Bruce Ashfield (1):
  yocto-bsps: update to v6.18.54

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

