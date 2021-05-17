Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web08.19863.1621261450032757921
 for <poky@lists.yoctoproject.org>;
 Mon, 17 May 2021 07:24:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=VULvcx30;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.170, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f170.google.com with SMTP id w1so2397689pfu.0
        for <poky@lists.yoctoproject.org>; Mon, 17 May 2021 07:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e1ypSQqsobSJ6S+wtAY4VfJUiYvP763OKAtfPqVd4FI=;
        b=VULvcx30hDqsndjYzEEU+rKjrgy9lK3zg4WhjyaKyhRYR3Ixxp0ogxfbOO8shh6UY7
         RxsZZg0gsATTrpy0gCjzX8YzS37MfLmvuz9wyWr04jZm0lP8sWST/UTfW8tQWPbjXKU1
         4TEKhPXhMLJ4LaQ5geHAGAwZUumHIEGDV9Npb93YONnOYeeRc8WzoqeouvfbkI5P4jKk
         d1GvRAtz/vhZX3BFCCRfV5Qa2LKbsjHinXqkRWgQTUUo09AvxpDJV9feDv8rVBpGeAYd
         DmHHCJkwadr+E80+l3zHOOWdtn6/sTkkjOMbGv7uzkPhqLgOO3rDfJjMTt4EJFdRGFz7
         iHCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e1ypSQqsobSJ6S+wtAY4VfJUiYvP763OKAtfPqVd4FI=;
        b=nktRamG7dji2fPWyNSnFRBjEZ9HOBmx/nkGLm6VwiusL/J6zyFNId787J2a3OfvW7y
         rPtbUQiZYKiWXzAsTjIjRnImQZ9fSPcG67nCmIXNkqzXVtW5gbSYWvcE4Y6wws8ys5st
         0tTIZLhkxkEbYDEOdz5AU2ZDP93xR/3yB5bLNFN/jXxVrM9hN5Ozx3Yz9zThdG4HYpkX
         jJZCiHTRBdOYIJFDVAE0ypdUPfYV7kLRluyN8K33mXaHzguJSzXTXgvbu0w3haKUFXnB
         c+MMVuhJaVIExz94FQZ0RnFutxKzuln99IyEWWzr8/TxpvHrrb0mFZNo/cuI7bRZQkuX
         ZSLQ==
X-Gm-Message-State: AOAM531dPryl26iFsOcOeg0VEet24wzccZ+ilS9PDzEKWgiEr0tsqDqP
	2plzzC1l5E/gZD9vPsK72Sk1J8GM63V8c0TVRuo=
X-Google-Smtp-Source: ABdhPJyQCn7zvvk2grGn/FkiVoLM4bWkOmIRcjyjaGvj2SCP0iae/zU1CwUlN52ZpqnDhSSSJiJcKg==
X-Received: by 2002:a63:5c1:: with SMTP id 184mr61637023pgf.75.1621261448896;
        Mon, 17 May 2021 07:24:08 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id u10sm10852391pfl.123.2021.05.17.07.24.07
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 07:24:08 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/2] Patch review
Date: Mon, 17 May 2021 04:23:53 -1000
Message-Id: <cover.1621261315.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please review this set of patches for dunfell and have comments back by end
of day Wednesday.

The following changes since commit d8bdb69e6bd7b52cf047cd6be406bf632a600a58:

  poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 5.4% (2021-05-15 10:27:47 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Steve Sakoman (2):
  poky.conf: Add fedora33 as a supported distro
  poky.conf: Bump version for 3.1.8 release

 meta-poky/conf/distro/poky.conf | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

-- 
2.25.1

