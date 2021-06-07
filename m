Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.97.1623079692561042976
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Jun 2021 08:28:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LF5IkzpR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id g204so10295550wmf.5
        for <poky@lists.yoctoproject.org>; Mon, 07 Jun 2021 08:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=frDC3FcLtISwxxf1dIykDdUciP7Mp2E4PMGtoDr9p4o=;
        b=LF5IkzpR1eZ7SUto4SWW3GY0I5HSE+nY/vLIUp6PILx0KWLM18S2wZjLGWp4RUARiq
         DpmGox9VjwLqNvDiJMPJQXcKhRbkhoMFHMSq1hPVAGZPMH9h+nOhr0CjpEnnm1khVuHp
         9yV35fBTnZPUdhZM/jq7b7WiyxmQrjLOHqsG8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=frDC3FcLtISwxxf1dIykDdUciP7Mp2E4PMGtoDr9p4o=;
        b=c9WQc1akIB6jgSInLml0dYIJMVbGrlCfWqD2XDEPmHfRwGMQmV9YvudEcDQrUfQY8p
         ny++S99fNl/8Aj0Yyyj9MLPCOo2tNZqIDJPDkHV0HLDSD8Fxo6i26HrI3GdGNTYSYy1U
         d2gHOP9f6N6Qf4bUdLNBGIshXzlPt1HP7PxeRJe9m2feiS3GoLpru3u7JrWtwIOT4KLn
         rP3TzVBrA+OFynrN3HihL1CHJjgxEgVGo7dpuhwlp/aaOYoUb6KJ87YdXm0NW4WDRSQP
         5JgI8mchGYy98BdC5t2Md6hYUDgKwM+1BpDLsEZzQhJgg/6EHqCm0HnFrkzr/JOiUoaR
         t35Q==
X-Gm-Message-State: AOAM533Ijwx+WoMyJ0OVvFQKUuay9xv490sQxUi45GtDHfc1cq6QSO6w
	nkN+J56y1G+s7+avLAqSz+9nHCH1u5E0xg==
X-Google-Smtp-Source: ABdhPJz7426sUFheqBXXDMnZPYxcp9LoNkdSPobEvl5rOn3lGs8QFSxzYPeDzFnjNi4HxxqygZqNng==
X-Received: by 2002:a1c:9807:: with SMTP id a7mr17200053wme.10.1623079690809;
        Mon, 07 Jun 2021 08:28:10 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:bc28:bf5c:88f3:2d27])
        by smtp.gmail.com with ESMTPSA id b8sm14489356wmd.35.2021.06.07.08.28.10
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 08:28:10 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] README.poky: Update to switch to markdown format and update
Date: Mon,  7 Jun 2021 16:28:09 +0100
Message-Id: <20210607152809.3071859-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 README.poky => README.poky.md |  0
 meta-poky/README.poky         | 77 ++++++++++++++---------------------
 2 files changed, 30 insertions(+), 47 deletions(-)
 rename README.poky => README.poky.md (100%)

diff --git a/README.poky b/README.poky.md
similarity index 100%
rename from README.poky
rename to README.poky.md
diff --git a/meta-poky/README.poky b/meta-poky/README.poky
index be0c6c016e0..02b46327094 100644
--- a/meta-poky/README.poky
+++ b/meta-poky/README.poky
@@ -1,35 +1,19 @@
-Poky
-====
+#Poky
 
