Return-Path: <derek.c.browne@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2553EE0030A
	for <poky@yoctoproject.org>; Mon, 28 Nov 2011 09:22:22 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywp31 with SMTP id 31so6720301ywp.35
	for <poky@yoctoproject.org>; Mon, 28 Nov 2011 09:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=UktRGqvpMCWHnS1yR1e5LDuihFgY5bd+eYs5h3ZrxqY=;
	b=rty6kxkuGCvE3MNyCmVX9ow6G3Qm2OcJeM9+1uuOqXMsWZPbrM3dFjYboRGmAtl5uo
	j8jmEmJgqJfu0XV/o2tK9WT/eiAKkICkl8hVtUCLOvsB1hYHjPMQenaGblo8dH9+1D8u
	DmXmI3Iche5tV28FN62b4lPzAJShm9Yy3VWBk=
MIME-Version: 1.0
Received: by 10.236.197.72 with SMTP id s48mr64306566yhn.81.1322500941400;
	Mon, 28 Nov 2011 09:22:21 -0800 (PST)
Sender: derek.c.browne@gmail.com
Received: by 10.236.180.37 with HTTP; Mon, 28 Nov 2011 09:22:21 -0800 (PST)
Date: Mon, 28 Nov 2011 17:22:21 +0000
X-Google-Sender-Auth: 91sOY2onIHzYrrqn5OxW6c-5rx8
Message-ID: <CAJa-nAwJ_EFLovm_+wr-n+WaRsDscCCfCgFtAnsCYNdy4Cx3AA@mail.gmail.com>
From: Derek Browne <derek.browne@intel.com>
To: poky@yoctoproject.org
Subject: ERROR: Execution of event handler 'run_buildstats' failed on non-local storage
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
X-List-Received-Date: Mon, 28 Nov 2011 17:22:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I have run into an issue completing a build on non-local storage(NFS).

Current configuration:
Poky Edison branch with commit revision :
c5bdef56175c0b6863e3d588a5a2c23cbea7b568
Using the default local.conf configuration(qemux86) with a build
target of core-image-minimal.

An error is thrown at the beginning of the build:

ERROR: Execution of event handler 'run_buildstats' failed
Traceback (most recent call last):
  File "run_buildstats(e)", line 18, in
run_buildstats(e=<bb.event.BuildStarted object at 0x11c3450>)
  File "buildstats.bbclass", line 21, in
set_device(e=<bb.event.BuildStarted object at 0x11c3450>)
UnboundLocalError: local variable 'rdev' referenced before assignment

The build then continues with the initial 126 host dependency build
tasks, which makes it very easy to miss the error output. The build
then stops when the 126 initial build tasks are completed and does not
continue.

Due to the build being performed on non-local storage as apposed to a
physical drive, the build cannot access the disk statistics via
/proc/diskstats.

To make the build continue, a hack had to be introduced to the
/poky/meta/classes/buildstats.bbclass .The disk device(rdev) was hard
coded to an available physical drive sda1. As shown below:

diff --git a/meta/classes/buildstats.bbclass b/meta/classes/buildstats.bbclass
index 55cbb3c..8718e79 100644
--- a/meta/classes/buildstats.bbclass
+++ b/meta/classes/buildstats.bbclass
@@ -52,6 +52,7 @@ def set_device(e):
     device=os.stat(tmpdir)
     majordev=os.major(device.st_dev)
     minordev=os.minor(device.st_dev)
+    rdev = "sda1"
     for line in open("/proc/diskstats", "r"):
         if majordev == int(line.split()[0]) and minordev ==
int(line.split()[1]):
            rdev=line.split()[2]


This allows the build to run to completion. Should I report this as a
bug via bugzilla ?

Thanks,
Derek

