Return-Path: <akshat.embedded@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4AC624C8006D
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 06:54:32 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwe4 with SMTP id 4so81352qwe.35
	for <poky@yoctoproject.org>; Wed, 09 Feb 2011 04:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=UjuFeB0Xuh33nwQKBPUuy4mK7Hu+G0OUg7V5FS+1KB8=;
	b=nRVwVq05yklpoKm6xjUuPAgqnMarC1VsYNnGM8joG9FbX85uBGLzYBXWlOryFspkAn
	uh0BdtIokn+3GVSyOY1G79NlRMHMrvPEDkAZGl/wAbpNEa6GwTFGOVxKxxdq1pq6uLXx
	Uz6buqhClUeLm74S212G0Z3Xp9CbUYYk6DYg8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=cf2lpcoLjGGpBCVq+IcO1Bv3cOGh2AQqTGBseEwp+rrao5VaCKSUREfHRPIteC9pn/
	EyL8kEX/+5D4yuu5XtyqA9IHa48eQivXtbjQ71f6q9k05kZTsWLmFI3PdiyInJvdoIv7
	yO+dQJtJ6+VYuF+xTZaB5v8Waqr0eSpklsNP4=
MIME-Version: 1.0
Received: by 10.224.20.4 with SMTP id d4mr9409096qab.345.1297256071145; Wed,
	09 Feb 2011 04:54:31 -0800 (PST)
Received: by 10.229.218.69 with HTTP; Wed, 9 Feb 2011 04:54:31 -0800 (PST)
Date: Wed, 9 Feb 2011 18:24:31 +0530
Message-ID: <AANLkTinHOYzpAkHGuhrBqj2ozcFb88Mtt3rHzLDoNGMo@mail.gmail.com>
From: Akshat Saha <akshat.embedded@gmail.com>
To: poky@yoctoproject.org
Subject: Error Adding xorg-xserver package
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
X-List-Received-Date: Wed, 09 Feb 2011 12:54:32 -0000
Content-Type: multipart/alternative; boundary=0015175cda2c4daa04049bd8f7ee

--0015175cda2c4daa04049bd8f7ee
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to add "xorg-xserver" package available
in meta/recipes-graphics to my build by adding,

require recipes-core/images/poky-image-minimal.bb
IMAGE_INSTALL += "xorg-xserver"
LICENSE = "MIT"

