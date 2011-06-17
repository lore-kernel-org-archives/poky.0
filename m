Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7FFE44C800C0
	for <poky@yoctoproject.org>; Fri, 17 Jun 2011 10:46:49 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5HFkiCJ021384
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 17 Jun 2011 08:46:44 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 17 Jun 2011 08:46:43 -0700
Message-ID: <4DFB76E3.5090606@windriver.com>
Date: Fri, 17 Jun 2011 10:46:43 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: Kang Kai <Kai.Kang@windriver.com>
References: <4DF0A70C.7080501@windriver.com> <4DF0E4A8.1000608@windriver.com>
	<4DFB26CE.7070807@windriver.com>
In-Reply-To: <4DFB26CE.7070807@windriver.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: Question about apply eglibc configurability to create minimal image
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
X-List-Received-Date: Fri, 17 Jun 2011 15:46:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On 6/17/11 5:05 AM, Kang Kai wrote:
> On 2011年06月09日 23:20, Mark Hatle wrote:
>> On 6/9/11 5:57 AM, Kang Kai wrote:
>>> Hi Mark,
>>>
>>> I am focus on eglibc itself compilation with disabling all the 
>>> configurable options, right now eglibc can be compiled with disable all 
>>> the configurable options.
>>>
>>> But when I build core-image-minimal in a clear new directory, some 
>>> packages build failed and they need eglibc supports, such as
>> core-image-minimal is simply to large of an image to see some of the advantages
>> of the eglibc configuration.  Realistically the advantages come on single
>> application or small (busybox + single application) systems.
>>
>>> gcc-runtime    depends on     libc-libm
>> The above looks like a bug to me and should be investigated.. (a bug in gcc that
>> is..)
>>
>>> ncurse            depends on    libc-posix-wchar-io libc-posix-clang-wchar
>> ncurses can be configured WITHOUT wide character support, the needs to be done
>> with any of the wchar options disabled in eglibc.
>>
>>> openssl           depends on    libc-inet libc-nsswitch
>> I'm not sure why openssl needs either inet or nsswitch.  inet perhaps if it
>> tries to make certain socket calls, but libc-nsswitch should never be required
>> outside of eglibc.  This is likely a configuration issue in openssl -- or a bug
>> in eglibc.
>>
>>> gettext            depends on    libc-spawn libc-locale-code 
>>> libc-getlogin libc-utmp
>>> ...
>> Once we introduce gettext (beyond simply it's m4 macros) we're no longer in
>> "small" system territory.  gettext and many others really want some of the
>> larger system capabilities as they are designed for multilingual systems.
>>
>>> After enable those options, the image size only decrease from 9.6M  to 
>>> 9.4M(qemux86). And the dependencies on eglibc is hard to break, 
>>> something like  libcrypt getlogin(function) can't be breaken.
>>> Could you give me some directions what should I do with eglibc 
>>> configurability?
>> My suggest is to start with a new custom configuration.  (ignore the gcc-runtime
>> for right now and enable libm.)  The goal of this configuration is a small,
>> local system -- without network connectivity.
>>
>> Walk through the core-image-minimal, and you'll see:
>> IMAGE_INSTALL = "task-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP}"
>>
>> Looking at task-core-boot:
>>
>> RDEPENDS_task-core-boot = "\
>>     base-files \
>>     base-passwd \
>>     busybox \
>>     initscripts \
>>     ${@base_contains("MACHINE_FEATURES", "keyboard", "keymaps", "", d)} \
>>     modutils-initscripts \
>>     netbase \
>>     sysvinit \
>>     tinylogin \
>>     udev \
>>     ${VIRTUAL-RUNTIME_update-alternatives} \
>>     ${MACHINE_ESSENTIAL_EXTRA_RDEPENDS}"
>>
>> RRECOMMENDS_task-core-boot = "\
>>     ${MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS}"
>>
>> From the above, I'm pretty sure that "netbase" will require a lot of networking
>> components, specifically adding things like libc-inet.  So avoid netbase.
>>
>> It's possible that keyboard/keymaps may cause additional stuff to come in due to
>> locale requirements.. so I'd dump those as well..
>>
>> sysvinit may also introduce some additional items -- so if it causes problems,
>> remove it and switch to the init located within busybox.
>>
>> update-alternatives is what included gettext -- so this might need some
>> enhancement to avoid gettext as a requirement.  So I'd suggest skipping it.
>> (Note without it, it's likely busybox, tinylogin may not get setup properly...)
>>
>> udev is quite complex and drags in a number of components -- so drop that..
>>
>> Leaving:
>>
>>     base-files \
>>     base-passwd \
>>     busybox \
>>     initscripts \
>>     modutils-initscripts \
>>     sysvinit \
>>     tinylogin
> 
> Hi Mark,
> 
> According this list, expand with their run time depency(show in the attachment
> minimal-image-runtime-dependies.png) , and the list is:
> 
>     base-files \
>     base-passwd \
>     busybox \
>     busybox-syslog \
>     busybox-udhcpc \
>     initscripts \
>     makedevs \
>     modutils-initscripts \
>     sysvinit \
>     sysvinit-pidof \
>     sysvinit-inittab \
>     tinylogin
> 
> 
> When only enable eglibc libm, busybox, sysvinit and tinylogin can't be compiled.
> 
> busybox depends on
> 
>     * libc-crypt
>     * libc-getlogin
>     * libc-inet
>     * libc-posix-regexp
> 
> I wonder that maybe libc-crypt can NOT be disabled?  Other 3 options can be
> disabled by closing some busybox feature and builtin commands.

I would guess that there are options within busybox that are enabled that make
use of each of these.  Do you get a failure in compilation, configuration, or?
You will likely have to shrink busybox down to a shell and a few simple
commands, instead of the normal config.

> sysvinit depends on
> 
>     * libc-inet
>     * libc-sunrpc
>     * libc-crypt
> 
> I don't how to resolve them, so as you said, remove it and use busybox init instead.

Ya, busybox init should use fewer items.  If busybox init can't be used, then
simply using the busybox shell as the init will likely work for a truly minimal
system.

> tinylogin depends on 
> 
>     * libc-crypt
>     * libc-utmp
>     * libc-getlogin
> 
> I am trapped here, and could you give me some more help here, please?

Ok, that makes sense.  Guess you need to remove tinylogin as well.  Since simply
offering login services would require those three items.

> The picture named eglibc-options-deps-for-minimal-image.png in attachment is the
> packages depends on every eglibc option that required by other packages.
> 
> There are some other dependencies cause problems.
> linux-yocto requires elfutils python and perl.

We need to figure out why linux-yocto requires these items.  (I suspect it's for
perf or similar.  If thats the case, then this is likely a bug.  Perf should
have to be built for each kernel, if the required capabilities don't exist.)

> elfutils requires gettext and gettext depends on:
> 
>     * libc-locale-code
>     * libc-spawn
>     * libc-getlogin

I think we have to assume that elfutils is not needed.  It's better to break
that dependency instead of trying to fix it.

> python requires ncurses and openssl.
> 
>     * ncurses could be update bb file to choose support wchar or not.
>     * openssl depends on:
>           o libc-inet
>           o libc-nsswitch

I really wonder if there is something inside of openssl we can disable -- or if
there is a switch to python that disables SSL support...  It might be worth
investigating changing the python configuration.

> perl depends on:
> 
>     * libc-crypt
>     * libc-fcvt
>     * libc-inet
>     * libc-utmp

Similarly it might be worth investigating in perl if we can disable the users of
these functions in a similar way.

> How to remove these dependencies?  One way is to remove the "elfutils python
> perl" from linux-yocto depencies, and the other is to disable related features
> of these packages, and I wonder this is too hard to finish.

I'd suggest, for now, simply to remove the elfutils, python and perl
dependencies from the linux-yocto to continue.

The goal of this exercise is simply to see how small of a eglibc system can be
produced that will boot.  Then figure out how to scale up from there.  (I assume
once we get beyond a few basic apps that we will need much of eglibc!)

Based on your research above, I would suggest:

* File a bug on the linux-yocto requiring elfutils, python and perl

* Get rid of sysvinit and tinylogin.

* Figure out if you can change the selections on busybox to still build
something with a shell, but very little additional functionality with the
minimal eglibc configuration.

* Assuming that's possible... start adding in the additional functionality,
crypt, inet, getlogin, utmp and get back to that standard busybox configuration
and tinylogin.

This should give us a good size comparison between.  Non-internet connected,
minimal system..  and something that could be connected to the internet.

(Note, I don't think anyone will really build such a minimal system in the
real-world.  However the size and configuration information could be useful for
someone trying to squeeze this into a small system.  It might turn out that
uClibc is still more practical for such systems.)

--Mark

> Thanks a lot.
> 
> Regards,
> Kai
> 
> 
> 
> 
> 
>> First see if you can compile the above with a minimal eglibc configuration.  If
>> not I can help you work through those issues..  If you can, you SHOULD see a
>> fairly dramatic decrease in size.
>>
>> --Mark
>>
>>> Thanks a lot!
>>>
>>> I made a mistake that try eglibc configurability in a directory which 
>>> has build core-image-minimal, so the packages which depend on eglibc 
>>> didn't rebuild, and I didn't find the dependency before. I am sorry!
>>>
>>> Regards,
>>> Kai
> 