-Poky is an integration of various components to form a complete prepackaged
-build system and development environment. It features support for building
-customised embedded device style images. There are reference demo images
-featuring a X11/Matchbox/GTK themed UI called Sato. The system supports
-cross-architecture application development using QEMU emulation and a
-standalone toolchain and SDK with IDE integration.
+Poky is an integration of various components to form pre-packaged build system and development environment which is used as a development and validation tool by the [Yocto Project](http://www.yoctoproject.org/ "Yocto Project"). It features support for building customised embedded style device images and custom containers. There are reference demo images ranging from X11/GTK+ to Weston, commandline and more. The system supports cross-architecture application development using QEMU emulation and a standalone toolchain and SDK suitable for IDE integration.
 
-Additional information on the specifics of hardware that Poky supports
-is available in README.hardware. Further hardware support can easily be added
-in the form of layers which extend the systems capabilities in a modular way.
+Additional information on the specifics of hardware that Poky supports is available in README.hardware. Further hardware support can easily be added in the form of BSP layers which extend the systems capabilities in a modular way. Many layers are available and can be found through the [layer index](https://layers.openembedded.org/ "layer index").
 
-As an integration layer Poky consists of several upstream projects such as 
-BitBake, OpenEmbedded-Core, Yocto documentation and various sources of information 
-e.g. for the hardware support. Poky is in turn a component of the Yocto Project.
+As an integration layer Poky consists of several upstream projects such as  [BitBake](https://git.openembedded.org/bitbake/ "BitBake"), [OpenEmbedded-Core](https://git.openembedded.org/openembedded-core/ "OpenEmbedded-Core"), [Yocto documentation](http://git.yoctoproject.org/cgit.cgi/yocto-docs/ "Yocto documentation"), the '[meta-yocto](http://git.yoctoproject.org/cgit.cgi/meta-yocto/ "meta-yocto")' layer which has configuration and hardware support components. These components are all part of the Yocto Project and OpenEmbedded ecosystems.
 
-The Yocto Project has extensive documentation about the system including a 
-reference manual which can be found at:
-    http://yoctoproject.org/documentation
+The Yocto Project has extensive documentation about the system including a  reference manual which can be found at  https://docs.yoctoproject.org/
 
-OpenEmbedded-Core is a layer containing the core metadata for current versions
-of OpenEmbedded. It is distro-less (can build a functional image with
-DISTRO = "") and contains only emulated machine support.
+OpenEmbedded is the build architecture used by Poky and the Yocto project.
+For information about OpenEmbedded, see the [OpenEmbedded website](http://www.openembedded.org/ "OpenEmbedded website").
 
-For information about OpenEmbedded, see the OpenEmbedded website:
-    http://www.openembedded.org/
+#Contribution Guidelines
 
-
-Contribution Guidelines
-=======================
+The project works using a mailing list patch submission process. Patches should be sent to the mailing list for the repository the components originate from (see below). Throughout the Yocto Project, the README files in the component in question should detail where to send patches, who the maintainers are and where bugs should be reported.
 
 A guide to submitting patches to OpenEmbedded is available at:
 
@@ -40,32 +24,31 @@ There is good documentation on how to write/format patches at:
 https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
 
 
-Where to Send Patches
-=====================
+#Where to Send Patches
+
+As Poky is an integration repository (built using a tool called combo-layer), patches against the various components should be sent to their respective upstreams:
+
+OpenEmbedded-Core (files in meta/, meta-selftest/, meta-skeleton/, scripts/):
+
+- Git repository: https://git.openembedded.org/openembedded-core/
+-  Mailing list: openembedded-core@lists.openembedded.org
+
+BitBake (files in bitbake/):
+
+- Git repository: https://git.openembedded.org/bitbake/
+- Mailing list: bitbake-devel@lists.openembedded.org
 
-As Poky is an integration repository (built using a tool called combo-layer),
-patches against the various components should be sent to their respective
-upstreams:
+Documentation (files in documentation/):
 
-bitbake:
-    Git repository: http://git.openembedded.org/bitbake/
-    Mailing list: bitbake-devel@lists.openembedded.org
+- Git repository: https://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
+- Mailing list: docs@lists.yoctoproject.org
 
-documentation:
-    Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
-    Mailing list: docs@lists.yoctoproject.org
+meta-yocto (files in meta-poky/, meta-yocto-bsp/):
 
-meta-poky, meta-yocto-bsp:
-    Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)
-    Mailing list: poky@lists.yoctoproject.org
+- Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto
+- Mailing list: poky@lists.yoctoproject.org
 
-Everything else should be sent to the OpenEmbedded Core mailing list.  If in
-doubt, check the oe-core git repository for the content you intend to modify.
-Before sending, be sure the patches apply cleanly to the current oe-core git
-repository.
+If in doubt, check the openembedded-core git repository for the content you intend to modify as most files are from there unless clearly one of the above categories. Before sending, be sure the patches apply cleanly to the current git repository branch in question.
 
-    Git repository: http://git.openembedded.org/openembedded-core/
-    Mailing list: openembedded-core@lists.openembedded.org
+[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/765/badge)](https://bestpractices.coreinfrastructure.org/projects/765)
 
-Note: The scripts directory should be treated with extra care as it is a mix of
-oe-core and poky-specific files from meta-poky.
-- 
2.30.2

