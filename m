Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.8058.1665418743395046217
 for <poky@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 09:19:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=ebIVqOpY;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.53, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f53.google.com with SMTP id t12-20020a17090a3b4c00b0020b04251529so10698999pjf.5
        for <poky@lists.yoctoproject.org>; Mon, 10 Oct 2022 09:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=PCVrPtwuTGEjX30yhz64vkspeIIglqj+rn9FQruouzE=;
        b=ebIVqOpYq05C6WythqBaTDd0Io7+ayEikISlCmrWNEHsG9zQBlXtUUh0XMxGZocAtI
         +Trgwo1yLVi3RfCdGhHyl8iGc0MX6HnxTojEIGYtP48fic53T+hiJKNa+PaG0rz/dXXK
         JDJMaiQhEHWI4mt7exx9KHdRv9BxjOFNuN4n798wOphUBOxUIVo7T4WFQOmqtk0U0tJi
         yZ/eq/U5Ws0b56o4/Fryq0hvncwXmg/90gj3ArIWNWWgDJ/Ng+thvQxQ5zau5v7bHETj
         KiUFdS10c+0vO/1hDfhlUhUDwpHkR8CHoWtkeJaTWUDHsI68UcJ6EwhVxTCyWZMVznKM
         HYTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PCVrPtwuTGEjX30yhz64vkspeIIglqj+rn9FQruouzE=;
        b=YxQpcE5+UyzhpgDSyvI7q1LvglkxR4ahT584Be464B6CWy6T0NYpa3a0QM7iSz/BAr
         Pi/DBXmIU465e6J1bgiu1ZGx7GZ3dR1jqf5YvaeesP12Rgsfuwx5Sg6n4GARefnxkinD
         rYUcTPwkSOiHmFGhPTOijls06TVtXcWCcbERvqR1w4S/Om9KH0VAJ+caUnP9COse7lK5
         5nCskTvOT9Se2mT6Vqu7wEGdQvwkXEDZzWqeHNozZ+FSpVTjwHirM2aeyGCWeSBcnLrG
         ZAm3me7eQLrF1zzASFJgN5GtUuh+5Okiz9388K+mqsz+f2E2RlwklCq7UiU2YMlKCsDF
         sAOA==
X-Gm-Message-State: ACrzQf2IXGhq8vTr546FArItTOAK8LK+lhb+ZwtMGN3Qrgz4DuR045sJ
	7RFGvEmXaKmPloSz4hs26iK736y9bzcaEhhl
X-Google-Smtp-Source: AMsMyM4n/xYTETFeSw9fOCl5byqjasmWjSYtj6rWRKsH0uVwzIv7h/W7dm0cd4Fw9W+1dJghwGlEBQ==
X-Received: by 2002:a17:902:f60b:b0:178:6a49:d4e3 with SMTP id n11-20020a170902f60b00b001786a49d4e3mr20243545plg.75.1665418742251;
        Mon, 10 Oct 2022 09:19:02 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id q3-20020a17090aa00300b0020af2411721sm6184108pjp.34.2022.10.10.09.19.01
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 09:19:01 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 0/1] Pull request (cover letter only)
Date: Mon, 10 Oct 2022 06:18:53 -1000
Message-Id: <cover.1665418691.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit ca9c465e37b693ab768ee8e21a929d1c18956e98:

  poky.conf: bump version for 4.0.4 (2022-09-09 06:51:02 -1000)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto contrib/kirkstone-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/kirkstone-next

Alexander Kanavin (1):
  local.conf.sample: correct the location of public hashserv

 meta-poky/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1

