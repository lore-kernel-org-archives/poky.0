Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web08.9730.1623860044226731374
 for <poky@lists.yoctoproject.org>;
 Wed, 16 Jun 2021 09:14:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JssbV7xx;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso4484372wmh.4
        for <poky@lists.yoctoproject.org>; Wed, 16 Jun 2021 09:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NSYMVaG2WIvT939HGlSp7l6Oh9Xxrs7c/JFR9VuFcbA=;
        b=JssbV7xxNsrl9vsnM2QB4jPIMnoMsLhfqhAH2nyZUMlrPZN3aFIIesyU6avIJdxCNW
         sLq7HtP5PAQtAz6aeuOtOuxvZ8/wYIXOZCqbqK6yPoXBffT5MHYKeNoNpwQnFhSyLyFG
         9t0tX9aPjGEOm7RM1zG1Osq++gthZIk1N6cVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NSYMVaG2WIvT939HGlSp7l6Oh9Xxrs7c/JFR9VuFcbA=;
        b=rBIG1gvUmGVcbEFX6LQFXBSOKSwzPVqHmpRUm+qVzYePi5GvwL185VEsrZIRYiVeZw
         0hMYZBfvErDuRwPdAzojJ0cHSy0rYf6hFlK3ZpwBO6jIMv/cw0N3NRvboE9R/lxP4FCs
         V6ROcc72DVSE9NFufyLK3s0cGHCVnapzz84ghF3g5ZjAvvAraXMpWxnZDf7ieVM+VYOE
         hum5neulzl5+kG8GMpKVqP/FTLoa809Q0Ya030YbLMz8pWQx8PC4RCoQDbGNUfvt6wED
         5RmG4EoZ0bMgFsUzr9mcYWAVbxi20R3vvzBsD4nPk2Dkx5klsY5YCl9n/eJf+Hb826pr
         4LRQ==
X-Gm-Message-State: AOAM532g/aGpBoDFJEl7enqr2zMU7CZCuZf/sW9+nXnD3p5H5JEoWVCL
	tUYX+Mr1GgHXMPIrydfBdLnkrleIau+i7Q==
X-Google-Smtp-Source: ABdhPJxd5/7pOu7XeebfEl1uvDWRKmgQTTzEzU6knGXCY6z7EPOnPSeUEq+DdI0ipovJvEPHGMvRSA==
X-Received: by 2002:a05:600c:4f90:: with SMTP id n16mr12178211wmq.139.1623860042423;
        Wed, 16 Jun 2021 09:14:02 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:31b6:9a4e:bc39:a574])
        by smtp.gmail.com with ESMTPSA id u16sm2853575wru.56.2021.06.16.09.14.01
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 09:14:02 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH v2] README.poky: Formatting and content cleanup
Date: Wed, 16 Jun 2021 17:14:01 +0100
Message-Id: <20210616161401.3349481-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The README is rather out of date, update the content with the new content
properly in markdown format.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/README.poky.md | 93 +++++++++++++++++++++++-----------------
 1 file changed, 53 insertions(+), 40 deletions(-)

diff --git a/meta-poky/README.poky.md b/meta-poky/README.poky.md
index be0c6c016e0..289373f9441 100644
--- a/meta-poky/README.poky.md
+++ b/meta-poky/README.poky.md
@@ -1,71 +1,84 @@
 Poky
 ====
 
