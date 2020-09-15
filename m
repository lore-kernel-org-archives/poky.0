Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web11.14406.1600179306208494503
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Sep 2020 07:15:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=utvzifRE;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.181, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f181.google.com with SMTP id j34so2050221pgi.7
        for <poky@lists.yoctoproject.org>; Tue, 15 Sep 2020 07:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=QxFxHQKvEw7i5iY5KcyL+uznsxiOAlQdfcOzMezhXy4=;
        b=utvzifRE2ThZ/ovGZsMz0ZmnqTMOl5Xuv2MvP5kb4+7x0SnMNoM3unWmc1UoUJDhnV
         KsVuTy9VDEZgDOhiIWlZbGNIHSnIlSgKP6RG8vLtsCiBgo12iVjXJXyyCPp3bhtmDLfA
         00Eab2Kh5WeM0KUvTxZv4ULI0GcX+5g2bM9jDu/bPiKpBG2oliVZMA060OEi+ctRa/t7
         Zr55JvNZYizM7KqpdPtOE0ZhUlcsh+/NYQ4YiSSBcptymbItnTyFC+giLtfCvEu6kbXJ
         9CVwTczuMi7xPhPI2DJh100XNP0dSwypJqmGUKjoHC24q36juityoG3H37euNVzTiwWk
         z8wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=QxFxHQKvEw7i5iY5KcyL+uznsxiOAlQdfcOzMezhXy4=;
        b=X1PnIov4I8f/5vKUoe9r9iQf4lsdR/bsl6gKd7gF+Z/Tq67rShZ8r1yb9ADtuf9iaY
         Fj/y2owJ1xebQ+q/6GEu/w9Uf6iQrU1doKFIZvI5nBVuNsRM+ZwYJ79Nj5JCf0rC/S8n
         zd+BZl8nImFZz+76mJXc9e+Kq2qEnMxbuE+v+O2+uHVN4yTNMJ79eqEQbzXDik6SNUYs
         ivYBK+yFXXmBfc1I3MwoSFcj2699WoOAY/q6yEFM0diFKrmbii4ikYJB/s7y/88lL7mT
         McR/LpIKEf52ULtvkH/CemWSGCXQWHZQM+r47hHbg1a75VXJWKX08OrwwGIELjMcF7NG
         pZYg==
X-Gm-Message-State: AOAM533gNtDHTkTjgZH4uedGLGDCuZCwXUsfzl7qRZCfkaki6hUE73Tl
	4lvWMVjUpehMX8n0zmxKTmg1ONFetXC4iJ7DOFE=
X-Google-Smtp-Source: ABdhPJwdWJwJr5wOf2/vT8DZB94sAI59AOOE6h9SsTGToajAwJIKB/hWnwEdLkh0HBNgdsaDpB0zNA==
X-Received: by 2002:aa7:8437:0:b029:13e:d13d:a103 with SMTP id q23-20020aa784370000b029013ed13da103mr18411506pfn.31.1600179305276;
        Tue, 15 Sep 2020 07:15:05 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id hk17sm11157064pjb.14.2020.09.15.07.15.04
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 07:15:04 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 4/4] poky.conf: Bump version for 3.1.3 release
Date: Tue, 15 Sep 2020 04:14:41 -1000
Message-Id: <492e345b5e01e59f1f4374388005f81b860db636.1600179148.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1600179148.git.steve@sakoman.com>
References: <cover.1600179148.git.steve@sakoman.com>

---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 7c77ebf..03bc9ea 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.2"
+DISTRO_VERSION = "3.1.3"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.17.1

