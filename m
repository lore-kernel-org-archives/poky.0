Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com [209.85.215.193])
 by mx.groups.io with SMTP id smtpd.web12.1552.1579940708211697137
 for <poky@lists.yoctoproject.org>;
 Sat, 25 Jan 2020 00:25:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tfRLbUUW;
 spf=pass (domain: gmail.com, ip: 209.85.215.193, mailfrom: sivakumar.bs@gmail.com)
Received: by mail-pg1-f193.google.com with SMTP id a33so2380048pgm.5
        for <poky@lists.yoctoproject.org>; Sat, 25 Jan 2020 00:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9f8/iVDM0ZrWHvjYv9cPN6FlxJocLENqHUk6lMNWFUk=;
        b=tfRLbUUWgjhNtwDEZdnHmraGT6yWO3SLukwvf314XIK0lc2Ev8NDBblDdQWECeU/wt
         1Gw0JCvZ/bN1vHJ/0Fa7MWe9NxB3zQQ7FwNJfyBtVm3MRzXoiWkyDPVnZjYkmw+H/Z0E
         2WN1gL1Zrm1nY+xEQUxszzbqjtir86VhcnnRP8sSThayVN8yg+uVg63svoLKzHPJbQa0
         cUqBJZJI4P0J4nF+jxJlp+uVr/FXi0IRZuVZrcpKgfbaFMUuw06Sxi3kMHbV0eg6amSJ
         P2aj80qWHcT87rDI3ylBydD+PLDZ5HaUfpTVZke30+OtnQ8AmTagYoE4KKRpWcnVttVr
         DSrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9f8/iVDM0ZrWHvjYv9cPN6FlxJocLENqHUk6lMNWFUk=;
        b=Wx8tpLxzYmKamSW31zfpSBH4pKYx1FJh/d2pKvkScfTtNieiwtX47dp7Imnn2WZ6SD
         Z+ouIv/pvY578US/boZOdGyaA25ok5w1jhmzuymTno8p8tuHuvE0uPuBz9HTa9MuZ80k
         b2XrQYdq8F9zmjhWWqdqyI3cnjIuSYDeIHMrjFkzrDvCgnwQZ6dILkWTHWuU0SPFw++i
         RAek0psGVwwJ5rQf3Xqa9Ou0Bta/sjrWIa0+BjKea2Jy3PYoXXQ4irFKxSd3ZQuFz0JJ
         1j38+ogH/feA53Q2sB2szHt3fDiWQfEXV8f0PNelDFPwtPiemU1+zyY2cPT2vGI4ux/V
         IClQ==
X-Gm-Message-State: APjAAAVMBpyf0P+KTRrNA6qv7pn/ueYSiBrAr5oG0pBGLAgVw5YpLx2w
	IJCFRY3/jVv3EkLylmnfy3DxxJzDC+8=
X-Google-Smtp-Source: APXvYqwXbKMxpO3I3MvH3DLBGKp9b08n2rVNNJgTv9zVmNJWDAN1czXNclBk38GDssz18c4W6eZuRA==
X-Received: by 2002:aa7:9484:: with SMTP id z4mr7026467pfk.88.1579940707460;
        Sat, 25 Jan 2020 00:25:07 -0800 (PST)
Return-Path: <sivakumar.bs@gmail.com>
Received: from devel.timesys.com ([49.205.139.80])
        by smtp.gmail.com with ESMTPSA id i9sm9149752pfk.24.2020.01.25.00.25.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Jan 2020 00:25:07 -0800 (PST)
From: "Siva Balasubramanian" <sivakumar.bs@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Siva Balasubramanian <sivakumar.bs@gmail.com>
Subject: [PATCH 1/1] sudo: update to 1.8.30
Date: Sat, 25 Jan 2020 13:55:00 +0530
Message-Id: <bc6acc24336713780c7a4fa2fe29baee115db975.1579940252.git.sivakumar.bs@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1579940252.git.sivakumar.bs@gmail.com>
References: <cover.1579940252.git.sivakumar.bs@gmail.com>

Signed-off-by: Siva Balasubramanian <sivakumar.bs@gmail.com>
---
 meta/recipes-extended/sudo/{sudo_1.8.29.bb => sudo_1.8.30.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-extended/sudo/{sudo_1.8.29.bb => sudo_1.8.30.bb} (91%)

diff --git a/meta/recipes-extended/sudo/sudo_1.8.29.bb b/meta/recipes-extended/sudo/sudo_1.8.30.bb
similarity index 91%
rename from meta/recipes-extended/sudo/sudo_1.8.29.bb
rename to meta/recipes-extended/sudo/sudo_1.8.30.bb
index 8da2d64..0aa9c59 100644
--- a/meta/recipes-extended/sudo/sudo_1.8.29.bb
+++ b/meta/recipes-extended/sudo/sudo_1.8.30.bb
@@ -7,8 +7,8 @@ SRC_URI = "https://www.sudo.ws/dist/sudo-${PV}.tar.gz \
 
 PAM_SRC_URI = "file://sudo.pam"
 
-SRC_URI[md5sum] = "b28dabff9c460f115fe74de4d6a6f79d"
-SRC_URI[sha256sum] = "ce53ffac9604e23321334d8ba8ac59ded2bcf624fdb9dbde097ab2049bf29c7c"
+SRC_URI[md5sum] = "d56cd5835b1cc9852bd76ddaaa572475"
+SRC_URI[sha256sum] = "a35ad3ddc7465703e04190d3ff0b8d78ded9246749becf9a014dcb9c31c579e7"
 
 DEPENDS += " virtual/crypt ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'libpam', '', d)}"
 RDEPENDS_${PN} += " ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'pam-plugin-limits pam-plugin-keyinit', '', d)}"
-- 
2.7.4

