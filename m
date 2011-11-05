Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93B36E00307
	for <poky@pokylinux.org>; Fri,  4 Nov 2011 23:34:46 -0700 (PDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1RMZpw-0005P2-Bs
	for poky@pokylinux.org; Sat, 05 Nov 2011 07:34:40 +0100
Received: from ppp089210140055.dsl.hol.gr ([89.210.140.55])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 05 Nov 2011 07:34:40 +0100
Received: from gmane by ppp089210140055.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 05 Nov 2011 07:34:40 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 05 Nov 2011 08:34:24 +0200
Organization: Reliable Embedded Systems
Message-ID: <j92ldh$6tg$1@dough.gmane.org>
References: <j9172o$j0s$1@dough.gmane.org>
	<CADkTA4N=My0k31D2moYzK6gi70r2B9hL_-Bqw5T320pLqGGZ1g@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210140055.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <CADkTA4N=My0k31D2moYzK6gi70r2B9hL_-Bqw5T320pLqGGZ1g@mail.gmail.com>
Subject: Re: workflow - kernel config
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 05 Nov 2011 06:34:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Bruce,

On 11/04/2011 09:15 PM, Bruce Ashfield wrote:
> 
> This is one flow that will work to make changes to the default kernel, and
> test them on a board. I use something like:
> 
>  bitbake -f -c configure linux-yocto
>  bitbake -f -c menuconfig
>  bitbake -c linux-yocto
> 
> after I've done an initial build/configure phase if I'm updating options.
> But that's likely not the most efficient workflow either (I've got liberal
> use of -f in there, since I'm a bit paranoid).
> 

This does not seem to work either - menuconfig is not being invoked:

rber@yocto-1:~/projects/yocto/yocto_for_trainer/sandbox_work$
./03.05-configure-build-poky-kernel.sh

### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
    core-image-minimal
    core-image-sato
    meta-toolchain
    meta-toolchain-sdk
    adt-installer
    meta-ide-support

You can also run generated qemu images with a command like 'runqemu qemux86'

----->
make sure INHERIT += "rm_work" is commented out
kernel fiddling will not work with it
press <ENTER> to go on
<-----

Loading cache: 100%
|########################################################################################|
ETA:  00:00:00
Loaded 1036 entries from dependency cache.

OE Build Configuration:
BB_VERSION        = "1.13.3"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.1"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        =
"edison-6.0_LOCAL:1924f52cc894d4dd6b9d9c1a2248b32fc0a24c8c"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 299 of 299 (ID: 6,
/work/rber/poky/meta/recipes-kernel/linux/linux-yocto_2.6.37.bb,
do_configure)
NOTE: package
linux-yocto-2.6.37+git1+aeea99683c7283f1f3320bf2ee7085ee252d4e7e_1+3ddb22772862a8223640fa97580569924f51bddc-r21:
task do_configure: Started
NOTE: package
linux-yocto-2.6.37+git1+aeea99683c7283f1f3320bf2ee7085ee252d4e7e_1+3ddb22772862a8223640fa97580569924f51bddc-r21:
task do_configure: Succeeded
NOTE: Tasks Summary: Attempted 299 tasks of which 298 didn't need to be
rerun and 0 failed.
Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake
--help' for usage information.
Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake
--help' for usage information.
rber@yocto-1:~/projects/yocto/yocto_for_trainer/sandbox_work$


Regards,

Robert..."The wonderful thing about standards is that there are so many
of them to choose from." - (Amazing) Grace Murray Hopper, as quoted in
the Unix Haters Handbook, p.10

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



