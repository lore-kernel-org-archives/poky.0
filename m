Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA4364C80048
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:45:04 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id D02F512EC117
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 11:23:39 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE9404FAD617@orsmsx504.amr.corp.intel.com>
References: <20101205125755.1B42C351@gemini.denx.de>
	<20101211104711.GB10409@gmail.com>
	<9DA5872FEF993D41B7173F58FCF6BE9404FAD617@orsmsx504.amr.corp.intel.com>
Date: Wed, 15 Dec 2010 16:44:55 +0000
Message-ID: <1292431496.18631.2.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: elfutils build fails on Fedroa 14
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
X-List-Received-Date: Wed, 15 Dec 2010 16:45:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-15 at 08:26 -0800, Kamble, Nitin A wrote:
> > 
> > On (05/12/10 13:57), Wolfgang Denk wrote:
> > > Trying to build on a Fedora 14 box, elfutis fails with this error:
> > >
> > > ...
> > > | make[2]: Entering directory `/opt/poky/build-laverne-4.0-
> > kilauea/tmp/work/x86_64-linux/elfutils-native-0.148-r1/elfutils-
> > 0.148/src'
> > > ...
> > > | ccache gcc -std=gnu99 -Wall -Wshadow -Werror -Wunused -Wextra -
> > fgnu89-inline -Wformat=2   -isystem/opt/poky/build-laverne-4.0-
> > kilauea/tmp/sysroots/x86_64-linux/usr/include -O2 -Wl,-rpath-
> > link,../libelf:../libdw -L/opt/poky/build-laverne-4.0-
> > kilauea/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-
> > link,/opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-
> > linux/usr/lib -Wl,-rpath,/opt/poky/build-laverne-4.0-
> > kilauea/tmp/sysroots/x86_64-linux/usr/lib -Wl,-O1 -o objdump objdump.o
> > ../libasm/libasm.so ../libebl/libebl.a ../libelf/libelf.so
> > ../lib/libeu.a  -ldl
> > > | ./ld: unrecognized option '--no-add-needed'
> > > | Try `ld --help' or `ld --usage' for more information.
> > > | collect2: ld returned 64 exit status
> > > | make[2]: *** [addr2line] Error 1
> > > | make[2]: *** Waiting for unfinished jobs....
> > > | ./ld: unrecognized option '--no-add-needed'
> > > | Try `ld --help' or `ld --usage' for more information.
> > > | collect2: ld returned 64 exit status
> > > | make[2]: *** [elfcmp] Error 1
> > > | ./ld: unrecognized option '--no-add-needed'
> > > | Try `ld --help' or `ld --usage' for more information.
> > > | collect2: ld returned 64 exit status
> > >
> > > In Fedora 14, the following command gets generated:
> > >
> > > /usr/libexec/gcc/x86_64-redhat-linux/4.5.1/collect2 --build-id --no-
> > add-needed --eh-frame-hdr -m elf_x86_64 --hash-style=gnu -dynamic-
> > linker /lib64/ld-linux-x86-64.so.2 -o objdump /usr/lib/gcc/x86_64-
> > redhat-linux/4.5.1/../../../../lib64/crt1.o /usr/lib/gcc/x86_64-redhat-
> > linux/4.5.1/../../../../lib64/crti.o /usr/lib/gcc/x86_64-redhat-
> > linux/4.5.1/crtbegin.o -L/opt/poky/build-laverne-4.0-
> > kilauea/tmp/sysroots/x86_64-linux/usr/lib -L/usr/lib/gcc/x86_64-redhat-
> > linux/4.5.1 -L/usr/lib/gcc/x86_64-redhat-linux/4.5.1/../../../../lib64
> > -L/lib/../lib64 -L/usr/lib/../lib64 -L/usr/lib/gcc/x86_64-redhat-
> > linux/4.5.1/../../.. --add-needed -rpath-link ../libelf:../libdw -
> > rpath-link /opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-
> > linux/usr/lib -rpath /opt/poky/build-laverne-4.0-
> > kilauea/tmp/sysroots/x86_64-linux/usr/lib -O1 objdump.o
> > ../libasm/libasm.so ../libebl/libebl.a ../libelf/libelf.so
> > ../lib/libeu.a -ldl -lgcc --as-needed -lgcc_s --no-as-needed -lc -lgcc
> > --as-needed -lgcc_s --no-
> >  as
> > >  -needed /usr/lib/gcc/x86_64-redhat-linux/4.5.1/crtend.o
> > /usr/lib/gcc/x86_64-redhat-linux/4.5.1/../../../../lib64/crtn.o
> > > ./ld: unrecognized option '--no-add-needed'
> > > Try `ld --help' or `ld --usage' for more information.
> > > collect2: ld returned 64 exit status
> > >
> > > Unfortunately the "ld" command in elfutils-0.148 does not understand
> > > the '--no-add-needed'; I've tried to find any existing fixes for
> > > this, but what I found just added a "-Xlinker --add-needed" to the
> > > command line, which does not help here since ./ld understands neither
> > > '--no-add-needed' nor '--add-needed'.
> > >
> > > Any ideas?
> > 
> > I think we really dont need the tools part only libelf is needed so one
> > way
> > is to not build everything but just do targetted make targets and avoid
> > building tools as its happening
> > 
> > secondly you could try to add --program-prefix="elfutils-" or somesuch
> > then the linker from elfutils will be called elfutils-ld but I dont
> > know if
> > it will work because renaming happens during the install phase you have
> > to try it out.
> > 
> > -Khem
> 
> Has anybody else seeing this failure? I am building on the fedora 14
> x86_64, with latest master and I do not see this issue.
> 
> Wolfgang, Are you using any different layer or machine with this failure ?

I suspect this is an issue whereby an unsupported MACHINE has been added
and something has caused the linker to become subtly broken. This may
well be a BSP documentation issue - I'm expecting that this may all stem
from some missing COMPATIBLE_MACHINE declaration resulting in an
unsupported mixture of components being used.

I'm hoping to get time to step through this issue and reproduce. Unless
someone else would like to volunteer? ;-)

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