but it is giving the following error.

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'xorg-xserver' (but
/home/sct/Akshat_WorkSpace/poky_git/poky/meta/recipes-core/images/
poky-image-minimal-akshat.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'xorg-xserver' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['xorg-xserver']
ERROR: Required build target 'poky-image-minimal-akshat-live' has no
buildable providers.
Missing or unbuildable dependency chain was:
['poky-image-minimal-akshat-live', 'poky-image-minimal-akshat',
'xorg-xserver']
Command execution failed: Traceback (most recent call last):
  File
"/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitbake/lib/bb/command.py",
line 88, in runAsyncCommand
    commandmethod(self.cmds_async, self, options)
  File
"/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitbake/lib/bb/command.py",
line 184, in buildTargets
    command.cooker.buildTargets(pkgs_to_build, task)
  File
"/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitbake/lib/bb/cooker.py",
line 758, in buildTargets
    taskdata.add_unresolved(localdata, self.status)
  File
"/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitbake/lib/bb/taskdata.py",
line 541, in add_unresolved
    self.remove_runtarget(self.getrun_id(target))
  File
"/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitbake/lib/bb/taskdata.py",
line 518, in remove_runtarget
    self.fail_fnid(fnid, missing_list)
  File
"/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitbake/lib/bb/taskdata.py",
line 472, in fail_fnid
    self.remove_buildtarget(target, missing_list)
  File
"/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitbake/lib/bb/taskdata.py",
line 497, in remove_buildtarget
    self.fail_fnid(self.tasks_fnid[taskid], missing_list)
  File
"/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitbake/lib/bb/taskdata.py",
line 472, in fail_fnid
    self.remove_buildtarget(target, missing_list)
  File
"/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitbake/lib/bb/taskdata.py",
line 502, in remove_buildtarget
    raise bb.providers.NoProvider(target)
NoProvider: poky-image-minimal-akshat-live

Can anyone suggest where am I wrong...?

Akshat

--0015175cda2c4daa04049bd8f7ee
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8">Hi=
,<div><br></div><div>I am trying to add &quot;xorg-xserver&quot; package=A0=
available in=A0meta/recipes-graphics=A0to my build by adding,=A0</div><div>=
=A0</div><div>
<div>require recipes-core/images/<a href=3D"http://poky-image-minimal.bb/" =
target=3D"_blank">poky-image-minimal.bb</a></div><div>IMAGE_INSTALL +=3D &q=
uot;xorg-xserver&quot;</div><div>LICENSE =3D &quot;MIT&quot;</div><div><br>=
</div>
<div>but it is giving the following error.=A0</div><div><br></div><div><div=
>NOTE: Resolving any missing task queue dependencies</div><div>ERROR: Nothi=
ng RPROVIDES &#39;xorg-xserver&#39; (but /home/sct/Akshat_WorkSpace/poky_gi=
t/poky/meta/recipes-core/images/<a href=3D"http://poky-image-minimal-akshat=
.bb/" target=3D"_blank">poky-image-minimal-akshat.bb</a>=A0RDEPENDS on or o=
therwise requires it)</div>
<div>NOTE: Runtime target &#39;xorg-xserver&#39; is unbuildable, removing..=
.</div><div>Missing or unbuildable dependency chain was: [&#39;xorg-xserver=
&#39;]</div><div>ERROR: Required build target &#39;poky-image-minimal-aksha=
t-live&#39; has no buildable providers.</div>
<div>Missing or unbuildable dependency chain was: [&#39;poky-image-minimal-=
akshat-live&#39;, &#39;poky-image-minimal-akshat&#39;, &#39;xorg-xserver&#3=
9;]</div><div>Command execution failed: Traceback (most recent call last):<=
/div>
<div>=A0=A0File &quot;/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//=
bitbake/lib/bb/command.py&quot;, line 88, in runAsyncCommand</div><div>=A0=
=A0 =A0commandmethod(self.cmds_async, self, options)</div><div>=A0=A0File &=
quot;/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitbake/lib/bb/co=
mmand.py&quot;, line 184, in buildTargets</div>
<div>=A0=A0 =A0command.cooker.buildTargets(pkgs_to_build, task)</div><div>=
=A0=A0File &quot;/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitba=
ke/lib/bb/cooker.py&quot;, line 758, in buildTargets</div><div>=A0=A0 =A0ta=
skdata.add_unresolved(localdata, self.status)</div>
<div>=A0=A0File &quot;/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//=
bitbake/lib/bb/taskdata.py&quot;, line 541, in add_unresolved</div><div>=A0=
=A0 =A0self.remove_runtarget(self.getrun_id(target))</div><div>=A0=A0File &=
quot;/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitbake/lib/bb/ta=
skdata.py&quot;, line 518, in remove_runtarget</div>
<div>=A0=A0 =A0self.fail_fnid(fnid, missing_list)</div><div>=A0=A0File &quo=
t;/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitbake/lib/bb/taskd=
ata.py&quot;, line 472, in fail_fnid</div><div>=A0=A0 =A0self.remove_buildt=
arget(target, missing_list)</div>
<div>=A0=A0File &quot;/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//=
bitbake/lib/bb/taskdata.py&quot;, line 497, in remove_buildtarget</div><div=
>=A0=A0 =A0self.fail_fnid(self.tasks_fnid[taskid], missing_list)</div><div>=
=A0=A0File &quot;/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitba=
ke/lib/bb/taskdata.py&quot;, line 472, in fail_fnid</div>
<div>=A0=A0 =A0self.remove_buildtarget(target, missing_list)</div><div>=A0=
=A0File &quot;/home/sct/Akshat_WorkSpace/poky_git/poky/scripts/..//bitbake/=
lib/bb/taskdata.py&quot;, line 502, in remove_buildtarget</div><div>=A0=A0 =
=A0raise bb.providers.NoProvider(target)</div>
<div>NoProvider: poky-image-minimal-akshat-live</div></div><div><br></div><=
div>Can anyone suggest where am I wrong...?</div><div><br></div></div><div>=
Akshat</div><div><br></div><div><br></div><div><br></div>

--0015175cda2c4daa04049bd8f7ee--
