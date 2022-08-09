Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web11.371.1660080284772463612
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Aug 2022 14:24:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=LBzqJTxY;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.49, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f49.google.com with SMTP id d65-20020a17090a6f4700b001f303a97b14so188087pjk.1
        for <poky@lists.yoctoproject.org>; Tue, 09 Aug 2022 14:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=D7imjBMJutX6Yrv88W6dohmdPT0lyaDyFny5pQp0GSU=;
        b=LBzqJTxYPrFlIvlLF/JT9NY8VcMQhWb3v/tlBl/TLI4VjuZuAHz1Ywuq8CsIorgWOM
         Ol+iJHAFD7esJ+O230pNCcGyTsXCjZsRFEx1QTAGGTS9D93Vdoh6hL7uQe08NI+afeIr
         +M3qNXNcdnZ2qhZjb07fitB9IQTKvXksSU81q7Lpk45XkdnJQSkBSA1fByYhMkVOv2Oj
         LRnlb3funvd3UxuJtJC+1qYKkev2NhEBpP1fc6lYUT0p1FvvBCZOsPKxvR4PKrcnN32n
         sqnzJ+RUOQBYjZlRS6rjo3d3kF0Xjcz02sqaPD7xGTiw4grczGUvNjw3su4iE2ssnxSg
         QfuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=D7imjBMJutX6Yrv88W6dohmdPT0lyaDyFny5pQp0GSU=;
        b=G9JZJuBs2C48tk8OsYwWUsG70ST4CacN9SCHg3iiX+FCMvLWOhh+vf8WfrQkwpge7Y
         8F7bOT2EFIG1E8+fY8DvQ5100ZCGm8D7GjY+HXvvQWJpagF9VG9Ruuxrp7daLV9STLVd
         GAePGg6y1+JuMXA3Hk9/UzdO6Qqnsj2B5Sq30x1PLwz/eOI824xzL19j7P9apyW3heI4
         Ksb779sOCTgrMG+IA2tnclZghSjNwHoViB2mhCjEglz4za0RWfFA3p1rZITqYA5x5A3X
         uDeuFaRSPNUi5HOify3iJgAf0596gnxSzzMLZTonmUlvhLX3l3x8KCx3YbA+2N2cNb7S
         e0xQ==
X-Gm-Message-State: ACgBeo1VJjIFOY6jB+a2/8+PtbAbfabixrNr+OL34q2enJn6k6hrtVgz
	6Ne+9gkhjMamIJ8fp4anyU0JuWjMJVijvTsF
X-Google-Smtp-Source: AA6agR5Vx5z4PcXyBiBLwi78IRW5ryQacBvPXm3S2qB2cOAvuhfXyibKzi2Fnhp4Oq40p3/fLQny5g==
X-Received: by 2002:a17:902:c411:b0:170:91ff:884b with SMTP id k17-20020a170902c41100b0017091ff884bmr15753295plk.58.1660080283473;
        Tue, 09 Aug 2022 14:24:43 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id l12-20020a170903120c00b0017128185043sm1811214plh.191.2022.08.09.14.24.42
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 14:24:42 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 00/10] Patch review
Date: Tue,  9 Aug 2022 11:24:22 -1000
Message-Id: <cover.1660080128.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please review this set of patches for the kirkstone 4.0.3 release.

The following changes since commit 7e21de293e2a36d7f931201fe5fa54954a09e6ee:

  poky.conf: bump version for 4.0.2 (2022-06-29 07:47:57 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/kirkstone-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/kirkstone-next

Bruce Ashfield (9):
  yocto-bsps: update to v5.10.113
  yocto-bsps: update to v5.10.128 and buildpaths fixes
  yocto-bsps: update to v5.15.52 and buildpaths fixes
  yocto-bsps/5.10: fix buildpaths issue with gen-mach-types
  yocto-bsps/5.15: fix buildpaths issue with gen-mach-types
  yocto-bsps/5.10: fix buildpaths issue with pnmtologo
  yocto-bsps/5.15: fix buildpaths issue with pnmtologo
  yocto-bsps: update to v5.15.54
  yocto-bsps: update to v5.10.130

Steve Sakoman (1):
  poky.conf: bump version for 4.0.3

 meta-poky/conf/distro/poky.conf                  |  2 +-
 .../linux/linux-yocto_5.10.bbappend              | 16 ++++++++--------
 .../linux/linux-yocto_5.15.bbappend              | 16 ++++++++--------
 3 files changed, 17 insertions(+), 17 deletions(-)

-- 
2.25.1

