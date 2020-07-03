Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.7320.1593770733672168075
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Jul 2020 03:05:34 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49yrF62Zfyz5tlF;
	Fri,  3 Jul 2020 12:05:30 +0200 (CEST)
Date: Fri, 3 Jul 2020 12:05:29 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
Cc: poky@lists.yoctoproject.org, bruce.ashfield@gmail.com
Subject: Re: [poky] [RFC PATCH 2/2] Example for ext kernel module dependency, slave module
Message-ID: <20200703100528.zfeqh44jlcoolmlu@qschulz>
References: <cover.1593601516.git.hubert.chaumette@kolabnow.com>
 <91719a84eeb95599fbf1e9f4cb693efca5527a9f.1593601521.git.hubert.chaumette@kolabnow.com>
 <20200701145837.7stpc5ngqg7sn27d@qschulz>
 <d9cc84340a14589bff4bfbe8a588a096@kolabnow.com>
MIME-Version: 1.0
In-Reply-To: <d9cc84340a14589bff4bfbe8a588a096@kolabnow.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Hubert,

On Fri, Jul 03, 2020 at 11:39:54AM +0200, Hubert CHAUMETTE wrote:
[...]
> > > +# $src is a Kbuild variable. Using $SRC doesn't work.
> > > +ccflags-y :=
> > > -I$(src)/recipe-sysroot/usr/include/kernel-module-master/
> > > +
> > 
> > This makes your Makefile (hence kernel-module) bound to Yocto which is
> > probably not a real life example (and it is highly suggested to never
> > hardcode CFLAGS, CXXFLAGS, LDFLAGS, CC, etc... in
> > Makefile/CMakeLists/you name it because it is a source of problems we
> > could have avoided in the first place).
> 
> I've used something similar on a yocto-only project, so it is actually
> a real example, but good point on keeping it independent.
> 
> > Better have a TARGET_CFLAGS +=
> > "-I${STAGING_INCDIR}/kernel-module-master"
> 
> I didn't manage to make it work.
> 

Well, stupid me thought CFLAGS were used for the kernel modules but they
aren't :)

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/module.bbclass#n38

Not tested but EXTRA_OEMAKE += "EXTRA_CFLAGS=-I${STAGING_INCDIR}/kernel-module-master"
could be an option. Or KBUILD_CFLAGS? (c.f.
https://www.kernel.org/doc/html/v5.4/kbuild/makefiles.html#compilation-flags)

Is that proper? /me shrugs
Eager to see what's the proper way.

> > Also technically, if your "master" is always installing the header in
> > <includedir>/kernel-module-master, maybe it'd actually be better to fix
> > the original code and use #include <kernel-module-master/master.h> ?
> 
> I use a subdirectory to keep the a kernel header separated from
> userspace includes.
> Also, removing kernel-module-master/ doesn't work: kernel modules
> don't see the userspace inludedir by default.

I meant to keep the path in the includedir (so
<includedir>/kernel-module-master), pass <includedir> in CFLAGS somehow
and from the kernel driver source code, include <kernel-module-master/master.h>

> Using STAGING_KERNEL_DIR allows to skip the CFLAGS dance but doesn't
> seem right either (using a third party staging directory seems to
> be asking for trouble) and I had issues with it (as discussed with
> Bruce Ashfield earlier).
> I'd be happy to know what is the correct way to do it.
> 

Listen to Bruce, he's definitely much more experience than me on this.

> > Overall, I'm not sure to understand what this has to do with
> > kernel modules and if this is really an example worthy to be in
> > meta-skeleton?
> > 
> > It's basically an example for using DEPENDS and an include file, from
> > this recipe, which is at the "wrong" (read not directly in /usr/include)
> > location from another recipe.
> 
> As said above, kernel modules don't follow the usual rules and would
> benefit IMO from a standardized example.
> 

I was ignorant of the CFLAGS dance required for it so yes, it seems like
a good addition to the examples :)

[...]
> > Also, do those examples **really** need to be named slave/master? I mean
> > they're just exchanging data whose format has been defined into one
> > kernel module.
> 
> The naming is to emphasize the dependency relationship, the implementation
> is irrelevant. Would you prefer Paul's notifier/receiver?
> 

Fine :)

> > > diff --git
> > > a/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave.bb
> > > b/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave.bb
> > > new file mode 100644
> > > index 0000000000..280fa815f3
> > > --- /dev/null
> > > +++
> > > b/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave.bb
> > > @@ -0,0 +1,17 @@
> > > +SUMMARY = "External kernel module dependency exemple - slave module"
> > > +LICENSE = "GPLv2"
> > > +LIC_FILES_CHKSUM =
> > > "file://COPYING;md5=1c5a04927650c42822bb4b1de4641658"
> > 
> > Technically, you could use COMMON_LIC_DIR instead of providing a COPYING
> > file.
> 
> I didn't know about that, but doesn't it defeat the point of having a
> checksum to detect licensing changes?
> 

Kinda. Now that I'm thinking about it, another solution is to pass the
part of the kernel driver where the SPDX license appears with
beginline/endline in LIC_FILES_CHKSUM.

No strong feelings about this, I just found it sad to add a file just
for the license.

Thanks for the patch and your explanations, learned a few more things
today :)

Regards,
Quentin
