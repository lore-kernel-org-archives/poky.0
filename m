Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7352.1794561604243959263
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Nov 2026 01:20:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=LuSEWyrQ;
 spf=pass (domain: smile.fr, ip: 209.85.128.41, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4a2153c8525so3917865e9.3
        for <poky@lists.yoctoproject.org>; Fri, 13 Nov 2026 01:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1794561602; x=1795166402; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lKsYGY3pK0NzBRNJhknB/bc6w6kKZn5PTtX/HxH4L+Q=;
        b=LuSEWyrQ1ai6cv5BckILut8IO76LC55I1oJzwM9nVkiMsRyoY3DhsWfuC6DqHta5z4
         dDmQS0ELiqnqkIiJXbSqvLQcN8OLS9PqRjt2ydWDNl1l3/Is+l+40I6ktty6v2RiYxYy
         ks6u4wEdFLVGcM8umMpOEs3qn8xRWfN/I3p1i+69gzGbYFgG34Kj19jRexMv3zw6SScO
         Qc5oHl26cOX+ezt8zmhsWmkXHNyQmR3aCNkV25DWAkLZPrmOJ+wy/tZkny/w7OqVFlnK
         p4n4uO2DX8LUBB+1GEimEqp/t3BKXHajzPa3ZF60QSIjoKvySd8zrP9lUEs7AzLfWJP0
         M5Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794561602; x=1795166402;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=lKsYGY3pK0NzBRNJhknB/bc6w6kKZn5PTtX/HxH4L+Q=;
        b=PLUzAck/wyoFFY8yIS1S0PHseolivnQ9U5/Julzrk69SXxNYlI69VFD40HdGRtIMEu
         90GYksczXodOys92dBOWb82VjMm//m2xXFolxRZvKHq8IlgpKoaNdIp3Qe2l3fstwIdz
         oaaHRZ8nO4ksOxJoRq2BrOc95k/XVz7ubW8WC5wCdbo1UNGCaN0mUbdBq9cVlneKCa5G
         B4kg+0L4gIV0NeTvDlDiyqoYAtq7alL8pKjulmh+Hx01zIKsefFz90eMDK1LvgTcYMUV
         1oEiN9x5pYY4rbSshLQqzM7we/2fN5POb6AWmChrLfYAzw64Q5k8ccPf/4Fd4RHRNKIS
         Qg7g==
X-Gm-Message-State: APuU4Z9dB0xjLvKinHI7kvq2Ei8U7DeJQwTQEilKWJ9c+e8IGeEv5qEs
	GggRc8+0iYXytvuOsGl6U/0EMum2lSlyROfTfg+hUcNpTJTat494V7l8zEmPKt/8CTvdHSnsqd1
	x0MAxVdA=
X-Gm-Gg: AYBFou0Z1kuqXgRqfx7AQ7T3/CDgzpnIWKRcGfEpsOrP0uFtT8dsNpTrcg01bOJeFl8
	v/SUfFTENx5Mr/5ndi+xfDi51k76zkqFHTMz1JWVqWVbMYkAY2AEFUhUz8i+0nNW5u3AOTqqkde
	9BxijJ0OS59TcKMOhzNM24N97z7iiTsCImNV5wVfBbnmqzx9igzbSWPt3q74VT3mkWOAo2fCTv+
	DwFSW6D9YToTKxhyAE75Ik93q/Atj8H1GD4lG9GRZIX83szz9z/Fz8TE7Zg1brSa4jYcw8b+eqR
	0ZZIVpGsnC5G3vArXzERVj6bYAM6G0mBK99t3sWuBdxDq5o56lptmkrOXshXZ58c7+nJAYC+4GG
	an5FFPuC/EGFqKiuES05XvFNXoJaREEPpUec7PPMrxisHGEAoe9JHus7aX05VCruAsqUwiEz1zK
	oF4y7V2eox9tWEp+iD0xEDnobxftXW3u9QMqzgyIzLicSLXjONRUZMIjoKvl5BJ3PIqwobD5veC
	3Z2D+Pjj4VXcrZHKPWW7eNtKNA10lFC2jWmJQed53oHp23b3EeSfsdvj+DiTsIwo4p/pBWug6qT
	lAjuqgIHQUWDsYvvlfiDG4J+tn8dOytZrJeap+x9mWPXz2bl0hoOVNgzOOTSM5ue0J6G8esnNDc
	Wc6sP+Z3vcZ+VMiR+rGEgnvBSWYUfXw==
X-Received: by 2002:a05:600c:46c9:b0:4a1:f8cb:7d70 with SMTP id 5b1f17b1804b1-4bb55aa51ecmr38053585e9.24.1794561602290;
        Fri, 13 Nov 2026 01:20:02 -0800 (PST)
Return-Path: <yoann.congal@smile.fr>
Received: from FRSMI25-LASER.home (2a01cb001331aa00d795e58479169e39.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:d795:e584:7916:9e39])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb4e2842e6sm137937305e9.4.2026.11.13.01.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 01:20:01 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
Subject: [meta-yocto][wrynose 0/3] Pull request (cover letter only)
Date: Fri, 13 Nov 2026 10:19:17 +0100
Message-ID: <cover.1794561483.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Fri, 13 Nov 2026 09:20:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/14001
Content-Type: text/plain; charset="utf-8"

Those are the patches from the last patch review:
https://lore.kernel.org/all/cover.1794387818.git.yoann.congal@smile.fr/

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/5102
* qemuarm64-musl-ptest failed with 15814 – qemuarm64 musl ptest failures
  retried in https://autobuilder.yoctoproject.org/valkyrie/?#/builders/109/builds/1543

The following changes since commit 79b6d87030178bed0088ad3b00aa6dfbabac37c4:

  yocto-bsps: update to v6.18.54 (2026-10-15 16:28:52 +0200)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/wrynose-next
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/wrynose-next

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

