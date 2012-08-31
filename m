Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F92FE0044A
	for <poky@yoctoproject.org>; Thu, 30 Aug 2012 21:18:47 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so5011923pbb.35
	for <poky@yoctoproject.org>; Thu, 30 Aug 2012 21:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:cc:to:mime-version:x-mailer;
	bh=jewxXbdDMcIY9LWC/X75dfnqiDN9hL/kpV1qQGvdDC8=;
	b=ZSRw1P6XfAYLp8NjHqKnOTHz1Nf/Dy4sS+vQaiQjjKRxgRI4RjYmoIB55pRDlbFpSd
	IT5dFrtz2wxOquBtLyhEXk6QLxhmql1eHshlTWQ1h3DtQJ9SaGwMx//VLd1RQIn4e159
	x2fIj4d7TmOU1yK5rQjJ5zduVpW/GZVNca/agLHGX8Ucm2Q+1QqtnxkCuh1rFVyQvxNQ
	wqv+HnJuIyOCytXzP2G05z+Bzbp5ef7Gq33b9+lWLLHQ4nZK6zxc281wGL/o1KCvOws/
	b4dy9bdLZWom1GggUO3/8jidoGXj/nLRkYnnMT3E9X/VrceVvuapEbnTFjIRl2cR2C4u
	YvHA==
Received: by 10.68.221.225 with SMTP id qh1mr15386985pbc.50.1346386725030;
	Thu, 30 Aug 2012 21:18:45 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id b4sm2695706pbw.28.2012.08.30.21.18.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 30 Aug 2012 21:18:44 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 30 Aug 2012 21:18:44 -0700
Message-Id: <C593113E-E444-4463-BC0B-ED638A2963B0@gmail.com>
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1486\))
X-Mailer: Apple Mail (2.1486)
Subject: state broken
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
X-List-Received-Date: Fri, 31 Aug 2012 04:18:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello

I am getting following errors today

ERROR: Error executing a python function in =
/work/yocto/poky/meta/recipes-devtools/m4/m4-native_1.4.16.bb:
IOError: [Errno 2] No such file or directory: =
'/work/yocto/poky/build/tmp/sstate-control/master.list'

ERROR: The stack trace of python calls that resulted in this =
exception/failure was:
ERROR:   File "sstate_task_postfunc", line 10, in <module>
ERROR:=20
ERROR:   File "sstate_task_postfunc", line 4, in sstate_task_postfunc
ERROR:=20
ERROR:   File "sstate.bbclass", line 38, in sstate_install
ERROR:=20
ERROR: The code that was being executed was:
ERROR:      0006:        bb.build.exec_func(intercept, d)
ERROR:      0007:    sstate_package(shared_state, d)
ERROR:      0008:
ERROR:      0009:
ERROR:  *** 0010:sstate_task_postfunc(d)
ERROR:      0011:
ERROR: [=46rom file: 'sstate_task_postfunc', lineno: 10, function: =
<module>]
ERROR:      0001:
ERROR:      0002:def sstate_task_postfunc(d):
ERROR:      0003:    shared_state =3D sstate_state_fromvars(d)
ERROR:  *** 0004:    sstate_install(shared_state, d)
ERROR:      0005:    for intercept in shared_state['interceptfuncs']:
ERROR:      0006:        bb.build.exec_func(intercept, d)
ERROR:      0007:    sstate_package(shared_state, d)
ERROR:      0008:
ERROR: [=46rom file: 'sstate_task_postfunc', lineno: 4, function: =
sstate_task_postfunc]
ERROR:      0034:    # Check the file list for conflicts against the =
master manifest
ERROR:      0035:    mastermanifest =3D =
d.getVar("SSTATE_MASTERMANIFEST", True)
ERROR:      0036:    whitelist =3D d.getVar("SSTATE_DUPWHITELIST", True)
ERROR:      0037:    lock =3D bb.utils.lockfile(mastermanifest + =
".lock")
ERROR:  *** 0038:    fileslist =3D [line.strip() for line in =
open(mastermanifest)]
ERROR:      0039:    bb.utils.unlockfile(lock)
ERROR:      0040:    match =3D []
ERROR:      0041:    for f in sharedfiles:
ERROR:      0042:        if f in fileslist:
ERROR: [=46rom file: 'sstate.bbclass', lineno: 38, function: =
sstate_install]
ERROR: Function failed: sstate_task_postfunc
ERROR: Logfile of failure stored in: =
/work/yocto/poky/build/tmp/work/x86_64-linux/m4-native-1.4.16-r4/temp/log.=
do_populate_sysroot.5238
ERROR: Task 59 =
(/work/yocto/poky/meta/recipes-devtools/m4/m4-native_1.4.16.bb, =
do_populate_sysroot) failed with exit code '1'
NOTE: Tasks Summary: Attempted 39 tasks of which 35 didn't need to be =
rerun and 1 failed.

Summary: 1 task failed:
  /work/yocto/poky/meta/recipes-devtools/m4/m4-native_1.4.16.bb, =
do_populate_sysroot
Summary: There were 36 ERROR messages shown, returning a non-zero exit =
code.





I tracked it down to=20


commit 59260f952f8687ac67a17035307c6c0792728f1b
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Sat Aug 25 15:48:14 2012 +0000

    sstate.bbclass: Detect overwriting files in sstate controlled =
directories
   =20
    We have a potential problem where two sstate packages try and touch =
the same
    file. This adds code which will print a warning whenever this =
happens.
   =20
    The implementation does but by maintaining a master file list and =
comparing
    file accesses against this. There are a number of places we have =
duplicate
    accesses which are harmless, mostly in the deploy directory so these
    are whitelisted.
   =20
    For now the code prints warnings, this could be strengthened in =
future to
    become error messages. Whilst working on this code on and off over =
the past
    few months various issues were uncovered, some serious.
   =20
    [YOCTO #238]
   =20
    (=46rom OE-Core rev: 1f1b6f93d6b7aa8c9bd9bb5b1826997812e36932)
   =20
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>


Anyone else seeing it ?

-Khem=

