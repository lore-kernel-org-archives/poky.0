Return-Path: <anonumiko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E00C3E0098A; Sun,  5 Feb 2017 12:20:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.174 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9077E00726
	for <poky@yoctoproject.org>; Sun,  5 Feb 2017 12:20:17 -0800 (PST)
Received: by mail-yw0-f174.google.com with SMTP id u68so39268256ywg.0
	for <poky@yoctoproject.org>; Sun, 05 Feb 2017 12:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=X8zEDuTBESJ+OAUNBfVBvY3bHDenf9Z2gRw8d2NI/yc=;
	b=DW7L+CXxzWubYwA7JrhuZkMB35rvA7TNxu44PQHfvd7JoVHjd54EXhYplx5+RQ7nZa
	H7Bhz3SEB1gfW7uYfZY4QLKwdXymdAiZR2/ZotWgefEIglP3NLDf9z7k/hwFkPPC+pWP
	7gHlSoOC/GDMEyZjBwS81JlCM5xVvvtR53zoAORAVuCSc2fZZynpyX55xxVlHuIUsmQX
	onokPDA5MWKXGqHfYzSpcRLgaWfVrnI/ioAXHhvixCezt31I5joCm53P8K9ATTi3aInO
	MIkxOWTsFBhkLFn03lwD4bLV321RLL2Yvc5T6lZeslsiW6RPtzTYCIWKRYeW08EIDbCV
	JDLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=X8zEDuTBESJ+OAUNBfVBvY3bHDenf9Z2gRw8d2NI/yc=;
	b=Ly2woRIRN++GQymsz/JmLHFNFS9/W1abEXabt8aNl27AXYAkbUocJaIqdLwFaETZmy
	mIdKijIt8dK9Jh/UqTKcBQYj39kqg1I7Wb6eh2T1ZYfHcOIFM3WLvu1rmSLNaKnxtWMO
	XloZg7BGuXWEo29xE8cP+EQrv2DO6zeVphjeAoYfoLCyTrt57I2pns3/430E8XjB88xP
	DPFaXpicOh9Ocl1vf8cKMUF/AfoU5ddXd7nKhVt4Ffr6QfW7Y0jjrmVBWO7FjqyPoDP2
	aSDV8WA3kVmbGYOPV+OzIBtbRb3DiUOsIwP88y6iPx5iEeryWpkdOk1qQ90Ls2OtjuVZ
	pBrA==
X-Gm-Message-State: AMke39kXn9b5mJyEduwlc0nQMCd4WBx+xKwkYriIBZYXg6a3qsOvu0d41ATcOK+KobWKMl2L91wsEcLDVXGh1g==
X-Received: by 10.129.68.8 with SMTP id r8mr4950542ywa.169.1486326016128; Sun,
	05 Feb 2017 12:20:16 -0800 (PST)
MIME-Version: 1.0
Sender: anonumiko@gmail.com
Received: by 10.37.173.67 with HTTP; Sun, 5 Feb 2017 12:19:55 -0800 (PST)
From: Niko Mauno <niko.mauno@iki.fi>
Date: Sun, 5 Feb 2017 22:19:55 +0200
X-Google-Sender-Auth: 2wKmp_WnRx63Yeun5C-u2sfh-n0
Message-ID: <CAN0Cx9MkWJ-3dGS=BcmUxW=-bk0AXwxxC2ZjCepsZgPb4FJ9yg@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Re: RFC: add new init system alternative to poky
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
X-List-Received-Date: Sun, 05 Feb 2017 20:20:21 -0000
Content-Type: text/plain; charset=UTF-8

To whom it may concern;

attached patches (which work for me on top of Poky commit
b76161a9a890481e8418a34b3250fc2debcb566f) serve by adding initial
support for an alternative modern init system called OpenRC to
Yocto-generated Linux OS distributions.

https://wiki.gentoo.org/wiki/OpenRC
https://wiki.gentoo.org/wiki/Comparison_of_init_systems

Motivation: Systemd may not suit everyone, but SysVinit is also very
old and unmaintained. OpenRC provides modern init features, such as
parallel service startup and automatic restarting of crashed services,
while retaining an Unix-like approach of doing things.

While relying on SysVinit's /sbin/init, the OpenRC documentation page
claims that BusyBox-provided init program is also supported at least
to some extent currently.

While developing I've tested against the poky master branch's
core-image-full-cmdline, which boots and halts for me seemingly
without errors.

With following openrc_%.bbappend:
  do_install_append() {
    echo 'keymap="fi"' >> ${D}${sysconfdir}/conf.d/keymaps
    echo 'rc_logger="YES"' >> ${D}${sysconfdir}/rc.conf
  }
I got the console keymap working for me, and a boot log at
/var/log/rc.log, like which Yocto's sysvinit has so far provided.

The second patch which modifies openssh recipe, is a sample showing
how to add openrc support to existing recipes. The OpenRC specific
conf, init files are readily available from Gentoo project, so there
shouldn't be any need to come up with those files from scratch. With
the openssh patch, I'm able to login in to core-image-full-cmdline
(executed via runqemu qemux86) via ssh right after the image OS has
booted.

