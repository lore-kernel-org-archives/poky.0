Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web09.12579.1610472203645243011
 for <poky@lists.yoctoproject.org>;
 Tue, 12 Jan 2021 09:23:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=WUGzeW71;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.173, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f173.google.com with SMTP id r4so1735146pls.11
        for <poky@lists.yoctoproject.org>; Tue, 12 Jan 2021 09:23:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id;
        bh=txIlaZxQoST2Ub+KEw3I4Ck2Qe2qynr6cLzgqTp0aOY=;
        b=WUGzeW71A2FO6XaR7Q/5x3UEQ7/3J+6ppQBYtgxMogwZrUYCjOXKe+6wdjmIfwrTNH
         f8QsN9nPqCtckId9ydcvCgDvv9KgLX8TIHExsVduxvxmnB4Dm/sLiw0KzyMo4m6O9H3y
         HQA9tDLPqM1Vmmo0GbxKNfleXvr8TA1EkWAwoYEnz+I5LmuG0CRXJuBoM9BQPg8ilEEi
         YLKmaNiGwCYvP5U69QzEH3PNyDCZWk1ZR2EGCFJUp/zO0mzgvGX7p1al8DEWj2XbT+qg
         0dbVNGKGpRtpr5WmKMkA6pLVmFOaIAAZHQFUuY3zdNgijAO0NeEzQq6XYmtiieyI6qlh
         wZnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=txIlaZxQoST2Ub+KEw3I4Ck2Qe2qynr6cLzgqTp0aOY=;
        b=gGWm7UL4urCSvzSlPNYtA+I7bpBUaMpYUkSG534FfQdPRM81Ew83ov3Ngk1XSqW+ds
         g22UF3GczLd7ORZs1vjAZiYyjYMfdXvxIXLbwhJImcyt1iSD9/C/WX7oTP1EtrIZQxF3
         eCkLt0PFM4B5w4hBCpKHAWT8DtkG8XfuLOjwdFOSF9CGQ+ebrMxE3LjLT/tAxUg/hsmH
         fYOjYATETWHk4txBJ1L4Y3uv7vwXtBn7H0bl5509ir6il+PFb8XHjkrPu8uP/xy79YRv
         QwDVmBwNqNAwAHbbxXXHrdxd4AqQq2zws18fD/pP5cp04OvNw8g8LfgwQJgsDCHOZCDS
         8Ibw==
X-Gm-Message-State: AOAM533b83WzbTNl+FxcdeP0va942qtcqownwV7aAoznyqzwNM8cVdf7
	RLUabipQDd62pFOcOl0GlAAKVgnzRFtd1crw7NM=
X-Google-Smtp-Source: ABdhPJwhPqLKtD1f9/RnWSIFQpZNf5YXHFryugLJWUk7z2tELA3QJ1W+Sk/FXXLyeoQ3pYEIqHLCPA==
X-Received: by 2002:a17:902:9302:b029:da:f6b0:643a with SMTP id bc2-20020a1709029302b02900daf6b0643amr5770698plb.33.1610472202418;
        Tue, 12 Jan 2021 09:23:22 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id 5sm3752495pff.125.2021.01.12.09.23.20
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 09:23:21 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/1] Pull request (cover letter only)
Date: Tue, 12 Jan 2021 07:23:12 -1000
Message-Id: <cover.1610472092.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1

The following changes since commit c1c79c1a122b053fb3ce0187b3cc89df1bb3bdd6:

  poky.conf: Bump version for 3.1.4 release (2020-11-13 05:05:51 -1000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Steve Sakoman (1):
  poky.conf: Bump version for 3.1.5 release

 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.17.1

