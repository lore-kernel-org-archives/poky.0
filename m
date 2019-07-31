Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48EB6E00D90; Wed, 31 Jul 2019 11:04:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jeff.dagenais[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12260E00C94
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 11:04:27 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id d15so49905111qkl.4
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 11:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:subject:message-id:date
	:cc:to; bh=LvX2/ARFZyr5AmcbfcF7juzj9I6k0+uJEDVPZVPQnPU=;
	b=nO0VfEy3BNaftbWcazT+FvQnuaUMDQgOJD26AShJ4RM3WJQk65b9Nk9sHZVtHTYlcM
	bujPQbJ3r+7A0K8XtrD8PAJReVZNW2ufaVyxYRyrdnU322xt0Dj+RBSg9DpsG7x8eNdh
	fpRu57VDpQtle39YTVjilQjQrsNjDAoF6hHMjK4w8poVz+UDueCF9EMiNMk7opD7sS8n
	BRGnX6pFL/F1nWRjqoMpvHZ3rEyzukAYHLcIYjxC5SxOgq1xXPit98+MAQXe7cQfidWP
	TuUrpnCg+JoJ7hSwOv9vtvJ4Nx4fE9O4iBmCKm24MMi3TUAPIknqmRqGqKPQTuN498ZH
	dT5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:cc:to;
	bh=LvX2/ARFZyr5AmcbfcF7juzj9I6k0+uJEDVPZVPQnPU=;
	b=f9crt+fmlg5rD0RbUDHqJMLd40jZzMOu7gIERgrZ1BQAh3qi9YIcvZILybjJnE8sGO
	SQqRC+JblWZOkXnlPyela6Zd5wWyipHhp8u2OnskHm0CKzeSZt+rBAjG2VOcasbi+MH3
	f8EMleaevbZS/W5NanHSEk2WSYsChhRxcocpHYZWraF3ifuv1Xwk8gG3JcinSOUshhBU
	FdOtYH9L/A3o0qs/O+B3pzF7lM8Ar5JuJhSr/4pxDNUsJ16onNRVnozekTPlnteeYynq
	pgTzUcIEh189qwRwUPNAd5ZJqp+tHAYoshMrbnu/0Vw9u8XV1erhUqFbnhopxVOl4bVc
	KAVQ==
X-Gm-Message-State: APjAAAVAD7k72wCOYTSvsdAMQ4M5UIHgnYA3umCOX0Txi2cc1QNy/3iE
	RfXAfrlsLdVtDxzBiYSkXuQ5zpnmm+whAQ==
X-Google-Smtp-Source: APXvYqzo5QHg2fLRxXc8Fe8MJknBeTyZuRADwiy8qjip9l7l1fR0mh8qRcT7XDmYufIFiQfbhnFqmA==
X-Received: by 2002:a37:a744:: with SMTP id q65mr6240508qke.151.1564596267189; 
	Wed, 31 Jul 2019 11:04:27 -0700 (PDT)
Received: from jfdmac.sonatest.net
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	o5sm29753844qkf.10.2019.07.31.11.04.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 31 Jul 2019 11:04:26 -0700 (PDT)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <F7CC2B89-FAF3-4031-BBCB-813D26C2F242@gmail.com>
Date: Wed, 31 Jul 2019 14:04:25 -0400
To: Poky Project <poky@yoctoproject.org>
X-Mailer: Apple Mail (2.3445.104.11)
Subject: do_image_wic cross-recipe task dependency affects recipe-sysroot
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
X-List-Received-Date: Wed, 31 Jul 2019 18:04:29 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi all,

I have a image recipe (myimage.bb with Wic FSTYPE) which will need to =
bundle a file built by another recipe (let's say myrecipe.bb which =
inherits swupdate.bbclass) in the boot partition.

The boot partition is made by bootimg-partition.py through the wks file.

I list my file (myrecipe.swu) in IMAGE_BOOT_FILES so bootimg-partition =
will add it.

If I add "myrecipe" in EXTRA_IMAGEDEPENDS like one would think this was =
made for, a race occurs where there is no guarantee that myrecipe.swu =
will be ready in DEPLOYDIR when myimage:do_image_wic runs since =
EXTRA_IMAGEDEPENDS attaches myrecipe:do_populate_sysroot to =
myimage.do_image_complete. Thing is, myimage:do_image_complete depends =
on both do_image_wic and myrecipe:do_populate_sysroot equally, hence the =
race.

This can be easily demonstrated by requesting "bitbake myimage -c =
do_image_wic" which, if myrecipy.swu is not already present in =
DEPLOYDIR, will fail 100% of the time.

So here's my workaround which has worked well for quite a while:

In myimage.bb:

do_image_wic[depends] +=3D "myrecipe:do_image_swu"

This works 100% of the time in that myrecipe.swu is always present =
before do_image_wic starts... GREAT!

Recently we've started having sporadic build issues. I am trying to =
understand what is going on:


NOTE: recipe myimage-1.0-r0: task do_image_wic: Started
ERROR: myimage-1.0-r0 do_image_wic: Error executing a python function in =
exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure =
was:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:extend_recipe_sysroot(d)
     0003:
File: '/builds/soft/yocto-mymachine/poky/meta/classes/staging.bbclass', =
lineno: 553, function: extend_recipe_sysroot
     0549:                    dest =3D newmanifest[l]
     0550:                    if l.endswith("/"):
     0551:                        staging_copydir(l, targetdir, dest, =
seendirs)
     0552:                        continue
 *** 0553:                    staging_copyfile(l, targetdir, dest, =
postinsts, seendirs)
     0554:
     0555:    bb.note("Installed into sysroot: %s" % str(msg_adding))
     0556:    bb.note("Skipping as already exists in sysroot: %s" % =
str(msg_exists))
     0557:
File: '/builds/soft/yocto-mymachine/poky/meta/classes/staging.bbclass', =
lineno: 151, function: staging_copyfile
     0147:        os.symlink(linkto, dest)
     0148:        #bb.warn(c)
     0149:    else:
     0150:        try:
 *** 0151:            os.link(c, dest)
     0152:        except OSError as err:
     0153:            if err.errno =3D=3D errno.EXDEV:
     0154:                bb.utils.copyfile(c, dest)
     0155:            else:
Exception: FileExistsError: [Errno 17] File exists: =
'/cache/build/mymachine/tmp/sysroots-components/aarch64/libgcc/usr/lib/aar=
ch64-mydistro-linux/8.2.0/crtbeginT.o' -> =
'/cache/build/mymachine/tmp/work/mymachine-mydistro-linux/myimage/1.0-r0/r=
ecipe-sysroot/usr/lib/aarch64-mydistro-linux/8.2.0/crtbeginT.o'




Examining what is being installed by extend_recipe_sysroot, I realised =
that by doing do_image_wic[depends] +=3D "myrecipe:do_image_swu", the =
recipe-sysroot directory of myimage becomes huge. In fact, it seems that =
all the recursive target dependencies of myrecipe.bb (and the rootfs it =
bundles) are installed in myimage.bb's workdir!! Probably ultimately =
causing the conflicts I see above.

These artifacts installed in myimage's recipe-sysroot, are completely =
useless to the work that myimage has to do (do_rootfs, do_image_wic, =
etc.)

So back to my title: Is there a way to add a simple execution dependency =
between a task in one recipe and a task in another recipe, without =
affecting the dependent's recipe-sysroot?

Thanks for the help!

P.S.: Oh, and I tried changing myrecipe.bb (swu) for another, simpler, =
less deep recipe which also has a do_deploy step and outputs a file in =
deploy dir. I do indeed get much less useless things added to myimage's =
recipe-sysroot, but I still get the other recipe's dependencies.=

