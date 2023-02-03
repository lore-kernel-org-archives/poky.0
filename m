Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web11.22120.1675456179973527219
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Feb 2023 12:29:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Gu2tUFFI;
 spf=pass (domain: gmail.com, ip: 209.85.166.175, mailfrom: george.kelly1097@gmail.com)
Received: by mail-il1-f175.google.com with SMTP id u7so2558433ilg.4
        for <poky@lists.yoctoproject.org>; Fri, 03 Feb 2023 12:29:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lCMuwVWoo0Dya/m1jJNW0SvgCUtY5umvd38pUzgQRwA=;
        b=Gu2tUFFIdFTgOy0XDUahIR3PU2/9Tl9IzyWqHzvJm4sgaTI9t5JU0VVvofneH7qeBb
         Dfu0VZTvNeINwdzyxkAlw7utg28w3DIhq7mRhz5tMcpP4kffA/Kcfo2TjvPPOD1czDaI
         2PjZcWArtepkyfJhnIejPbzdF+bmO8J7k+eGxFLgpulywflbgcrE2FtJJV0IH9e8PeKs
         3GdAdYGkf0Qe22plpji7JKyshMEjE3UDluDwKx3lysFANTB88pHHjhLtPbaWHDgBGMRf
         N/dN19i1XFwtKMPbkLqEUssnPzGxlcsUtVGbj2+PuFLZ4LFx7lGO/4G8lurZgwWQfD01
         3R+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lCMuwVWoo0Dya/m1jJNW0SvgCUtY5umvd38pUzgQRwA=;
        b=hUjQ6gNUWgtJWb/lEUYi3lBS/VOM7/rfjp8f8LJ/BH5HxJXnYRlJlKeZ/gKEUHcnsU
         f3PeQPhZppvofJVk6nJfTB6Fp922fvKJPqabDYU3XgYZY1W2Q5VLGOxe8RpOI7b4sE1O
         FIuFjn4+LsEB1DDwW1vyx+8gSaHXlcranne1+/WFqXk/KmRcFQVxGmFJZV+F3+m/SEDV
         3E7A7sjeWDLBEyaj+ZxKFacMQ8xi/V9fX/d4ll/LDdZLDrvSbsojmCTc+O0qXDDM4pJl
         D+KwDWKrRKQsGYT9JLWuHI+O+MspPBUlumNZbyq2kiyOU2n5huRTC8PO0n1AuRt9oRK/
         C/tw==
X-Gm-Message-State: AO0yUKU4YRgka1goZdhkRbqeRIkXFyGxgOn0S2fl6Qut6wjU+Pd0yo1A
	kZRD/AvBu+PkbMig1EojMJQ5BDje6KudJg==
X-Google-Smtp-Source: AK7set80ascoO0uqzmh1THk1XIBOP3G9Wfx1VbBFThFYRoiinADdM35BLF9qjxi63GGicPVuYJ/g7g==
X-Received: by 2002:a05:6e02:178c:b0:30e:dfcf:3b76 with SMTP id y12-20020a056e02178c00b0030edfcf3b76mr10451665ilu.15.1675456179008;
        Fri, 03 Feb 2023 12:29:39 -0800 (PST)
Return-Path: <george.kelly1097@gmail.com>
Received: from gk-ubuntu.. ([50.201.15.182])
        by smtp.gmail.com with ESMTPSA id x22-20020a056638249600b0039e5786d7b7sm1161850jat.18.2023.02.03.12.29.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 12:29:38 -0800 (PST)
From: "George Kelly" <george.kelly1097@gmail.com>
To: poky@lists.yoctoproject.org
Cc: George Kelly <george.kelly1097@gmail.com>
Subject: [PULL] [PATCH 0/1] bitbake: fetch2: Add NODE_EXTRA_CA_CERTS to the list of exports
Date: Fri,  3 Feb 2023 15:29:30 -0500
Message-Id: <cover.1675447409.git.gkelly@phoenixcontact.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: George Kelly <gkelly@phoenixcontact.com>

if you are behind a corporate proxy, the npm fetcher uses the proxy IP address already passed in the list of exports. However, it will error if the proxy injects its own root CA certificate. Thus, the NODE_EXTRA_CA_CERTS environment variable must be passed so the user can include their company's root CA as a trusted CA inside node's certificate store.

The following changes since commit 61c35514cfd27dda045735695f8960126e0704b5:

  testimage: Fix error message to reflect new syntax (2023-02-02 10:27:30 +0000)

are available in the Git repository at:

  ssh://git@push.yoctoproject.org/poky-contrib gkelly/node-ca-cert

George Kelly (1):
  bitbake: fetch2: Add NODE_EXTRA_CA_CERTS to the list of exports

 bitbake/lib/bb/fetch2/__init__.py | 1 +
 1 file changed, 1 insertion(+)

-- 
2.37.2

