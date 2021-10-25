Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.2259.1635191599453241900
 for <poky@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 12:53:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=I5ckmPT7;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.182, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f182.google.com with SMTP id v16so3286250ple.9
        for <poky@lists.yoctoproject.org>; Mon, 25 Oct 2021 12:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gOZfM/2SFcwnkeXprKV8vLtHGhC2RSqy9YDzshH+h6I=;
        b=I5ckmPT7DNqlLRtctnCSuvbrhbe4KFgDjvBeGWdvZymYt1TuXlHbjQWDY05ihfvA3X
         EKhvP4jnY+FE9MJV5+SorVu2dmGV6SvrxFgITNjAl2B13bJq3JdH9gJqelPsmfGp9RW4
         EQNcuVWmC2hoKuoMyhSgsEsTRpRjaQc/bAm6uuM67x4ri4pjO/sv+NMd7mp/72Rb0FaX
         p5QxTC6JZ15Yrdokrac4AxXl20g0cCY7EyW+o4yoSzaW/OX2r+GHDwUPWn7PiPsPF+jY
         b0h89xhgcv+Za0DgibEHC3z8DnvaVSky3pnrCg2XlXuT2t55pSrSjLQyfzfW4kFs/Daa
         EQtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gOZfM/2SFcwnkeXprKV8vLtHGhC2RSqy9YDzshH+h6I=;
        b=geF6KCp7unluN+d+otBue6s0oYcgSBkcVTknupXH8i4zVGsxiB3cd1KVHM0DpOevPa
         2Iu/E7Pa4qd3Khp3Q33DTE24HqS8Cd4En9OBgpOKg7+cTYplnMu6tJMxFwXqySEz+0o3
         hbmfNx0hWdVDXyoLdjgz5cTx45vfmVppeX0LESmYB4h+opWVX2xl1dxN0Qv8PXbtkzcc
         9p9ZCBfipWYlhffO9xQinMGEIk2DHXejGQKPtV31lY6gd4LktknY1UQnXMQqzoBK5fjp
         MFA4qTq5dv1qOkZIfaS8cN65oIYSisfQrGvy39hLmw05Ao04lui2+4LVbsK18I5LSZgd
         1YVg==
X-Gm-Message-State: AOAM531UcmW+yYmLqnG94TyZ7e/HdettTL0LUUYK0ce34lCrV8Daz6kM
	qyxCSFDYaREL+HsgGBibU433Lo6JCQ6MwAuNdqs=
X-Google-Smtp-Source: ABdhPJw1gsOOzJg+KDCJtcxgh01AKx11znwcSPM+EHu+4j90D5X/AU4wjMkk+kpjaLfolDnV4ku+dA==
X-Received: by 2002:a17:90b:1d8e:: with SMTP id pf14mr22729101pjb.125.1635191598055;
        Mon, 25 Oct 2021 12:53:18 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id d17sm7668555pfj.98.2021.10.25.12.53.16
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 12:53:17 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/2] Pull request (cover letter only)
Date: Mon, 25 Oct 2021 09:53:07 -1000
Message-Id: <cover.1635191532.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit 7eac76587428202db781f269439ad9d719017289:

  poky: Use SDKPATHINSTALL instead of SDKPATH (2021-09-15 18:34:01 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Steve Sakoman (2):
  poky.conf: Add fedora 34 as a supported distro
  poky.conf: Add debian 11 as a supported distro

 meta-poky/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

-- 
2.25.1

