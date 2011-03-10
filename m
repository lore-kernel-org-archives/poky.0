Return-Path: <cahoshing@gmail.com>
Received: from mail-px0-f169.google.com (mail-px0-f169.google.com
	[209.85.212.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8B984C80050
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 04:37:09 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi9 with SMTP id 9so362176pxi.28
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 02:37:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=WkvhalW4TG3dh1ji0iYTjCXGZ7orZoSJg/7h5yj6EJs=;
	b=Uwm8l1w9uJj/uVkgpkxi8ya7TJdinpDwShs1jX1Y5LGmUT+DzyISGHsO6FRbqaEpNZ
	+0FGLIVNyEtmqqDhOXoqgMWp69VyPM7UbUKCoZ+SgSAM8POkLnL8aMtY9Km5JTcsX1DR
	oXY7UpWUkXLBoyMNI5G0dTgZVyC3qeyqeiDeU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=kmZeI7J+oyHOqNPGTbjLt/FgbsOpbY/hRUnEl9XENgTiMQWYVR0T5IS8jq24uiHn9O
	M6MrqNTYWxIrMxc0m2J1Qg9a0RdVfOZgk83c8QlQkcbMeZvib2Ck593JIda/4rugzGe4
	2/hqvWmivlirujmEFcl1G3jE1voq3I8j0xrxc=
MIME-Version: 1.0
Received: by 10.142.154.15 with SMTP id b15mr6387179wfe.272.1299753428432;
	Thu, 10 Mar 2011 02:37:08 -0800 (PST)
Received: by 10.142.106.2 with HTTP; Thu, 10 Mar 2011 02:37:08 -0800 (PST)
Date: Thu, 10 Mar 2011 16:07:08 +0530
Message-ID: <AANLkTi=Rqe+q0EPir=m+un8c0LYtv9BS40LrPtZyXMRr@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Error while pulling mpeg2dec library
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
X-List-Received-Date: Thu, 10 Mar 2011 10:37:10 -0000
Content-Type: multipart/alternative; boundary=000e0cd2e9a465b7bc049e1e6dda

--000e0cd2e9a465b7bc049e1e6dda
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I am getting error while pulling mpeg2dec library,also i have checked the bb
file for the same but still it is saying unbuildable,
what is getting wrong??

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'mpeg2dec' (but
/home/sct/poky-chrome/meta/recipes-core/images/poky-image-minimal-akshat.bbRDEPENDS
on or otherwise requires it)
NOTE: Runtime target 'mpeg2dec' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['mpeg2dec']
ERROR: Required build target 'poky-image-minimal-akshat-live' has no
buildable providers.
Missing or unbuildable dependency chain was:
['poky-image-minimal-akshat-live', 'poky-image-minimal-akshat', 'mpeg2dec']
Command execution failed: Traceback (most recent call last):
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/command.py", line
88, in runAsyncCommand
    commandmethod(self.cmds_async, self, options)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/command.py", line
184, in buildTargets
    command.cooker.buildTargets(pkgs_to_build, task)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/cooker.py", line
758, in buildTargets
    taskdata.add_unresolved(localdata, self.status)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", line
541, in add_unresolved
    self.remove_runtarget(self.getrun_id(target))
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", line
518, in remove_runtarget
    self.fail_fnid(fnid, missing_list)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", line
472, in fail_fnid
    self.remove_buildtarget(target, missing_list)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", line
497, in remove_buildtarget
    self.fail_fnid(self.tasks_fnid[taskid], missing_list)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", line
472, in fail_fnid
    self.remove_buildtarget(target, missing_list)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", line
502, in remove_buildtarget
    raise bb.providers.NoProvider(target)
NoProvider: poky-image-minimal-akshat-live

Wtih Regards
Chinmaya

--000e0cd2e9a465b7bc049e1e6dda
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I am getting error while pulling mpeg2d=
ec library,also i have checked the bb file for the same but still it is say=
ing unbuildable,</div><div>what is getting wrong??</div><div><br></div><div=
>
NOTE: Resolving any missing task queue dependencies</div><div>ERROR: Nothin=
g RPROVIDES &#39;mpeg2dec&#39; (but /home/sct/poky-chrome/meta/recipes-core=
/images/<a href=3D"http://poky-image-minimal-akshat.bb">poky-image-minimal-=
akshat.bb</a> RDEPENDS on or otherwise requires it)</div>
<div>NOTE: Runtime target &#39;mpeg2dec&#39; is unbuildable, removing...</d=
iv><div>Missing or unbuildable dependency chain was: [&#39;mpeg2dec&#39;]</=
div><div>ERROR: Required build target &#39;poky-image-minimal-akshat-live&#=
39; has no buildable providers.</div>
<div>Missing or unbuildable dependency chain was: [&#39;poky-image-minimal-=
akshat-live&#39;, &#39;poky-image-minimal-akshat&#39;, &#39;mpeg2dec&#39;]<=
/div><div>Command execution failed: Traceback (most recent call last):</div=
>
<div>=A0=A0File &quot;/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/comm=
and.py&quot;, line 88, in runAsyncCommand</div><div>=A0=A0 =A0commandmethod=
(self.cmds_async, self, options)</div><div>=A0=A0File &quot;/home/sct/poky-=
chrome/scripts/..//bitbake/lib/bb/command.py&quot;, line 184, in buildTarge=
ts</div>
<div>=A0=A0 =A0command.cooker.buildTargets(pkgs_to_build, task)</div><div>=
=A0=A0File &quot;/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/cooker.py=
&quot;, line 758, in buildTargets</div><div>=A0=A0 =A0taskdata.add_unresolv=
ed(localdata, self.status)</div>
<div>=A0=A0File &quot;/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/task=
data.py&quot;, line 541, in add_unresolved</div><div>=A0=A0 =A0self.remove_=
runtarget(self.getrun_id(target))</div><div>=A0=A0File &quot;/home/sct/poky=
-chrome/scripts/..//bitbake/lib/bb/taskdata.py&quot;, line 518, in remove_r=
untarget</div>
<div>=A0=A0 =A0self.fail_fnid(fnid, missing_list)</div><div>=A0=A0File &quo=
t;/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py&quot;, line =
472, in fail_fnid</div><div>=A0=A0 =A0self.remove_buildtarget(target, missi=
ng_list)</div>
<div>=A0=A0File &quot;/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/task=
data.py&quot;, line 497, in remove_buildtarget</div><div>=A0=A0 =A0self.fai=
l_fnid(self.tasks_fnid[taskid], missing_list)</div><div>=A0=A0File &quot;/h=
ome/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py&quot;, line 472,=
 in fail_fnid</div>
<div>=A0=A0 =A0self.remove_buildtarget(target, missing_list)</div><div>=A0=
=A0File &quot;/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py&=
quot;, line 502, in remove_buildtarget</div><div>=A0=A0 =A0raise bb.provide=
rs.NoProvider(target)</div>
<div>NoProvider: poky-image-minimal-akshat-live</div><div><br></div><div>Wt=
ih Regards=A0</div><div>Chinmaya</div></div>

--000e0cd2e9a465b7bc049e1e6dda--
