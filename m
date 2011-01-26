Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2765A4C8085F
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 16:23:06 -0600 (CST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id BAE771C1DA08
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 23:23:04 +0100 (CET)
X-Auth-Info: 0XMxmMJQASteLx1VM+RHOqDgtmPSAW46fSoxfpiCVQ8=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id B35D81C000B9
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 23:23:04 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 9787F32105AD
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 23:23:04 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 75B03CD1385
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 23:23:04 +0100 (CET)
To: poky@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Wed, 26 Jan 2011 23:23:04 +0100
Message-Id: <20110126222304.75B03CD1385@gemini.denx.de>
Subject: Build of meta-toolchain-sdk fails
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
X-List-Received-Date: Wed, 26 Jan 2011 22:23:06 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Hi,

I'm trying to build "meta-toolchain-sdk" for a machine pretty much
identical to qemuppc:

this works fine for commit 4cd1118, but fails for 74783fe like this:

...
| Configuring libgypsy0.
| Configuring libgypsy-dbg.
| Configuring task-poky-standalone-sdk-target.
| Configuring task-poky-standalone-sdk-target-dbg.
| Configuring task-poky-standalone-gmae-sdk-target.
| Configuring libtelepathy-dbg.
| Configuring task-poky-standalone-gmae-sdk-target-dbg.
| Collected errors:
|  * satisfy_dependencies_for: Cannot satisfy the following dependencies for task-poky-standalone-gmae-sdk-target:
|  *    libstartup-notification-1-0 (>= 0.10) *         xcb-util (>= 0.3.6) *
|  * opkg_install_cmd: Cannot install package task-poky-standalone-gmae-sdk-target.
| Function 'do_populate_sdk' failed (see /opt/poky/build-soft-float-support-52d1403/tmp/work/ppc603e-poky-linux/meta-toolchain-sdk-1.0-r0/temp/log.do_populate_sdk.17742 for further information)
NOTE: package meta-toolchain-sdk-1.0-r0: task do_populate_sdk: Failed
ERROR: Task 9 (/home/wd/git/poky/work/meta/recipes-core/meta/meta-toolchain-sdk.bb, do_populate_sdk) failed with exit code '1'


Is this a known problem?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"We don't care.  We don't have to.  We're the Phone Company."

