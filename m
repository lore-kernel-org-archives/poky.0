Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB2884C80039
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 03:29:13 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 5B2171C08CCD;
	Mon, 20 Dec 2010 10:29:12 +0100 (CET)
X-Auth-Info: Pzl6cicnjpxkXhpCYBpb+0e/agChCcxRbQHtKFfGnI8=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id EAFE31C001FA;
	Mon, 20 Dec 2010 10:29:11 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id C330A316EC0B;
	Mon, 20 Dec 2010 10:29:11 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id AF1F8CDE29A;
	Mon, 20 Dec 2010 10:29:11 +0100 (CET)
To: Joshua Lock <josh@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <cover.1292600657.git.josh@linux.intel.com>
References: <cover.1292600657.git.josh@linux.intel.com>
Comments: In-reply-to Joshua Lock <josh@linux.intel.com>
	message dated "Fri, 17 Dec 2010 15:44:17 +0000."
Date: Mon, 20 Dec 2010 10:29:11 +0100
Message-Id: <20101220092911.AF1F8CDE29A@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] Misc build fixes
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 20 Dec 2010 09:29:14 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Joshua,

In message <cover.1292600657.git.josh@linux.intel.com> you wrote:
> This series includes a corrected fix for gst-plugins-base for make 3.82 as
> well as fixes to enable gthumb to build on a system without gtk-doc installed

Thanks.

>   gthumb: add gnome-doc-utils-native to DEPENDS

Using your poky-contrib/josh/make-382git branch and trying to build
poky-image-sdk for qemuppc on F14 results for me in this:

...
| checking dynamic linker characteristics... (cached) GNU/Linux ld.so
| checking how to hardcode library paths into programs... immediate
| checking for glib-genmarshal... /opt/poky/build-work-qemuppc/tmp/sysroots/x86_64-linux/usr/bin/glib-genmarshal
| checking for glib-mkenums... /opt/poky/build-work-qemuppc/tmp/sysroots/x86_64-linux/usr/bin/glib-mkenums
| checking for powerpc-poky-linux-pkg-config... no
| checking for pkg-config... /opt/poky/build-work-qemuppc/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
| configure: WARNING: using cross tools not prefixed with host triplet
| checking pkg-config is at least version 0.9.0... yes
| checking gnome-doc-utils >= 0.3.2... no
| configure: error: gnome-doc-utils >= 0.3.2 not found
| FATAL: oe_runconf failed
| ERROR: Task failed: ('function do_configure failed', '/opt/poky/build-work-qemuppc/tmp/work/ppc603e-poky-linux/gthumb-2.12.0-r2/temp/log.do_configure.5399')
NOTE: package gthumb-2.12.0-r2: task do_configure: Failed
ERROR: Task 1387 (/home/wd/git/poky/work/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb, do_configure) failed with 1
ERROR: '/home/wd/git/poky/work/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb' failed

Am I missing something?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"Never give in.  Never give in.  Never. Never. Never."
- Winston Churchill

