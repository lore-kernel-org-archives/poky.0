Return-Path: <ricardo.ribalda@gmail.com>
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0255CE008D6
	for <poky@yoctoproject.org>; Mon, 10 Mar 2014 23:59:34 -0700 (PDT)
Received: by mail-ob0-f178.google.com with SMTP id wp18so8045026obc.23
	for <poky@yoctoproject.org>; Mon, 10 Mar 2014 23:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=u0WVjiSO+gYE3oL+g1KW2fbFhFCOgMgx7WAtgpR6qoE=;
	b=gkB/dpKMAviCc9SgaKy9k+oulGsBokN+9sIyndR9HNOsGVMZjFlOlW2MIxb3d1zjui
	tr1TlvEgQKAOWYNnMjifdCPcGgyijOMDbxBEEE4AmVlKjbtuKl2dejVMZ2bQvvP54Lgk
	ILb7pUmzUoN1WS6BD51CgFTsZInVtoNWWoxzZSvPrUd40wzbg/Ad2x3Vxztnztls7emB
	sIGJ3RnA5PF6UJys6nn4/yMVgjpRTbkl0fkOEzpW5csaXk/UARWJEjQgTzPEndAV7obi
	XdOsK0/hHIkWW9RKRvfu/hJeuUvBu8U6ITCOq7qivXp3Cc4IOAz0QmIIsBbMqzAEqJQI
	N9Pg==
X-Received: by 10.182.117.73 with SMTP id kc9mr11732608obb.20.1394521173308;
	Mon, 10 Mar 2014 23:59:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.116.194 with HTTP; Mon, 10 Mar 2014 23:59:13 -0700 (PDT)
In-Reply-To: <1394462648-29953-1-git-send-email-ricardo.ribalda@gmail.com>
References: <1394462648-29953-1-git-send-email-ricardo.ribalda@gmail.com>
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Date: Tue, 11 Mar 2014 07:59:13 +0100
Message-ID: <CAPybu_3CWLmXnexkgfbMgwmB1aMZGb8qwbbz0NqMQn5fy2ADow@mail.gmail.com>
To: poky@yoctoproject.org
Subject: [PATCH] package_deb: Map TARGET_ARCH x86_64 to DPKG_ARCH amd64
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Mar 2014 06:59:35 -0000
Content-Type: text/plain; charset=ISO-8859-1

Without this patch packages are generated as x86_64. Which cannot be
installed by default.

root@qt5022:~# dpkg -i alsa-utils_1.0.27.2-r0_x86-64.deb
dpkg: error processing alsa-utils_1.0.27.2-r0_x86-64.deb (--install):
 package architecture (x86-64) does not match system (amd64)
Errors were encountered while processing:
 alsa-utils_1.0.27.2-r0_x86-64.deb

Signed-off-by: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
---
 meta/classes/package_deb.bbclass | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta/classes/package_deb.bbclass b/meta/classes/package_deb.bbclass
index 6a8e080..b391e5c 100644
--- a/meta/classes/package_deb.bbclass
+++ b/meta/classes/package_deb.bbclass
@@ -430,6 +430,8 @@ python () {
     darch = d.getVar('DPKG_ARCH', True)
     if darch in ["x86", "i486", "i586", "i686", "pentium"]:
          d.setVar('DPKG_ARCH', 'i386')
+    elif darch == "x86_64":
+         d.setVar('DPKG_ARCH', 'amd64')
     elif darch == "arm":
          d.setVar('DPKG_ARCH', 'armel')
 }
--
1.9.0

