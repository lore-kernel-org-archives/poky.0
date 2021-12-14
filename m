Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web11.28365.1639501161271997292
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Dec 2021 08:59:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=ZomGZAJM;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.52, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f52.google.com with SMTP id f18-20020a17090aa79200b001ad9cb23022so16491711pjq.4
        for <poky@lists.yoctoproject.org>; Tue, 14 Dec 2021 08:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MecxtTjnYxZFHBjBNfC/FzyyZLATPtMWWromgnaQ2MY=;
        b=ZomGZAJMBU9mJb32UKTIACJTSFJ2yL0927vQg0mlPwuAhQtmbKWfRo6Kdv7yI1tHph
         1LIoBgd0yRxLb1bOVKZ5jY471Ra0mYq2yZvdbpvX0c2/2M5KHybr7RGwIPZ6vqQK5FiD
         rVLXbqksFA6sk/Fv7n9izSI5CsI3yJ6PNkupGGxGavCxS/w80KYm/yTeuOfs5qEeqsUL
         MKBXVX3WO7dP4bCUOaj+OXZeNxK4L/vBNEh2bDHCufxxPuSuQ5L4JThBmR+cVcsEppwO
         g0keVBee2EJzvHw0aimk9OElc9XfDL7QVRcz64sowd04Nnem9J50VmHUsimO4HCthXIA
         4Rxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MecxtTjnYxZFHBjBNfC/FzyyZLATPtMWWromgnaQ2MY=;
        b=hncNbQa4CdASCSrUJ1IyP0XlMjXPC8THJs7ITCMVNscMS4jjUZdPEGSS9SCgYJnjFj
         uKaDNis7u0yTselDU6VuiyuXZqV9C/cW8vqCd7CiXvleXbEMeMMPnb9zaxNE47jSQmfI
         5OLgamXPGUZ4XmAUwrbT9hCOQc25KfK/0kNrbmgamopj9L2WqC17j8B/MIXEY/FSTpnG
         xjBK2YDuEbNp6roacePjxr2mg7YTPG8q8x+ck1vbE4yormr919zzPXbWdthHAYbF8EMZ
         GeGM8jlWIg21SRzx/waHw6JVeZHy8eFvN0JJ2o+rW13QYfJEPVY3+LYil6X2aT1eq0yA
         QHkA==
X-Gm-Message-State: AOAM530oIlF771TfF8xWYB55hJ16/vs7UYhGWXlMR+sDaerqnr+1+RUQ
	Meb7AGJ4jccO0fQ8uJR3+aYUfNW1iXW4ydw8
X-Google-Smtp-Source: ABdhPJwtvB7Zjq3UWGdJ59rOmb2L6DfHxiL+gr1AuMHHrMzUQYz9p//xWYZJjnlJDSCLjMkDtsOXtQ==
X-Received: by 2002:a17:90b:4d84:: with SMTP id oj4mr6924598pjb.90.1639501160131;
        Tue, 14 Dec 2021 08:59:20 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id oc10sm3254429pjb.26.2021.12.14.08.59.18
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Dec 2021 08:59:19 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/1] Pull request (cover letter only)
Date: Tue, 14 Dec 2021 06:59:09 -1000
Message-Id: <cover.1639501097.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit 8a9d89df2c50128130a40119a4827ace761c236c:

  poky.conf: Bump version for 3.1.12 release (2021-11-12 17:23:00 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Steve Sakoman (1):
  poky.conf: Bump version for 3.1.13 release

 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1

