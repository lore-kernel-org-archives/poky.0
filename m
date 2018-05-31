Return-Path: <anand.build1985@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBB0DE00C99; Thu, 31 May 2018 00:14:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anand.build1985[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A823DE00C75
	for <poky@yoctoproject.org>; Thu, 31 May 2018 00:14:49 -0700 (PDT)
Received: by mail-lf0-f41.google.com with SMTP id r2-v6so8152491lff.4
	for <poky@yoctoproject.org>; Thu, 31 May 2018 00:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ePx9BrsT/i5TmWid65NXK5twFnhIezX4/bSf4rHiSH8=;
	b=JahjqVrwBedgDKNS7mxSdQMcR45dA7vpqTl2AWEX41OhhvEHhKoIPDSJmPVO8a/P6d
	5EyiZxXzkHPo83aWppV/7zLa48JukRuCnFoIhETDjHojNzprupitZlnTia7Z0lHJkF8E
	oA075/N4HVRn02WN+i+o3QybArkNJG8YAVFCT+rfv2N8XHSwNXQR8dHCzi4SjV2rKKmV
	rNX/NFv6Affr0HE7fKfgogoilVe7iwwokFguTUr7wf5bog7lTDfBJMzT5wsfbBsmEY4O
	SYSGWXwZHm3VNTAfhHOZsxR3U8aP089Ykunr6n83eAsl9qVlFutvp0XLCq7DvnmWk1r2
	dnHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ePx9BrsT/i5TmWid65NXK5twFnhIezX4/bSf4rHiSH8=;
	b=K0ahKoMLQ/e1/Xrr6rc07ev6z8/X9gNfoQvppWzKXnxlHSNrpZQfSy2yeQpnsZftk1
	sRYNQ9iVJbtpJBPq0iCtlfnObOiZFhp+SmcrmfCGimX9815IxcxpSP8g9d4GlDcbuZUd
	gdIfw6gEhyysU4S1NtduZIUfgVsEA5UE02Gs1vWveBYWAnYcssn3a//zcdZOByRT/+WZ
	OQFF75IQJFc9MJ5PuvsED5Iqr0IqCMpfXqIOx64C6jfA3ualub8nVpj0v+oDRjuxmn9c
	MyVFl/MLTYWRLRwbN+8avRH0lZSbT79WItSHnmSPpaT4vF8Dxg6j+K2mlgJaJEh/jZcW
	+rHQ==
X-Gm-Message-State: ALKqPwe2TgPjdfVFOFu+gMDx/h/CbSwtuZEjBTrQHumEH9NO7CvUeQU4
	0l1A4xrvzPrAmBS0qxVM4q56PTBucyywsWvw2idA0g==
X-Google-Smtp-Source: ADUXVKIx/GS/SbJCrItaJbCb1jdSPtuyzSigVqzhdVbMDCfbOtWPUfOLUOG5NprXqKuQqEVWPEOWmL4kRByYuRNXxF0=
X-Received: by 2002:a2e:5c89:: with SMTP id
	q131-v6mr3999246ljb.77.1527750888255; 
	Thu, 31 May 2018 00:14:48 -0700 (PDT)
MIME-Version: 1.0
From: Anand Ingale <anand.build1985@gmail.com>
Date: Thu, 31 May 2018 12:44:37 +0530
Message-ID: <CA+=TBV4mm5aUmcCbhobgtZt7AN=4oJYe3n-wTC_kL7vmUGLKkQ@mail.gmail.com>
To: poky@yoctoproject.org
Subject: testimage feature ( automated tests for qemu images ) not working for qemuarm virt machine
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
X-List-Received-Date: Thu, 31 May 2018 07:14:52 -0000
Content-Type: multipart/alternative; boundary="000000000000fff3ab056d7b38e7"

--000000000000fff3ab056d7b38e7
Content-Type: text/plain; charset="UTF-8"

Hi All,
 I have booted qemuarm  image for virt machine ( not for  versatilepb which
is available by default in poky) .

in my kernel recipe , source i have taken from below repository
{{{

SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
"

}}}

i have created a defconfig file using multi_v7_defconfig
     # cloned git://
git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
     # make multi_v7_defconfig
     # copied .config generated as defconfig to recipes-kernel directory


 i have used  core-image-minimal  to build rootfs

 i am able to boot qemu image when i run , # runqemu qemuarm nographic
 {{{
Poky (Yocto Project Reference Distro) 2.4.2 qemuarm /dev/ttyAMA0

qemuarm login: root
root@qemuarm:~#
root@qemuarm:~# uname -a
Linux qemuarm 4.17.0-rc5-myker #1 SMP Sat May 19 17:25:41 UTC 2018 armv7l
GNU/Linux
root@qemuarm:~#
}}}

followed this link to run testimage
https://wiki.yoctoproject.org/wiki/Image_tests

 when i run below commnad , it  fails to run tests
  # bitbake core-image-minimal -c testimage
{{{
 WARNING: Qemu ended unexpectedly, dump data from host is in
/tmp/oe-saved-tests/201805310707_qemu
| DEBUG: Stopping logging thread
| DEBUG: Stop event received
| DEBUG: Tearing down logging thread
| DEBUG: Sending SIGTERM to runqemu
| ERROR: testimage received SIGTERM, shutting down...
| ERROR: core-image-minimal - FAILED - tests were interrupted during
execution
| DEBUG: Python function do_testimage finished
| ERROR: Function failed: do_testimage
ERROR: Task
(/home/AIngale/Poky-1/poky-virt/meta/recipes-core/images/core-image-minimal.bb:do_testimage)
failed with exit code '1'

}}}

  do i need enable any kernel config for testimage feature to work ??.
please suggest  what changes i need to do . I have tried this on poky's
rocko branch .

Best Regards

--000000000000fff3ab056d7b38e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div>=C2=A0I have booted qemuarm=C2=A0 image for vi=
rt machine ( not for=C2=A0 versatilepb which is available by default in pok=
y) .</div><div>=C2=A0</div><div>in my kernel recipe , source i have taken f=
rom below repository=C2=A0 =C2=A0</div><div>{{{</div><div><br></div><div>SR=
C_URI =3D &quot;git://<a href=3D"http://git.kernel.org/pub/scm/linux/kernel=
/git/torvalds/linux.git">git.kernel.org/pub/scm/linux/kernel/git/torvalds/l=
inux.git</a>&quot;=C2=A0</div><div><br></div><div>}}}</div><div><br></div><=
div>i have created a defconfig file using multi_v7_defconfig=C2=A0</div><di=
v>=C2=A0 =C2=A0 =C2=A0# cloned git://<a href=3D"http://git.kernel.org/pub/s=
cm/linux/kernel/git/torvalds/linux.git">git.kernel.org/pub/scm/linux/kernel=
/git/torvalds/linux.git</a>=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0# make mult=
i_v7_defconfig=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0# copied .config generat=
ed as defconfig to recipes-kernel directory=C2=A0</div><div>=C2=A0</div><di=
v><br></div><div>=C2=A0i have used=C2=A0 core-image-minimal=C2=A0 to build =
rootfs=C2=A0</div><div><br></div><div>=C2=A0i am able to boot qemu image wh=
en i run , # runqemu qemuarm nographic=C2=A0</div><div>=C2=A0{{{</div><div>=
Poky (Yocto Project Reference Distro) 2.4.2 qemuarm /dev/ttyAMA0</div><div>=
<br></div><div>qemuarm login: root</div><div>root@qemuarm:~#</div><div>root=
@qemuarm:~# uname -a</div><div>Linux qemuarm 4.17.0-rc5-myker #1 SMP Sat Ma=
y 19 17:25:41 UTC 2018 armv7l GNU/Linux</div><div>root@qemuarm:~#</div><div=
>}}}</div><div><br></div><div>followed this link to run testimage</div><div=
><a href=3D"https://wiki.yoctoproject.org/wiki/Image_tests">https://wiki.yo=
ctoproject.org/wiki/Image_tests</a>=C2=A0</div><div>=C2=A0</div><div>=C2=A0=
when i run below commnad , it=C2=A0 fails to run tests</div><div>=C2=A0 # b=
itbake core-image-minimal -c testimage</div><div>{{{</div><div>=C2=A0WARNIN=
G: Qemu ended unexpectedly, dump data from host is in /tmp/oe-saved-tests/2=
01805310707_qemu</div><div>| DEBUG: Stopping logging thread</div><div>| DEB=
UG: Stop event received</div><div>| DEBUG: Tearing down logging thread</div=
><div>| DEBUG: Sending SIGTERM to runqemu</div><div>| ERROR: testimage rece=
ived SIGTERM, shutting down...</div><div>| ERROR: core-image-minimal - FAIL=
ED - tests were interrupted during execution</div><div>| DEBUG: Python func=
tion do_testimage finished</div><div>| ERROR: Function failed: do_testimage=
</div><div>ERROR: Task (/home/AIngale/Poky-1/poky-virt/meta/recipes-core/im=
ages/core-image-minimal.bb:do_testimage) failed with exit code &#39;1&#39;<=
/div><div><br></div><div>}}}=C2=A0=C2=A0</div><div>=C2=A0=C2=A0</div><div>=
=C2=A0 do i need enable any kernel config for testimage feature to work ??.=
 please suggest=C2=A0 what changes i need to do . I have tried this on poky=
&#39;s rocko branch .</div><div><br></div><div>Best Regards</div><div><br><=
/div><div><br></div></div>

--000000000000fff3ab056d7b38e7--
