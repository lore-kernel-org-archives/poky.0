Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web11.60243.1675704892016385612
 for <poky@lists.yoctoproject.org>;
 Mon, 06 Feb 2023 09:34:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=obob/2LI;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.181, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f181.google.com with SMTP id z1so12882805plg.6
        for <poky@lists.yoctoproject.org>; Mon, 06 Feb 2023 09:34:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ulb6MHqDVSDIt1kssaOb3puI4pL3hP8hhBUmYi+BTIk=;
        b=obob/2LITFfyRy0qJcTDZDVMUxezxnXh8ohB5zv3rfvZX8rWGfD5yqWl9UC8xdD1AY
         AEFl43MzHe1IxtvWrNaBpc2YvMITkmQW1wyhfWRVKFo5F2xYu+I7ZsYItYB1As/tI0FT
         IeDRfKkRAtbdNlyC43YkHgGloktuOfvXOzqc2fjpRgw4KI5r5ijGsCYqoW88EJAgcEG1
         wPNo3+uNoQ5ZLobfI+g5uf+TQGqD23myTfxaUg57kpiujMdFeL6iQOXA5v784qdT0xwJ
         hm4k4tSg2RQHgCHaIoc3RDA1c9NtEOgkmn+K8EDVzExN35VyJuzFE6gAtnRYlU6hwvlb
         uciw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ulb6MHqDVSDIt1kssaOb3puI4pL3hP8hhBUmYi+BTIk=;
        b=ASZncZ0iv3gtJUaPSkysgdTTEkqpnlEQ2q1q0G0RkVwAE3Y6g22eTbwZYceA/h1ywL
         oE3oYi1zjHrL7YUq2n3Xysq9erRJrhyKafvmrC7GeTSDTH4KOjSLT3EuHADGh2fjgBLW
         JrqKJnRZRbzPvZpYrbb5Kt+0d90yww8MXUkZMrcVb9rE2BQr+F8VqaHh2MgCQ8BZ0P1L
         nNndoZhDcAjqa4flUxeqVp7XAXo6FlycCDgTvz7FQlycLrdLk0qzS9LAlrWA36OOUw4Z
         Mt+st9ofi+xPOEXS8BS151DjV5EIPkY2ifGLDBbzSCCW7SJdEw5HBl8w5iIKbwnq7EK2
         ZW1Q==
X-Gm-Message-State: AO0yUKVby1EtcEHZimo3fszKW6/3i/TuofvtOCd+z5Il0wFT7ho6mDUr
	7TweWeQZ7zh0fx3XTj8bdiH0HV+ZsmzRfnHRXEY=
X-Google-Smtp-Source: AK7set8wiLHRdgRhfY7gpesh+na3uEiBDAyKQL2uMjQTxoD1sDXMV7fJoDEEmj6NMeZz2JRtLEdJ9g==
X-Received: by 2002:a17:902:f20c:b0:198:efdb:f039 with SMTP id m12-20020a170902f20c00b00198efdbf039mr7441257plc.25.1675704890943;
        Mon, 06 Feb 2023 09:34:50 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-4-112.hawaiiantel.net. [72.253.4.112])
        by smtp.gmail.com with ESMTPSA id g13-20020a170902d5cd00b00198e726a6bbsm6100385plh.44.2023.02.06.09.34.49
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 09:34:50 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: bump version for 3.1.23
Date: Mon,  6 Feb 2023 07:34:46 -1000
Message-Id: <2fca98952f8bca9f19b2c03abc3db3349be6a2ee.1675704739.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1675704739.git.steve@sakoman.com>
References: <cover.1675704739.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 52755cc..5be5042 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.22"
+DISTRO_VERSION = "3.1.23"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

