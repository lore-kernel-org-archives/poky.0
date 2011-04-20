Return-Path: <francis.meyvis@gmail.com>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id F10984C800A2
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 13:55:42 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ewy22 with SMTP id 22so455659ewy.35
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 11:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=APPke+O33TpZoBdoGciCtReXv07NdRNiQppjeif0JP0=;
	b=Ib/DxdWvA+LG5E2vydu/2xSjixIHdgjKoYCJEUA6ovWjO/7Ls2fz4KvpjDIsy/9iOn
	gU8yZVDrlM3w1bQicAQD5zsCgvmp1cNnZVFCHWfx5c6eFWvNoZKSySPVvafVfkHj6VWE
	0RO3w4yxEPVu5w8eY0f9OVYIqzQlpddqbI/MY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=FGQ9l0lFEX8+VI23HhXL5bf2c6gCKKmovVTCpHf3PLo4/bmLIi+ogvY/qEjTPQLz44
	UMkpz8kKGhVN/SyPeuWq5b/ShJqHhwAJ3psSdJmctJOfWpIAaDqvdm5VYXtlBtx++Ie1
	bBdGWYXTe9V4gpvJfFFv2a+QmjZ4kNA3Nij8Y=
MIME-Version: 1.0
Received: by 10.14.124.140 with SMTP id x12mr2662685eeh.40.1303325741732; Wed,
	20 Apr 2011 11:55:41 -0700 (PDT)
Received: by 10.14.119.71 with HTTP; Wed, 20 Apr 2011 11:55:41 -0700 (PDT)
Date: Wed, 20 Apr 2011 20:55:41 +0200
Message-ID: <BANLkTinU+JDgmJkcNp60aR5LEwX2uCCbvA@mail.gmail.com>
From: Francis Meyvis <francis.meyvis@gmail.com>
To: poky@yoctoproject.org
Subject: How to deal with ERROR: Nothing RPROVIDES 'perf'
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
X-List-Received-Date: Wed, 20 Apr 2011 18:55:43 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I'm using yocto's bernard and trying to build for an arm board (igep0020).
For this I created meta/conf/machines/igep0020.conf.
And my build/conf/local.conf's MACHINE is set as ipep0020
As a start I used the content of the existing beagleboard.conf for igep0020.conf
I have also this line in my local.conf:
EXTRA_IMAGE_FEATURES = "dbg-pkgs dev-pkgs tools-sdk tools-debug
tools-profile tools-testapps debug-tweaks"

A bitbake seems to fail each time with these messages below.
If I limit the EXTRA_IMAGE_FEATURES as follows "dbg-pkgs dev-pkgs
tools-sdk debug-tweaks" building starts
But I'm keen on also having debugging tools available (like strace) on
the target ...

What am I missing? Thanks
Should I also post my problem on the yocto mailing list?

OE Build Configuration:
BB_VERSION        = "1.11.0"
METADATA_BRANCH   = "<unknown>"
METADATA_REVISION = "<unknown>"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "igep0020"
DISTRO            = "poky"
DISTRO_VERSION    = "1.0"
TARGET_FPU        = "hard"

NOTE: Resolving any missing task queue dependencies
NOTE: Runtime target 'perf' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['perf']
NOTE: Runtime target 'task-poky-tools-debug' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['task-poky-tools-debug', 'perf']
ERROR: Required build target 'poky-image-sato' has no buildable providers.
Missing or unbuildable dependency chain was: ['poky-image-sato',
'task-poky-tools-debug', 'perf']
ERROR: Nothing RPROVIDES 'perf' (but
/home/franchan/dev/igep/bernard/poky-bernard-5.0/meta/recipes-core/tasks/task-poky-tools.bb
RDEPENDS on or otherwise requires it)
ERROR: Command execution failed: Traceback (most recent call last):
 File "/home/franchan/dev/igep/bernard/poky-bernard-5.0/bitbake/lib/bb/command.py",
line 102, in runAsyncCommand
   commandmethod(self.cmds_async, self, options)
 File "/home/franchan/dev/igep/bernard/poky-bernard-5.0/bitbake/lib/bb/command.py",
line 200, in buildTargets
   command.cooker.buildTargets(pkgs_to_build, task)
 File "/home/franchan/dev/igep/bernard/poky-bernard-5.0/bitbake/lib/bb/cooker.py",
line 828, in buildTargets
   taskdata.add_unresolved(localdata, self.status)
 File "/home/franchan/dev/igep/bernard/poky-bernard-5.0/bitbake/lib/bb/taskdata.py",
line 540, in add_unresolved
   self.remove_runtarget(self.getrun_id(target))
 File "/home/franchan/dev/igep/bernard/poky-bernard-5.0/bitbake/lib/bb/taskdata.py",
line 517, in remove_runtarget
   self.fail_fnid(fnid, missing_list)
 File "/home/franchan/dev/igep/bernard/poky-bernard-5.0/bitbake/lib/bb/taskdata.py",
line 476, in fail_fnid
   self.remove_runtarget(target, missing_list)
 File "/home/franchan/dev/igep/bernard/poky-bernard-5.0/bitbake/lib/bb/taskdata.py",
line 517, in remove_runtarget
   self.fail_fnid(fnid, missing_list)
 File "/home/franchan/dev/igep/bernard/poky-bernard-5.0/bitbake/lib/bb/taskdata.py",
line 471, in fail_fnid
   self.remove_buildtarget(target, missing_list)
 File "/home/franchan/dev/igep/bernard/poky-bernard-5.0/bitbake/lib/bb/taskdata.py",
line 501, in remove_buildtarget
   raise bb.providers.NoProvider(target)
NoProvider: poky-image-sato

