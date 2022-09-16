Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web11.8916.1663348899636735648
 for <poky@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 10:21:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=O3LHortT;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.181, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f181.google.com with SMTP id s206so20965661pgs.3
        for <poky@lists.yoctoproject.org>; Fri, 16 Sep 2022 10:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date;
        bh=cxrczXpR5TFJ/QLJNzcAtrcA37Uekg2takOxYs+AXgM=;
        b=O3LHortTm61D3bqyuV727h/Wmqn5bGOZ4+f4DO4Kyq5Q27HFW+o8FIs3EGW/1lMyba
         tIX3i3Z3f7ae9XBtyQnC/N7SJ9TLLHpkzsU1OHOZX8ki/azj1ZCx8L9EOV0VPGk9LjpX
         IyQQqXDpFrZXkX2q1P46ZbYxlyXCe+8BdFFRVmCpA+Rip1QGJWVxM2MN2Au+W8AHlk+Z
         l9+/l9UKKBspIX5F+Wg6bPnt3csYDbO/pBYjuGE7/cgRsL3QvM046PGX+yE4lpN58dBx
         KubI9nj/D/3KqQxB8MpjgjXkC5x6K8uzbMxAdoVcGt4XdIfSmvhdu1s82siS3bB0+Hd/
         EHOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=cxrczXpR5TFJ/QLJNzcAtrcA37Uekg2takOxYs+AXgM=;
        b=ynJWMCODOsVkScB2UaenRdmv1nTJMYifhqPR5ZTJxYXFytTxJnbQdm+00FdHtK54kw
         Cosl0LO1gVjJddnPhrnG5f+vEyul8LVklcU9ad+vzqtOF8lRxIJl2HaD7O0oHElx9aGf
         0Stea5prxVs8FbbFtIsrkgpDb9ofSxfFVP+lHJ0pDI6KakxjGPjOQ5iqKBiNhfYsNLfK
         qRdNeNLJ2Rlru5zdtsfmeffU3DWPjrL1ViZh4154e2x1zOV6OQWgBznjdh6ITWB3iEAq
         6B5msQ3vsOugp3XaYL4+CNnGgh6NjDaMaeMXdEIjUCjSUEfgexVaSGgzX8sLTMIHH+Oz
         kF/A==
X-Gm-Message-State: ACrzQf30fMTbCYtaUFIW4Cj7ocHinFLxvoNzY5rFa19YlXX9zIFOSXO5
	xjV4IZ1Kxu+YKCCiI0GiZTl7kJ1HKo5+o1CI
X-Google-Smtp-Source: AMsMyM4jf6CPvXM4tWGwquBLrNfwr29J4iMoLhvsHCAmTl//V/a5hPqjz3Fsq1KdXVBJCj/WVZGAhA==
X-Received: by 2002:a05:6a00:1f13:b0:546:7b39:83da with SMTP id be19-20020a056a001f1300b005467b3983damr6620349pfb.0.1663348898508;
        Fri, 16 Sep 2022 10:21:38 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id k5-20020aa79985000000b00535d3caa66fsm14513549pfh.197.2022.09.16.10.21.37
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 10:21:38 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/1] Pull request (cover letter only)
Date: Fri, 16 Sep 2022 07:21:28 -1000
Message-Id: <cover.1663348840.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit 2de758bc8a4ead8e89619766d5096604b554f2c1:

  poky.conf: bump version for 3.1.19 release (2022-08-22 16:06:46 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Rajesh Dangi (1):
  linux-yocto/5.4: update genericx86* machines to v5.4.205

 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.25.1

