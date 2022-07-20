Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.54054.1658324348567806421
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 06:39:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HxNHr1is;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id b26so26191590wrc.2
        for <poky@lists.yoctoproject.org>; Wed, 20 Jul 2022 06:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=odGB/tePTYxN6sSP89oTS1R/3zKaHsyRZ+jRGsP4G4U=;
        b=HxNHr1ish0BsuWxQegLFgVEIDocC17H0sDOTT6CT5CJceGmScLDlWSrOyJRv1PWUsA
         Ws6zI/FxjVHZmIHjohhcW9JfpnSc9FeSynNcgz9fyuNaiMTGNu/e5IF9F1/ObzDad1gN
         7h9rjcnlCqS+GV9/Pdwa79aUR9Tlti3uNVbsZDeRksSLBL4Yeqoom/gP1UPRonh/l8Ws
         XsXxEFmVC+hzwul62/c7GOosD82qNEVkAV0mrFVJIZ3tONe6koE8ng4Kx7vopcdbFB0T
         1wIp10OP1vuWX39xP1zQjX5smrb+uakt89eRt7GP0MUJM6WIInI6udzySdPxjNHPVGlt
         1UWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=odGB/tePTYxN6sSP89oTS1R/3zKaHsyRZ+jRGsP4G4U=;
        b=w4yskfLZFk/acYXF0m6JbFwtmV5G4fIgdTUpCInevGovqMCFNkNp/Mdi59YLpfATHJ
         ukzQ7DNIESlneVVQOKW55skkl01NawSafmeDybfdTjC7L51gWB4DtY3Hk9b/rH4O4vto
         Vgrqz6Usp39ROgO/wYAQF/2n04J2g3Dggt5s5Qj6AWo8iohfjs9E/xAow8pA8UTDya91
         pjkmMo4R52mvM5izgKzLBp2jKEgv5yC+pb0jLbCHeEHMHKgc3cqcwoHWJ10+tPpGfQ+9
         n5uTWet1Sjp2JJ7Do8ZImEDbFKaLPugKcxMy0BDLEwqsiJVSCTJpLHarUKFqxG67OAQY
         wXHw==
X-Gm-Message-State: AJIora/O52Rv+ulM25BD2Cmqe3b877V3p48ZUGwzTdvW9ILYjXJcARzl
	UiWNWUh6he9s+iM4qB+c/HyyGcqNAv0=
X-Google-Smtp-Source: AGRyM1vnT6iuVRraQgg8OY5xAzrnEqU42xz/riTC2Y9sFoHk66OVj6dCKN3H3UMtriD+qXFTWvuoNA==
X-Received: by 2002:a05:6000:1a50:b0:21d:bac3:54ee with SMTP id t16-20020a0560001a5000b0021dbac354eemr29870493wry.182.1658324346752;
        Wed, 20 Jul 2022 06:39:06 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id r9-20020a05600c2c4900b003a02cbf862esm2477636wmg.13.2022.07.20.06.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 06:39:06 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH] poky-floating-revisions.inc: remove xf86-input-keyboard entry
Date: Wed, 20 Jul 2022 15:39:01 +0200
Message-Id: <20220720133901.3433336-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The recipe has been removed from core.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-poky/conf/distro/include/poky-floating-revisions.inc | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-poky/conf/distro/include/poky-floating-revisions.inc b/meta-poky/conf/distro/include/poky-floating-revisions.inc
index 6f473de88c..0cc4e005b9 100644
--- a/meta-poky/conf/distro/include/poky-floating-revisions.inc
+++ b/meta-poky/conf/distro/include/poky-floating-revisions.inc
@@ -43,8 +43,6 @@ SRCREV:pn-xf86-input-evdev = "${AUTOREV}"
 #PREFERRED_VERSION_xf86-input-evdev ?= "2.0.4"
 SRCREV:pn-xf86-input-mouse = "${AUTOREV}"
 #PREFERRED_VERSION_xf86-input-mouse ?= "1.3.0+git%"
-SRCREV:pn-xf86-input-keyboard = "${AUTOREV}"
-#PREFERRED_VERSION_xf86-input-keyboard ?= "1.3.1+git%"
 SRCREV:pn-xf86-input-synaptics = "${AUTOREV}"
 #PREFERRED_VERSION_xf86-input-synaptics ?= "0.15.2+git%"
 
-- 
2.30.2

