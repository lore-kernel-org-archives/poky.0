Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A9FE4C800BB
	for <poky@yoctoproject.org>; Fri,  3 Jun 2011 11:57:07 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 974EB1660021; Fri,  3 Jun 2011 10:57:06 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B929B16601AE;
	Fri,  3 Jun 2011 10:56:24 -0600 (MDT)
Message-ID: <4DE91238.2020105@mlbassoc.com>
Date: Fri, 03 Jun 2011 10:56:24 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4DE79F0A.5080104@mlbassoc.com> <1307035303.27470.584.camel@rex>
	<4DE90AFF.5090801@mlbassoc.com>
In-Reply-To: <4DE90AFF.5090801@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Fri, 03 Jun 2011 16:57:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/03/2011 10:25 AM, Gary Thomas wrote:
> On 06/02/2011 11:21 AM, Richard Purdie wrote:
>> On Thu, 2011-06-02 at 08:32 -0600, Gary Thomas wrote:
>>> I had a working build based on
>>> commit 52295fa3deef3b0374b99829626d524cefae6001
>>> Author: Richard Purdie<richard.purdie@linuxfoundation.org>
>>> Date: Wed May 18 00:03:02 2011 +0100
>>>
>>> Improve handling of 'all' architecture recipes and their interaction with sstate
>>>
>>> Today, I updated to
>>> commit 484c4e73245c93a08413cd204513bf5c5698b994
>>> Author: Saul Wold<sgw@linux.intel.com>
>>> Date: Tue May 31 22:42:49 2011 -0700
>>>
>>> clutter-1.6: Add patch to update gettext macro version
>>>
>>> Now, it tries to build gettext-native and fails with the log at
>>> http://www.mlbassoc.com/poky/gettext-native-log.do_compile
>>> I don't see what's happening here. If I try an identical
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
> from a build of a few days ago. If I don't use the SSTATE_MIRRORS, it
> builds fine.
>
> Once I get into this state, I can't even clean my way out of this :-(
>
> $ bitbake gettext-native -c clean
> Pseudo is not present but is required, building this first before the main build
> NOTE: Out of date cache found, rebuilding...
> Parsing recipes: 100% |##################################################################################| Time: 00:00:21
> Parsing of 994 .bb files complete (0 cached, 994 parsed). 1227 targets, 37 skipped, 0 masked, 0 errors.
>
> OE Build Configuration:
> BB_VERSION = "1.11.0"
> METADATA_BRANCH = "my_master"
> METADATA_REVISION = "6b5d323b6c8960a0999dbafa0422fe127fd0fa97"
> TARGET_ARCH = "arm"
> TARGET_OS = "linux-gnueabi"
> MACHINE = "cobra3530p60"
> DISTRO = "amltd"
> DISTRO_VERSION = "1.00+snapshot-20110603"
> TARGET_FPU = "soft"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 121 of 133 (ID: 62, virtual:native:/home/local/poky-amltd/meta/recipes-core/gettext/gettext_0.18.1.1.bb, do_compile)
> NOTE: package gettext-native-0.18.1.1-r0: task do_compile: Started
> ERROR: 'virtual:native:/home/local/poky-amltd/meta/recipes-core/gettext/gettext_0.18.1.1.bb' failed
> ERROR: Logfile of failure stored in: /home/local/p60_build2/tmp/work/i686-linux/gettext-native-0.18.1.1-r0/temp/log.do_compile.20106
>
> Why is it running the do_compile step, when I explicitly asked for do_clean?
>
> Looking closer, it seems that the git-native I built yesterday (which is what I was using for SSTATE_MIRRORS)
> doesn't work correctly. One built today, on the exact same host (no changes), etc, does. Very strange.
>
> Here's yesterday's build:
> $ ls -l /local/p60_test_orig/sstate-cache/sstate-git-native*
> -rw-rw-r-- 1 gthomas gthomas 7470 Jun 2 03:37 /local/p60_test_orig/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-4a5372ef2d6e43d9bb5a98258b332ab9_populate-lic.tgz
> -rw-rw-r-- 1 gthomas gthomas 6921 Jun 2 03:37
> /local/p60_test_orig/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-4a5372ef2d6e43d9bb5a98258b332ab9_populate-lic.tgz.siginfo
> -rw-rw-r-- 1 gthomas gthomas 4483022 Jun 2 03:25 /local/p60_test_orig/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-da709c00f8a7f7abbc7c8fff28802d70_populate-sysroot.tgz
> -rw-rw-r-- 1 gthomas gthomas 12279 Jun 2 03:25
> /local/p60_test_orig/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-da709c00f8a7f7abbc7c8fff28802d70_populate-sysroot.tgz.siginfo
> $ /local/p60_test_orig/tmp/sysroots/i686-linux/usr/bin/git repack
> git: 'repack' is not a git command. See 'git --help'.
>
> Here's today's:
> $ ls -l /local/p60_build/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-*
> -rw-rw-r-- 1 gthomas gthomas 7472 Jun 3 05:11 /local/p60_build/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-4a5372ef2d6e43d9bb5a98258b332ab9_populate-lic.tgz
> -rw-rw-r-- 1 gthomas gthomas 6921 Jun 3 05:11 /local/p60_build/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-4a5372ef2d6e43d9bb5a98258b332ab9_populate-lic.tgz.siginfo
> -rw-rw-r-- 1 gthomas gthomas 4482605 Jun 3 04:37 /local/p60_build/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-da709c00f8a7f7abbc7c8fff28802d70_populate-sysroot.tgz
> -rw-rw-r-- 1 gthomas gthomas 12279 Jun 3 04:37
> /local/p60_build/sstate-cache/sstate-git-native-i686-linux-1.7.5.1-r0-i686-2-da709c00f8a7f7abbc7c8fff28802d70_populate-sysroot.tgz.siginfo
> $ /local/p60_build/tmp/sysroots/i686-linux/usr/bin/git repack
> fatal: Not a git repository (or any parent up to mount parent )
> Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).
>
> How can this be? Doesn't the sstate signature imply they should be identical?
>
> Note: I'll keep these trees around in case there's something else you'd like to see.
>

I think I found out what happened.  I was experimenting yesterday with
my distro.conf.  Previously, I was simply extending poky.conf.  Now, my
distro.conf is stand-alone.  For a short while yesterday, I was missing
this line:
   TCLIBCAPPEND = ""
and I ended up with both a tmp and tmp-eglibc tree.  The 'git' I built
yesterday seems to have links into the tmp-eglibc tree (which I later
deleted after I found my mistake).

This still doesn't explain to me how the sstate signatures can be the same
but the contents are different.

Sorry for the noise, but perhaps this does point to some other things that
need closer looks.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

