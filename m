Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
 by mx.groups.io with SMTP id smtpd.web10.42660.1597669310671535592
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 06:01:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nO282XzA;
 spf=pass (domain: gmail.com, ip: 209.85.208.68, mailfrom: vvavrychuk@gmail.com)
Received: by mail-ed1-f68.google.com with SMTP id c10so12192196edk.6
        for <poky@lists.yoctoproject.org>; Mon, 17 Aug 2020 06:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ELa0anplrMLOjg9ydNrBmqEmGxjMU2EgnT/yO+K4ogE=;
        b=nO282XzA+m+78kJrdk0kxJYL3bOIk8U0qfNN/XPoranXO+LEPB8OMRXo/wunDe1lZb
         Lr2Kj/ZMceDKrSH53Q8ypBW57iRAlMxo7No+LqwGnCdWjavSz1DVaurzdWCjgY79/qxf
         q7vCnvTaogPKk+Auj0c08m+u9+XXzftCgT3F9+m7Wl8vCfcvSBcPPqB4v8cz2KoMOyna
         hOXknBqf3T1uTW30ql9XRBI/ODC2wkEjKA32qRaBdSmrxjK9rplDYs+a7+1BEqSmlrq0
         OG7d6NiwE1VNyBv0W6kes7A2aUONENfNCyIAsaUYu5O0/Tnu29cwFWYiYONIA1gi3O1n
         6/Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ELa0anplrMLOjg9ydNrBmqEmGxjMU2EgnT/yO+K4ogE=;
        b=VX4BQYsifWAGjvdBoA7Ubp/sF/la//X/cO4p35DxUBNh8PK/3F925wTx/I1nGMU3S+
         BV5o/vcIFhxa0pYP1eQPPd6H4mvAtd7G4k1HQdgniNIPdeStVOB4WfY6yuHjd/nnjnB3
         6EU78Tl6YXyl91AwxEAhW/24rHNpBCc69kqq/dNf4GJ+Og8cw9nqODeSS7eebVAzDZ44
         f4kyMe4WjLFE9fuuw/dLqfZp0Talxl0q3Iq0ln/9LyhpcGp4iLFNQKaVypoVxU0XODj8
         jS/XuuLyydtWvrEVX6X6T7oU5p0DaLwtDLlENLjx875vs3QZXDNo5JQ9QNocMiQzYqfF
         FbHQ==
X-Gm-Message-State: AOAM533qYjX88D1ai8r5/TAh7kRRqT/tfEuP2VzZSDKzut5f/mmljgdB
	+RS/+JsWA6v1x5JNCK0sk6Gk+qDofhZDzA==
X-Google-Smtp-Source: ABdhPJyetDXIpaiyAjEldr8hp6hMzd/cU7n+csNiJmp7kzeEwji5v18FIrxZdOI7tyetTn4J6cRtEg==
X-Received: by 2002:aa7:c889:: with SMTP id p9mr15001550eds.105.1597669308967;
        Mon, 17 Aug 2020 06:01:48 -0700 (PDT)
Return-Path: <vvavrychuk@gmail.com>
Received: from glva-laptop.open-synergy.com ([213.174.19.120])
        by smtp.gmail.com with ESMTPSA id j7sm14231343ejb.64.2020.08.17.06.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 06:01:48 -0700 (PDT)
From: "Vasyl Vavrychuk" <vvavrychuk@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Vasyl Vavrychuk <vvavrychuk@gmail.com>
Subject: [PATCH 2/2] ref-manual: Mention that staging class is enabled by default.
Date: Mon, 17 Aug 2020 16:01:35 +0300
Message-Id: <20200817130135.3512-2-vvavrychuk@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200817130135.3512-1-vvavrychuk@gmail.com>
References: <20200817130135.3512-1-vvavrychuk@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This information is present for all other classes inherited by base class.

Previously it was mentioned for staging class to but then it was gonne.

Signed-off-by: Vasyl Vavrychuk <vvavrychuk@gmail.com>
---
 documentation/ref-manual/ref-classes.xml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index 1f353b3c30..4d7baff430 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -3386,6 +3386,11 @@ This check was removed for YP 2.3 release
                 </para></listitem>
         </itemizedlist>
     </para>
+
+    <para>
+        This class is enabled by default since it is inherited by
+        the <filename>base</filename> class.
+    </para>
 </section>
 
 <section id='ref-classes-syslinux'>
-- 
2.23.0

