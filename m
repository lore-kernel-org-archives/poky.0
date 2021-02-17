Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web12.10151.1613579527979813860
 for <poky@lists.yoctoproject.org>;
 Wed, 17 Feb 2021 08:32:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=nEP5PEB5;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.174, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f174.google.com with SMTP id o63so8801960pgo.6
        for <poky@lists.yoctoproject.org>; Wed, 17 Feb 2021 08:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Nm/bTBxq3lsgrCOsw5pY5jlumPZCtSceMXJzzd/4QVA=;
        b=nEP5PEB5D+tyfMa1ANP1xgKIOnC//LPEl1oW5MzXrr4XfGuYBBbkaq+hflWVX8Nywt
         QDhkOgFTPHtWeehG6rAm66oFrZM4rA7OhnduuCptcopn3IpL3nzdz+gFrmYurXnRu11r
         hcMNCM6mmI89svhnCFZJu5LabXtx2durFfcu8nZF3SD7+GPMbgc7rqTSefgEkZz3rJ5I
         nBSrtXvKGGsi+8cB+i+ORpx+n7jDJVaX3fVB1CL4fRgSY468V8YEuqATut6tNSVwfrPV
         AbnMPs3PPVzvptkKrDP5hqT4z+KlLcEMDiL3XYAqFe1XwEJOM1zySRi+j7f35CCHBzYK
         m4Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Nm/bTBxq3lsgrCOsw5pY5jlumPZCtSceMXJzzd/4QVA=;
        b=XACP9vfZojhlcoU2eWnlassCCIuuYC6y3TTEGe3s2/b+7bakSEDMbXlShkD48tZO/V
         duWz9WSoX7UAJ/7+y9ydwb9g9lKE4n5UHZgp7GF/jzruh9GUiAv9+7zWtYQWug370grj
         zLRdCBu5tNxSE3Jvx6ju8eowaaeNve/A3JKV6COoW/ATJUGHkt9suVW3bB0q9ypImQMu
         uAQn0CyCL4SH5EUt+mGNwPQNb/5d4ki2nck5Bc8XQwewwiG3DqN/cL8Yf5bEv0b9tbaF
         kVl1gazz1nwH6iPRIc2OdihQeOd7SN01HsQI38N1y9v9Hdn5kPxKPMKhe7g3PaBZ1hxF
         XljA==
X-Gm-Message-State: AOAM532w5XyOgE9WGblSrk6gJO4nD9aNUoZML7sBcB/lHCRFHe5/k8ms
	jQDe3F6F8N/SZ4GkFLMWHGdBh+HoVaMQuZLMLfo=
X-Google-Smtp-Source: ABdhPJwGN8KVCAjyAq9Sicxg714uPAL2hQkSWGdMOSnFQc0r5Wr0nooo1cd/oo9r6fh1z8WuXDAGUQ==
X-Received: by 2002:aa7:94aa:0:b029:1eb:7783:69c5 with SMTP id a10-20020aa794aa0000b02901eb778369c5mr119307pfl.60.1613579527095;
        Wed, 17 Feb 2021 08:32:07 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id f3sm2768517pfe.25.2021.02.17.08.32.05
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 08:32:06 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/1] Pull request
Date: Wed, 17 Feb 2021 06:31:50 -1000
Message-Id: <cover.1613579446.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit e5c4bf10f870a9f157a94ff940de36b5e18edf00:

  poky.conf: Bump version for 3.1.5 release (2021-01-12 07:19:22 -1000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Steve Sakoman (1):
  poky.conf: Bump version for 3.1.6 release

 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1

