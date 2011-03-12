Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E42074C80050
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 22:31:50 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Mar 2011 20:31:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,307,1297065600"; d="scan'208";a="896489659"
Received: from unknown (HELO [10.255.12.198]) ([10.255.12.198])
	by fmsmga001.fm.intel.com with ESMTP; 11 Mar 2011 20:31:50 -0800
Message-ID: <4D7AF731.30508@linux.intel.com>
Date: Fri, 11 Mar 2011 20:31:45 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: MACHINE_EXTRA_RRECOMMENDS not working?
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
X-List-Received-Date: Sat, 12 Mar 2011 04:31:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I'm working to get a certain package installed for a specific machine.
In particular, I wrote a simple init.d script called n450-audio which
sets the mixer for the n450 dev board to unmute the FRONT channel and
set the volume to 70% or so - as it is muted if left untouched. For now,
I just want to make this board work, so I want to make this package get
installed if it's dependencies are met (if amixer is installed).

As I understand it, the best way to do this is with something like the
following in the machine/n450.conf file:

MACHINE_EXTRA_RRECOMMENDS += " n450-audio "

And that recipe in turn defines:

RDEPENDS = "alsa-utils-amixer"

I then:

$ bitbake -c cleanall task-base poky-image-sato-live n450-audio

followed by:

$ bitbake poky-image-sato-live

The n450-audio recipe is built, but it does not appear in the generated
image (nor in the ext3 image).

I checked the dependency chain and task-base does depend on n450-audio:

$ bitbake -g -u depexp poky-image-sato-live


I then tried using the following variables in place of
MACHINE_EXTRA_RRECOMMENDS with the same result:

MACHINE_EXTRA_RDEPENDS
MACHINE_ESSENTIAL_RRECOMMENDS
MACHINE_ESSENTIAL_RDEPENDS

Finally, I added the following to my local.conf and the image built as
expected:

POKY_EXTRA_INSTALL = " n450-audio "

Am I completely off in the weeds here? If this isn't what these
directives are for - what are they for?

I took a look at what they are used for elsewhere and found:

$ cat ~/.bashrc | grep bb
    alias bb='bitbake'
    alias bbdeps='bitbake -g -u depexp'
dvhart@rage:poky.git$ git grep MACHINE_EXTRA_RRECOMMENDS
documentation/poky-ref-manual/ref-variables.xml:         <glossentry id='var-MACHINE_EXTRA_RRECOMMENDS'><glossterm>MACHINE_
documentation/poky-ref-manual/ref-varlocality.xml:                <para><glossterm linkend='var-MACHINE_EXTRA_RRECOMMENDS'>
meta/conf/bitbake.conf:MACHINE_EXTRA_RRECOMMENDS ?= ""
meta/conf/machine/atom-pc.conf:MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
meta/conf/machine/beagleboard.conf:MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
meta/conf/machine/qemumips.conf:MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
meta/conf/machine/routerstationpro.conf:MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
meta/recipes-core/tasks/task-base.bb:RRECOMMENDS_task-machine-base = "${MACHINE_EXTRA_RRECOMMENDS}"

Only two other recipes are referenced with these variables:
kernel-modules and eee-acpi-scripts. I had an atom-pc build so I mounted
the rootfs and dug around - not a trace of the eee-acpi-scripts to found
anywhere. I checked for modules under
/lib/modules/2.6.34.7-yocto-standard/ and found several *.*map files,
but nothing else (certainly no *.ko files). So this mechanism certainly
doesn't do what I thought it did.

Is it supposed to? If not, what does it do. It does cause the package
listed to be built, perhaps that is it's only purpose? The user can
install the package manually if they want it?

And, more to the point, if this isn't the right mechanism to cause a
package to be added (if deps are met) to any image for a specific
machine, what is?

If you want to see the branch in question, it's here:
http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/log/?h=dvhart/n450-audio

(Yes, the init script is terrible - working on that.)

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

