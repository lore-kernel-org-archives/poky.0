Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C31444C800A6
	for <poky@yoctoproject.org>; Fri,  3 Jun 2011 11:35:10 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p53GZAYk020244
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 3 Jun 2011 09:35:10 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 3 Jun 2011 09:35:09 -0700
Message-ID: <4DE90D3C.2080708@windriver.com>
Date: Fri, 3 Jun 2011 11:35:08 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4DE79F0A.5080104@mlbassoc.com> <1307035303.27470.584.camel@rex>
	<4DE90AFF.5090801@mlbassoc.com>
In-Reply-To: <4DE90AFF.5090801@mlbassoc.com>
Subject: Re: Problem with gettext-native
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
X-List-Received-Date: Fri, 03 Jun 2011 16:35:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 6/3/11 11:25 AM, Gary Thomas wrote:
> On 06/02/2011 11:21 AM, Richard Purdie wrote:
>> On Thu, 2011-06-02 at 08:32 -0600, Gary Thomas wrote:
>>> I had a working build based on
>>>     commit 52295fa3deef3b0374b99829626d524cefae6001
>>>     Author: Richard Purdie<richard.purdie@linuxfoundation.org>
>>>     Date:   Wed May 18 00:03:02 2011 +0100
>>>
>>>       Improve handling of 'all' architecture recipes and their interaction with sstate
>>>
>>> Today, I updated to
>>>     commit 484c4e73245c93a08413cd204513bf5c5698b994
>>>     Author: Saul Wold<sgw@linux.intel.com>
>>>     Date:   Tue May 31 22:42:49 2011 -0700
>>>
>>>       clutter-1.6: Add patch to update gettext macro version
>>>
>>> Now, it tries to build gettext-native and fails with the log at
>>>     http://www.mlbassoc.com/poky/gettext-native-log.do_compile
>>> I don't see what's happening here.  If I try an identical
>>> build (same local.conf, etc) in a new tree, it succeeds.
>>>
>>> I notice that my old build has git-native built and installed (which based
>>> on the log is being used?), but the build from scratch does not.
>>>
>>> Any ideas?
>>
>> It looks like gettext now has a dependency on git being present. We need
>> to add git-native to its DEPENDS, crazy as that may be :/
>>
>> For a while I thought cvs was required too but it turns out its not,
>> thankfully.
>>
>> I'm testing a patch which I'll push shortly.
> 
> Sadly, this still fails for me, but only when I'm using SSTATE_MIRRORS
> from a build of a few days ago.  If I don't use the SSTATE_MIRRORS, it
> builds fine.
> 
> Once I get into this state, I can't even clean my way out of this :-(
> 
>    $ bitbake gettext-native -c clean
>    Pseudo is not present but is required, building this first before the main build
>    NOTE: Out of date cache found, rebuilding...
>    Parsing recipes: 100% |##################################################################################| Time: 00:00:21
>    Parsing of 994 .bb files complete (0 cached, 994 parsed). 1227 targets, 37 skipped, 0 masked, 0 errors.
> 
>    OE Build Configuration:
>    BB_VERSION        = "1.11.0"
>    METADATA_BRANCH   = "my_master"
>    METADATA_REVISION = "6b5d323b6c8960a0999dbafa0422fe127fd0fa97"
>    TARGET_ARCH       = "arm"
>    TARGET_OS         = "linux-gnueabi"
>    MACHINE           = "cobra3530p60"
>    DISTRO            = "amltd"
>    DISTRO_VERSION    = "1.00+snapshot-20110603"
>    TARGET_FPU        = "soft"
> 
>    NOTE: Resolving any missing task queue dependencies
>    NOTE: Preparing runqueue
>    NOTE: Executing SetScene Tasks
>    NOTE: Executing RunQueue Tasks
>    NOTE: Running task 121 of 133 (ID: 62, virtual:native:/home/local/poky-amltd/meta/recipes-core/gettext/gettext_0.18.1.1.bb, do_compile)
>    NOTE: package gettext-native-0.18.1.1-r0: task do_compile: Started
>    ERROR: 'virtual:native:/home/local/poky-amltd/meta/recipes-core/gettext/gettext_0.18.1.1.bb' failed
>    ERROR: Logfile of failure stored in: /home/local/p60_build2/tmp/work/i686-linux/gettext-native-0.18.1.1-r0/temp/log.do_compile.20106
> 
> Why is it running the do_compile step, when I explicitly asked for do_clean?

The build is two step, your command are for "step 2", the failure is in "step
1".. (step 1 tries to build pseudo-native...)

In order to manually run this, you will need to do:

BBFETCH2=True PSEUDO_BUILD=1 ../bitbake/bin/bitbake <target>

Annoying, and I'd like a cleaner way to do this myself....

--Mark

> Looking closer, it seems that the git-native I built yesterday (which is what I was using for SSTATE_MIRRORS)
> doesn't work correctly.  One built today, on the exact same host (no changes), etc, does.  Very strange.
> 
> Here's yesterday's build:
>    $ ls -l /local/p60_test_orig/sstate-cache/sstate-git-native*
>    -rw-rw-r-- 1 gthomas gthomas    7470 Jun  2 03:37 /local/p60_test_orig/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-4a5372ef2d6e43d9bb5a98258b332ab9_populate-lic.tgz
>    -rw-rw-r-- 1 gthomas gthomas    6921 Jun  2 03:37 
> /local/p60_test_orig/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-4a5372ef2d6e43d9bb5a98258b332ab9_populate-lic.tgz.siginfo
>    -rw-rw-r-- 1 gthomas gthomas 4483022 Jun  2 03:25 
> /local/p60_test_orig/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-da709c00f8a7f7abbc7c8fff28802d70_populate-sysroot.tgz
>    -rw-rw-r-- 1 gthomas gthomas   12279 Jun  2 03:25 
> /local/p60_test_orig/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-da709c00f8a7f7abbc7c8fff28802d70_populate-sysroot.tgz.siginfo
>    $ /local/p60_test_orig/tmp/sysroots/i686-linux/usr/bin/git repack
>    git: 'repack' is not a git command. See 'git --help'.
> 
> Here's today's:
>    $ ls -l /local/p60_build/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-*
>    -rw-rw-r-- 1 gthomas gthomas    7472 Jun  3 05:11 /local/p60_build/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-4a5372ef2d6e43d9bb5a98258b332ab9_populate-lic.tgz
>    -rw-rw-r-- 1 gthomas gthomas    6921 Jun  3 05:11 
> /local/p60_build/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-4a5372ef2d6e43d9bb5a98258b332ab9_populate-lic.tgz.siginfo
>    -rw-rw-r-- 1 gthomas gthomas 4482605 Jun  3 04:37 /local/p60_build/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-da709c00f8a7f7abbc7c8fff28802d70_populate-sysroot.tgz
>    -rw-rw-r-- 1 gthomas gthomas   12279 Jun  3 04:37 
> /local/p60_build/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-da709c00f8a7f7abbc7c8fff28802d70_populate-sysroot.tgz.siginfo
>    $ /local/p60_build/tmp/sysroots/i686-linux/usr/bin/git repack
>    fatal: Not a git repository (or any parent up to mount parent )
>    Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).
> 
> How can this be?  Doesn't the sstate signature imply they should be identical?
> 
> Note: I'll keep these trees around in case there's something else you'd like to see.
> 


