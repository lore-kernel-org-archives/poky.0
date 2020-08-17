Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web11.42034.1597666718725793013
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 05:18:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fsMZaIdO;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: vvavrychuk@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id a14so12090032edx.7
        for <poky@lists.yoctoproject.org>; Mon, 17 Aug 2020 05:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OuprNKYiCBY2FkrL+jG9OqLxLZBAcY/KKaoqG6dm2bU=;
        b=fsMZaIdO17r39RTHkhQjHufPDKakG0Yxc0muDZ/p9DM/RLT2FTk1hwHyaWZQLzjbQI
         FSM+n14kNh291rF8LtSTY/dUITcUcCUTvo/zbpeKubGA1x5rPGnjLh7vAwA0KPWJHXkJ
         nnQQPxsL0EeX6IUIEU+LHjz4sIXhh+GUKqSxpBGJq6qgNZLCrl00fkQYGKyZB42Awg2b
         c8y2jIaNYnEcvH89sBHh2RiQV74yD7GnsbYS6+IlerwrrEzFBNsszxJOwAgI3LBahWaV
         /I/iwCByRDJTdCA7HTLFyVkyEDtwm6opyUhek2wvTKPKYyN4SJ/C3an05aLj68YwK8zf
         q42w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OuprNKYiCBY2FkrL+jG9OqLxLZBAcY/KKaoqG6dm2bU=;
        b=kS9mNMiyZAd4aywg48Bv0+fckI+YZe6GIWUrelqZ0kMZ8LGTa5JZ7T7xphT1s+P9lU
         lF57GM5b18QT40XmAWxIMfp9g8EyX9speY9zIaZJZBMFSrK4fWLElXHE5CG1ncUxZi0j
         hRbFtppJX/8Zg5b+z9Zq1iN10Xl+iQtA8TQQjdspo9BDeK07cWNoZeLB0VGJeQsF6zpe
         9P9h2mr7BPO7tI/CaEFv10lqPbuzNULAPqyThDARDLZU1Jc8sjAAyE3fh+l1GKiMoSQM
         748LCsLjPfdBK48IfbDWVld2V6Q9Q5GADCpwaBeCIlN7OGkUwWhpZmgKy8df954s6nkn
         01VA==
X-Gm-Message-State: AOAM532qkuAmW6EURfrb56tly6CkJ5UFdHLYpqJQ4EkRk/hNMmud0LH2
	2qBDsS0B+Z14hOJpkCbxTZjHUZFzLkAs3w==
X-Google-Smtp-Source: ABdhPJxEljALdWfpRV39id0NRC2EcuXQkt+KA533IeqikesZFwjSKxPAchuATrCVFYonUm861TMe4g==
X-Received: by 2002:aa7:cc85:: with SMTP id p5mr14855365edt.369.1597666716813;
        Mon, 17 Aug 2020 05:18:36 -0700 (PDT)
Return-Path: <vvavrychuk@gmail.com>
Received: from localhost.localdomain ([213.174.19.120])
        by smtp.gmail.com with ESMTPSA id j11sm13528752edr.71.2020.08.17.05.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 05:18:36 -0700 (PDT)
From: "Vasyl Vavrychuk" <vvavrychuk@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Vasyl Vavrychuk <vvavrychuk@gmail.com>
Subject: [PATCH] runqemu: Check gtk or sdl option is passed together with gl or gl-es options.
Date: Mon, 17 Aug 2020 15:18:28 +0300
Message-Id: <20200817121828.7345-1-vvavrychuk@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

runqemu help reports that gtk or sdl option is needed with gl or gl-es
option. But if user forgot to add gtk or sdl option, then gl or gl-es
options were silently skipped.

Signed-off-by: Vasyl Vavrychuk <vvavrychuk@gmail.com>
---
 scripts/runqemu | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/runqemu b/scripts/runqemu
index 310d79fdc5..398f0a0910 100755
--- a/scripts/runqemu
+++ b/scripts/runqemu
@@ -454,7 +454,8 @@ class BaseConfig(object):
                     self.qemu_opt_script += ' -display gtk'
             elif arg == 'gl' or arg == 'gl-es':
                 # These args are handled inside sdl or gtk blocks above
-                pass
+                if ('gtk' not in sys.argv) and ('sdl' not in sys.argv):
+                    raise RunQemuError('Option %s also needs gtk or sdl option.' % (arg))
             elif arg == 'egl-headless':
                 self.qemu_opt_script += ' -vga virtio -display egl-headless'
                 # As runqemu can be run within bitbake (when using testimage, for example),
-- 
2.23.0

