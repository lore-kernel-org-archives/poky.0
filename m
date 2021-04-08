Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web08.405.1617898859240779617
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Apr 2021 09:20:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=uYVswnTK;
 spf=softfail (domain: sakoman.com, ip: 209.85.167.174, mailfrom: steve@sakoman.com)
Received: by mail-oi1-f174.google.com with SMTP id 25so1265540oiy.5
        for <poky@lists.yoctoproject.org>; Thu, 08 Apr 2021 09:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TLMyMqdUj1oelZVJHIJ36QwNsNRwCGgR4vlKsnLrCdU=;
        b=uYVswnTKhfbfwTEBsqIL/6CWsLBikO8WPYKKWs+5E7F/SoFByqh1aXCXZ0lQDVbBh4
         Bl5pi4SUsUFklicKukhiPFZ2XMZC3WGysLUiIa0Spj4DTGScYQiGbTqz9LKNcgEoBQ9T
         nDFNjW6y7zV8SOZNRBw+fvUoDh9lABCCu0JUyNMMZZHrnd7Ywlb4lRlhn538ZsA+eSok
         TL2cG83OYUbuqTSFZElOfIE0rKf5306p1aNoRyoQqbZytEmRZxEjNoNHirwbVQxQbqNN
         RQHF1QoRWLWgLgA9oJSQHrO3Q4YUrSO2NnWf2d2vJByPLuULnHBddt0KixdozLItYXe6
         YwXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TLMyMqdUj1oelZVJHIJ36QwNsNRwCGgR4vlKsnLrCdU=;
        b=T/No7cOewbYr1IsYrjA4ZWGWXtFMLCPj/dzGGd9iuy3WDLMBE+iNkFgQzZuoImMZ95
         p7faqYL+kgmSDLzmGetd1hMbmYsfZ/sqD92bY3G2GXg89yEH2m0Y8FpGsjiTgifkCd62
         e25OAuweli5qkCceiZHjhCKMArbjXGnxcW8W2QdL/OjOn/5uEVk/zPtpO/rv7+whmdcQ
         +aRIxB68Sq0sA/xcTW7Ju0fDls+F0tJIBpv8v3zLKqhay9WAAVPkcOMdHSe7wq72A1Fs
         cbWxjQpjc+d12fNVE1HwFYfrGdCCi/5ruU1fh7lexHmgVn1HOT+mCbHsr8H0W1tqR8ws
         J/5A==
X-Gm-Message-State: AOAM531/B3U0pQmi2XbxUlJe7Jb1eNYgN30t3R4jga0IyDZJrmUShr8p
	V+ncy0+YQs5EqcAp8m1qYxhnnz0KaAOgg1H+z40=
X-Google-Smtp-Source: ABdhPJwCZ49aw/S/waKAgvaYz6CwjGRBe85rKeCNWyz/CGmZISS8KDLeDVxBBCqaMh98eixA2+jk8Q==
X-Received: by 2002:aca:ad57:: with SMTP id w84mr6723642oie.100.1617898858005;
        Thu, 08 Apr 2021 09:20:58 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id i4sm6205177otj.56.2021.04.08.09.20.54
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 09:20:57 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/1] Pull request (cover letter only)
Date: Thu,  8 Apr 2021 06:20:29 -1000
Message-Id: <cover.1617898757.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit febea5f6be380fed476552d741dc97e9c78ebdd9:

  linux-yocto: update genericx86* to v5.4.94 (2021-03-05 06:18:57 -1000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Steve Sakoman (1):
  poky.conf: Bump version for 3.1.7 release

 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1

