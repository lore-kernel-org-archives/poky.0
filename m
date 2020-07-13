Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.21818.1594653565883803953
 for <poky@lists.yoctoproject.org>;
 Mon, 13 Jul 2020 08:19:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=X5JdSiXV;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.54, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f54.google.com with SMTP id md7so6411685pjb.1
        for <poky@lists.yoctoproject.org>; Mon, 13 Jul 2020 08:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id;
        bh=atVUZMmLbOJEvVurwRLWG+j/IzVWkWueAtb8WYUOqus=;
        b=X5JdSiXVRlJWtcC/lgcGvvGcAt+UO0wJIj8+eZ2YQNWWvd57+PwyjxU7tp5jRhE0IR
         ye/sfxObw2dsknX90tN77Ctz0vzMAxGnEhP+0CYNlzYMjtSG21CAFxJJexC3hUzVSWlo
         qMMKdJEgxVjzAk216HdoAiyPk9k7VmAH+aogy3RTe7JgxY7ksnkH0CPeHhHycJpcD5hm
         DYWBRbHdr1OpTpFzR/VB/XjqsmULPaatYurfZIhh13+dCiy3vIcFVXSpa8Kd5C/ObpCf
         rAIWDUdGjZG+VDB3laYnerQxlR8iyAMi15zs4ndP4lFNHefhElC7DGuqGo8H152yL5bV
         ps4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=atVUZMmLbOJEvVurwRLWG+j/IzVWkWueAtb8WYUOqus=;
        b=UTZfiVPk3xkXsqV8chRBSgja0lhVeOdu7zRV/QYXa1Xypa23+Wz5Y8daYG4wChOocE
         1PC5rqRTPDFxWmWmV4AQWx9nEHUiR7G8/Nyh8sp22DESVn8T4rnKYhKg4VGWwx9SNRyG
         qgScUJl/pJCW9GRhRXD9lW0EjSNUXDD9b0RcDQUsGFjFNti/YzKfBRJ6umsTjPqTI5WW
         LblGmA/IoVPGcft7LSF/FmfnuYRTmarI48mybRmS2WnIoOOlyZiIjSYHVSZyDA+LfGOY
         EOJcLZ4pEsekcvQ+EdbMRKxOUNrtKlCJwwji1lnZAeyF9mFSaPDmT8RFi4RB/aRSuVFX
         9FMg==
X-Gm-Message-State: AOAM5333GL2SDL788peHAu/e3JimtSVKhKD78vZB8J6jQJIUldqhUTRv
	kev8cwLMxwXfea9JXJUOcWTkQYf3Kcq0sw==
X-Google-Smtp-Source: ABdhPJyKiEAPSTTpUPhHxGm9/a8b0HhpTSi8xOdoI3DwK8LqPfNgn7Eix4ha5v1vx0ZuPBzkjGyzrQ==
X-Received: by 2002:a17:902:a388:: with SMTP id x8mr163878pla.48.1594653564769;
        Mon, 13 Jul 2020 08:19:24 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id h15sm15571171pjc.14.2020.07.13.08.19.23
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 08:19:24 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/2] Pull request (cover letter only)
Date: Mon, 13 Jul 2020 05:19:13 -1000
Message-Id: <cover.1594653494.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1

The following changes since commit 9d7966cf2fb33d827c999fbb88872d8437d8f0c7:

  poky.conf: Bump version for 3.1.1 dunfell release (2020-06-08 21:28:24 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Anuj Mittal (1):
  linux-yocto: bump genericx86 kernel version to v5.4.40

Bruce Ashfield (1):
  yocto-bsps: bump reference boards to v5.4.49

 .../linux/linux-yocto_5.4.bbappend               | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

-- 
2.17.1

