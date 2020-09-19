Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.11172.1600521655403354760
 for <poky@lists.yoctoproject.org>;
 Sat, 19 Sep 2020 06:20:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=stNShEky;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: toertel@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id r7so11680017ejs.11
        for <poky@lists.yoctoproject.org>; Sat, 19 Sep 2020 06:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VKgD2wCoz6ViOKqT+D/p7yokPynAE8kM3GEM96VzwVs=;
        b=stNShEkyVsXwlIzbIfRf/PW/xI+Jithcn8hsAbXRcMrlWNtrg1KMXGwEhsSfPhlyky
         H23f2YshemC6M0aXOlup0e3fA2d+CoUFRMMRrE/BvxnRfxX9ThG9KiCqTZpGRLthumwp
         9Z62tz1L+MWyDaMJubYCEXnI5JDCr/6TsdMRJoKl+NuPcdyrx8Izjbl1ba0Hr/jVzrur
         BZ1z71p3no58fDoTmy+EREWfdyesa7HnlT6e1NcMQHp9Llp1hUJe+FxK5VybW+LYSoDV
         rfNCqRSkw1P323fWyHCyQoUHKdjLZzzHur7YBmdk0399OeLIy5lGTBET+y6q8XE6K5rC
         S3oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VKgD2wCoz6ViOKqT+D/p7yokPynAE8kM3GEM96VzwVs=;
        b=typcty9+JMGlE35ON0oQQVN1EyfNmrwt5/hETX1tPYbjlxg7pusmz4XwKFzLvEubeT
         xigrFgg0o4BrGfcOIvnBDaG9TXJTzPbkeOcfoP/GuUljZuEpI/ZY6sw2cYB/cvgVL5/5
         z/YP4VhlSdc84dYWYn24uqcN3M22bFMSYtTG9e2FGmaY7qSjfcENiuwE590jnqcG3H4T
         LVOL82NL/nKiEVFuyOjErFm6YeHbKavz8kCtlYsiT3RhiapV6bWx2E+6zza/9SfkX/y8
         qnmBOz2wsSXC+nZgOSUiNtVQTVfNrakvd6oNMFoKYKzhN479uUzYbr3J3q+wWrXVYbSG
         ooFA==
X-Gm-Message-State: AOAM5300mMSE+RpXALKapXQdHA+t8y3S2YsP8wu5WZ04pBvN5O4H1SzW
	axU/iN9TMKWccJmy3/7yqXCe4zB/Pgg=
X-Google-Smtp-Source: ABdhPJzusqb4xDhcXcRj/uZ/vtaryymsWoBF7xc4wzIOw4dA0Tq3DkMeC+0S8Ip2TCmyQuNZ/Lg4PA==
X-Received: by 2002:a17:906:9245:: with SMTP id c5mr43636513ejx.54.1600521651672;
        Sat, 19 Sep 2020 06:20:51 -0700 (PDT)
Return-Path: <toertel@gmail.com>
Received: from gigabyte.fritz.box (p200300cfaf38d80028ca4d2d40a8faef.dip0.t-ipconnect.de. [2003:cf:af38:d800:28ca:4d2d:40a8:faef])
        by smtp.gmail.com with ESMTPSA id lr14sm4495522ejb.0.2020.09.19.06.20.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2020 06:20:50 -0700 (PDT)
From: toertel@gmail.com
To: poky@lists.yoctoproject.org
Cc: elizabeth.flanagan@intel.com,
	pidge@toganlabs.com,
	Mark Jonas <toertel@gmail.com>
Subject: [PATCH 0/2] Map license names PSF and PSFv2 to PSF-2.0
Date: Sat, 19 Sep 2020 15:19:49 +0200
Message-Id: <20200919131951.11129-1-toertel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to SDPX.org "Python License 2.0" is the overall Python
license, which is comprised of several licenses. "Python Software
Foundation License 2.0" is part of the complete Python license, but is
also used independently by some projects.

So far the license names PSF and PSFv2 found in LICENSE are mapped to
to Python-2.0. This patch maps PSF and PSFv2 to PSF-2.0 und thus
corrects the impression that Python-2.0 and PSF-2.0 are synonymous.

Mark Jonas (2):
  Add license text for PSF-2.0
  Map license names PSF and PSFv2 to PSF-2.0

 meta/conf/licenses.conf            |  6 ++--
 meta/files/common-licenses/PSF-2.0 | 49 ++++++++++++++++++++++++++++++
 2 files changed, 53 insertions(+), 2 deletions(-)
 create mode 100644 meta/files/common-licenses/PSF-2.0

--
2.25.1
