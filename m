Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4623BE004D2
	for <poky@yoctoproject.org>; Fri, 30 Mar 2012 09:50:40 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id AD64DF8126F; Fri, 30 Mar 2012 10:50:39 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2FD29F81237;
	Fri, 30 Mar 2012 10:50:30 -0600 (MDT)
Message-ID: <4F75E456.3020101@mlbassoc.com>
Date: Fri, 30 Mar 2012 10:50:30 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <CAJKYVfs6tUMF5=PdzbBTb5=ifbsWXBQLGJOgFM7f-2MGAQYZag@mail.gmail.com>
	<CAMKF1sp9_JeZxVay3UATzNBKe8_QDrfcSgH-EcV1abNxEp2xGA@mail.gmail.com>
	<CAJKYVfv_mQstkE4OPUzpDkGKihJ=j-Fu5QmdgYO2-F7q73JPyA@mail.gmail.com>
In-Reply-To: <CAJKYVfv_mQstkE4OPUzpDkGKihJ=j-Fu5QmdgYO2-F7q73JPyA@mail.gmail.com>
Subject: Re: Problem building MIPS image (core-image-minimal)
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
X-List-Received-Date: Fri, 30 Mar 2012 16:50:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-30 09:17, Zhouheng Zhuang wrote:
> I used package_rpm instead and it worked. Thanks.
> I am wondering why package_rpm works, but package_deb doesn't. Can you explain what happens here? Thanks.

Looks like package_deb is broken all around - check out https://bugzilla.yoctoproject.org/show_bug.cgi?id=1858
package_ipk (what I use all the time) and package_rpm work fine

> On Fri, Mar 30, 2012 at 2:22 AM, Khem Raj <raj.khem@gmail.com <mailto:raj.khem@gmail.com>> wrote:
>
>     On Thu, Mar 29, 2012 at 1:51 PM, Zhouheng Zhuang <zz245@cornell.edu <mailto:zz245@cornell.edu>> wrote:
>     >  Hi all,
>     >  I am a student, and I just started using Yocto Project, and tried to build a
>     >  MIPS image (core-image-minimal) myself, but failed. Can anyone help me on
>     >  this issue?
>     >
>     >  I downloaded Yocto 1.1. After
>     >  % source oe-init-build-env
>     >  I set configurations in ./build/conf/local.conf with (the file is attached)
>     >  ------
>     >  BB_NUMBER_THREADS = "4"
>     >  PARALLEL_MAKE = "-j 3"
>     >  MACHINE ??= "qemumips"
>     >  DISTRO ?= "poky"
>     >  PACKAGE_CLASSES = "package_deb"
>
>     what happens when you use package_ipk or package_rpm and rebuild?
>     just want to make sure if its related to package backend
>
>     >  EXTRA_IMAGE_FEATURES = "debug-tweaks"
>     >  USER_CLASSES ?= "image-mklibs image-prelink"
>     >  PATCHRESOLVE = "noop"
>     >  CONF_VERSION = "1"
>     >  INHERIT += rm_work
>     >  ------
>     >
>     >  Then, I ran
>     >  % bitbake -k core-image-minimal
>     >  and got errors:
>     >  ------
>     >  Errors were encountered while processing:
>     >   /home/zhouheng/poky/build/tmp/deploy/deb/mips/./base-passwd_3.5.22-r9_mips.deb
>     >  W: Ignoring Provides line with DepCompareOp for package rtld
>     >  W: You may want to run apt-get update to correct these problems
>     >  E: Sub-process dpkg returned an error code (1)
>     >  ERROR: Function 'do_rootfs' failed (see
>     >  /home/zhouheng/poky/build/tmp/work/qemumips-poky-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.2097
>     >  for further information)
>     >  -------
>     >  I have attached the errorlog with the email, too.
>     >  I have tried searching the error, but I haven't figured out why it happens.
>     >  Can anyone answer my questions?
>     >  I would appreciate it very much if anyone can share their configuration to
>     >  successfully build the image.
>     >  Thank you very much!
>     >
>     >  Zhouheng (Philip) Zhuang
>     >
>     >
>     >
>     >
>     >  _______________________________________________
>     >  poky mailing list
>     >  poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>     >  https://lists.yoctoproject.org/listinfo/poky
>     >
>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

