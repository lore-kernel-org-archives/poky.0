Return-Path: <santosh.iitg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA56BE00D86; Thu, 31 Oct 2019 08:53:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (santosh.iitg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D669E003E1
	for <poky@yoctoproject.org>; Thu, 31 Oct 2019 08:53:52 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id c2so5556985oic.13
	for <poky@yoctoproject.org>; Thu, 31 Oct 2019 08:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=6kqSF+bhHwLFSHcuQFlXzYYAdBOQh4EyZ1GckvHgh4o=;
	b=CcXwBBacRGAkCl5RMcAHHXON3qbPQzpsR2QRuUtJF4Yvp0Hy7cFLZYOb68+l+hmvCj
	oSM01SGU5P+LMwIH9xhdz45QgMWV070+hPmlI/ra5mf9DR3Qy9VRK8JEUTHiqXiPNqSb
	NsAjSMeP1taa0WrTYYjWVT8XRCwVqhN0aJvCEDqprJj0bMpGW2WJ8I4mpe6F4LI9amcz
	UdSkUrd+mQfblcRx6DAFYBeLmr2g5pYK1dPg8PE1MX5BxkQZ4oHb38poq9/KN7EtGWTJ
	aH/MHeqYBdPcusA9fVmMzRvBZIeQXb+Moqjpa5fmyxCpV/Aur9t/jAY8lAPgi30vPslC
	SekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6kqSF+bhHwLFSHcuQFlXzYYAdBOQh4EyZ1GckvHgh4o=;
	b=SyLCmywyeW6FhTJZNfp4oq3HG+W3z2Rwa6Lt3B1uLULqJevtXxtxW3fk9rp2jo/ZOG
	DlndgVLI5hJ/HMRAqmcWw449nFzA3S1H61z4S3jxCHljdcf1vgnP3A+6GdpqkSugRbiD
	8NNNm6anX50k0Ud+dt5BvbdRyspDTN40Wxri7GAtfkE2PWaPKnbabeoE1Z3ep6brW/X7
	WFkz29+gpCotSyMLCty4pXw/57RnEz8S5bZZoFxLxv9HCl6KTge+LmrUfkR58z9VZO6f
	7WKJaaw8pYpjIvOuoziLw4A3DeJ2s5/j2ol+NJiMeZT6UvOgpFA9wjXJjry5UJq0G+cd
	OfLQ==
X-Gm-Message-State: APjAAAXadgq8uZapxhGvXEq6swx6khoHzwexgGZA6EVQ4tH/ZW4CJ/P5
	A4CI2TTgMsfkn+AjAijGRuGxdznsgra66EuoVtOQvznTT1M=
X-Google-Smtp-Source: APXvYqxGjK2g0olOjBldAIupbXzUvDkdmOhtd7wnhjkHgrRIlBAAatkMS+ktMIMPo8/8h6BQZ7pBe54MTdqAoH5d2A4=
X-Received: by 2002:aca:5c82:: with SMTP id q124mr958688oib.19.1572537231074; 
	Thu, 31 Oct 2019 08:53:51 -0700 (PDT)
MIME-Version: 1.0
From: santosh <santosh.iitg@gmail.com>
Date: Thu, 31 Oct 2019 21:23:40 +0530
Message-ID: <CADUNanhu71ABuOdmX1oRdO6SQB_JmxYVECBBdjHD5XzDqjUoCA@mail.gmail.com>
To: poky@yoctoproject.org
Subject: ERROR: do_rootfs: Function failed: check_for_passwd_group
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
X-List-Received-Date: Thu, 31 Oct 2019 15:53:53 -0000
Content-Type: multipart/alternative; boundary="0000000000000de98c059636db98"

--0000000000000de98c059636db98
Content-Type: text/plain; charset="UTF-8"

Hi

I am getting following error during build. Please let me know what could be
the issue  ?


-------------
NOTE: recipe wrlinux-image-initramfs-1.0-r0: task do_rootfs: Started
NOTE: recipe wrlinux-image-ovp-kvm-1.0-r0: task do_rootfs: Started
ERROR: wrlinux-image-ovp-kvm-1.0-r0 do_rootfs: Nothing provides /etc/passwd
and/or /etc/group
ERROR: wrlinux-image-ovp-kvm-1.0-r0 do_rootfs: Function failed:
check_for_passwd_group (log file is located at
./build-project/build/tmp-glibc/work/intel_x86_64-wrs-linux/wrlinux-image-ovp-kvm/1.0-r0/temp/log.do_rootfs.17127)
ERROR: Logfile of failure stored in:
./build-project/build/tmp-glibc/work/intel_x86_64-wrs-linux/wrlinux-image-ovp-kvm/1.0-r0/temp/log.do_rootfs.17127
NOTE: recipe wrlinux-image-ovp-kvm-1.0-r0: task do_rootfs: Failed
ERROR: Task
(./build-project/layers/wrlinux/wrlinux-ovp/recipes-base/images/wrlinux-image-ovp-kvm.bb:do_rootfs)
failed with exit code '1'
NOTE: recipe wrlinux-image-initramfs-1.0-r0: task do_rootfs: Succeeded
NOTE: Tasks Summary: Attempted 2361 tasks of which 450 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

./build-project/layers/wrlinux/wrlinux-ovp/recipes-base/images/wrlinux-image-ovp-kvm.bb:
do_rootfs

-------------------------


Regards
Santosh

--0000000000000de98c059636db98
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<div><br></div><div>I am getting following error during =
build. Please let me know what could be the issue=C2=A0 ?</div><div><br></d=
iv><div><br></div><div>-------------</div><div>NOTE: recipe wrlinux-image-i=
nitramfs-1.0-r0: task do_rootfs: Started<br>NOTE: recipe wrlinux-image-ovp-=
kvm-1.0-r0: task do_rootfs: Started<br>ERROR: wrlinux-image-ovp-kvm-1.0-r0 =
do_rootfs: Nothing provides /etc/passwd and/or /etc/group<br>ERROR: wrlinux=
-image-ovp-kvm-1.0-r0 do_rootfs: Function failed: check_for_passwd_group (l=
og file is located at ./build-project/build/tmp-glibc/work/intel_x86_64-wrs=
-linux/wrlinux-image-ovp-kvm/1.0-r0/temp/log.do_rootfs.17127)<br>ERROR: Log=
file of failure stored in: ./build-project/build/tmp-glibc/work/intel_x86_6=
4-wrs-linux/wrlinux-image-ovp-kvm/1.0-r0/temp/log.do_rootfs.17127<br>NOTE: =
recipe wrlinux-image-ovp-kvm-1.0-r0: task do_rootfs: Failed<br>ERROR: Task =
(./build-project/layers/wrlinux/wrlinux-ovp/recipes-base/images/wrlinux-ima=
ge-ovp-kvm.bb:do_rootfs) failed with exit code &#39;1&#39;<br>NOTE: recipe =
wrlinux-image-initramfs-1.0-r0: task do_rootfs: Succeeded<br>NOTE: Tasks Su=
mmary: Attempted 2361 tasks of which 450 didn&#39;t need to be rerun and 1 =
failed.<br><br>Summary: 1 task failed:<br>=C2=A0 ./build-project/layers/wrl=
inux/wrlinux-ovp/recipes-base/images/wrlinux-image-ovp-kvm.bb:do_rootfs<br>=
</div><div><br></div><div>-------------------------</div><div><br></div><di=
v><br></div><div>Regards</div><div>Santosh</div></div>

--0000000000000de98c059636db98--