-Poky is an integration of various components to form a complete prepackaged
-build system and development environment. It features support for building
-customised embedded device style images. There are reference demo images
-featuring a X11/Matchbox/GTK themed UI called Sato. The system supports
-cross-architecture application development using QEMU emulation and a
-standalone toolchain and SDK with IDE integration.
+Poky is an integration of various components to form a pre-packaged
+build system and development environment which is used as a development and
+validation tool by the [Yocto Project](http://www.yoctoproject.org/). It
+features support for building customised embedded style device images
+and custom containers. There are reference demo images ranging from X11/GTK+
+ to Weston, commandline and more. The system supports cross-architecture
+application development using QEMU emulation and a standalone toolchain and
+SDK suitable for IDE integration.
 
 Additional information on the specifics of hardware that Poky supports
 is available in README.hardware. Further hardware support can easily be added
-in the form of layers which extend the systems capabilities in a modular way.
+in the form of BSP layers which extend the systems capabilities in a modular way.
+Many layers are available and can be found through the
+[layer index](https://layers.openembedded.org/).
 
 As an integration layer Poky consists of several upstream projects such as 
-BitBake, OpenEmbedded-Core, Yocto documentation and various sources of information 
-e.g. for the hardware support. Poky is in turn a component of the Yocto Project.
+[BitBake](https://git.openembedded.org/bitbake/),
+[OpenEmbedded-Core](https://git.openembedded.org/openembedded-core/),
+[Yocto documentation](http://git.yoctoproject.org/cgit.cgi/yocto-docs/),
+the '[meta-yocto](http://git.yoctoproject.org/cgit.cgi/meta-yocto/)' layer
+which has configuration and hardware support components. These components
+are all part of the Yocto Project and OpenEmbedded ecosystems.
 
 The Yocto Project has extensive documentation about the system including a 
-reference manual which can be found at:
-    http://yoctoproject.org/documentation
-
-OpenEmbedded-Core is a layer containing the core metadata for current versions
-of OpenEmbedded. It is distro-less (can build a functional image with
-DISTRO = "") and contains only emulated machine support.
-
-For information about OpenEmbedded, see the OpenEmbedded website:
-    http://www.openembedded.org/
+reference manual which can be found at <https://docs.yoctoproject.org/>
 
+OpenEmbedded is the build architecture used by Poky and the Yocto project.
+For information about OpenEmbedded, see the 
+[OpenEmbedded website](http://www.openembedded.org/).
 
 Contribution Guidelines
-=======================
+-----------------------
+
+The project works using a mailing list patch submission process. Patches
+should be sent to the mailing list for the repository the components
+originate from (see below). Throughout the Yocto Project, the README
+files in the component in question should detail where to send patches,
+who the maintainers are and where bugs should be reported.
 
 A guide to submitting patches to OpenEmbedded is available at:
 
-http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
+<http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded>
 
 There is good documentation on how to write/format patches at:
 
-https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
-
+<https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines>
 
 Where to Send Patches
-=====================
+---------------------
 
 As Poky is an integration repository (built using a tool called combo-layer),
 patches against the various components should be sent to their respective
 upstreams:
 
-bitbake:
-    Git repository: http://git.openembedded.org/bitbake/
-    Mailing list: bitbake-devel@lists.openembedded.org
+OpenEmbedded-Core (files in meta/, meta-selftest/, meta-skeleton/, scripts/):
+
+- Git repository: <https://git.openembedded.org/openembedded-core/>
+- Mailing list: openembedded-core@lists.openembedded.org
+
+BitBake (files in bitbake/):
+
+- Git repository: <https://git.openembedded.org/bitbake/>
+- Mailing list: bitbake-devel@lists.openembedded.org
+
+Documentation (files in documentation/):
+
+- Git repository: <https://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/>
+- Mailing list: docs@lists.yoctoproject.org
 
-documentation:
-    Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
-    Mailing list: docs@lists.yoctoproject.org
+meta-yocto (files in meta-poky/, meta-yocto-bsp/):
 
-meta-poky, meta-yocto-bsp:
-    Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)
-    Mailing list: poky@lists.yoctoproject.org
+- Git repository: <http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto>
+- Mailing list: poky@lists.yoctoproject.org
 
-Everything else should be sent to the OpenEmbedded Core mailing list.  If in
-doubt, check the oe-core git repository for the content you intend to modify.
-Before sending, be sure the patches apply cleanly to the current oe-core git
-repository.
+If in doubt, check the openembedded-core git repository for the content you
+intend to modify as most files are from there unless clearly one of the above
+categories. Before sending, be sure the patches apply cleanly to the current
+git repository branch in question.
 
-    Git repository: http://git.openembedded.org/openembedded-core/
-    Mailing list: openembedded-core@lists.openembedded.org
+[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/765/badge)](https://bestpractices.coreinfrastructure.org/projects/765)
 
-Note: The scripts directory should be treated with extra care as it is a mix of
-oe-core and poky-specific files from meta-poky.
-- 
2.30.2

