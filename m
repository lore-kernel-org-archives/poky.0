Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id DDF634C80039
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 17:31:16 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 92D5816606B8; Fri,  3 Dec 2010 16:31:15 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 880BD16606B4;
	Fri,  3 Dec 2010 16:31:14 -0700 (MST)
Message-ID: <4CF97DC2.8040209@mlbassoc.com>
Date: Fri, 03 Dec 2010 16:31:14 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <201012031634.56033.paul.eggleton@linux.intel.com>
In-Reply-To: <201012031634.56033.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: sstate status
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
X-List-Received-Date: Fri, 03 Dec 2010 23:31:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/03/2010 09:34 AM, Paul Eggleton wrote:
> Hi all,
>
> I've been doing some tests with sstate, and I've managed to get to a stage where I can share the SSTATE_DIR between my two machines (one running Fedora 14 and the other Kubuntu 10.10) and almost get a successful build from a clean TMPDIR. My last test got to poky-image-minimal.do_rootfs and then failed due to some kind of package dependency issue:
>
> --------- snip ---------
> | Processing rpm...
> | Processing zypper...
> | error: Failed dependencies:
> |       elfutils>= 0.148 is needed by rpm-5.1.10-r7.i586
> |       libaugeas0>= 0.7.3 is needed by zypper-1.4.7+git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r1.i586
> | ERROR: Task failed: ('function do_rootfs failed', '/home/pokystuff/tmp/work/qemux86-poky-linux/poky-image-minimal-1.0-r0/temp/log.do_rootfs.6874')
> --------- snip ---------
>
> A "bitbake -c clean augeas elfutils" and then "bitbake poky-image-minimal" again went through OK (and built the aforementioned recipes from sstate) , so I'm not sure what went wrong here.
>
> My current state of work is in the paule/sstate contrib branch, which is based on Kevin's tk/sstate branch. Kevin, I think the sooner we can move this towards master the better, then we can get some wider testing.
>
> FYI Joshua has made bug #507 into a tracking bug for current sstate issues:
> http://bugzilla.pokylinux.org/show_bug.cgi?id=507

I gave this a simple try and it failed miserably.  Working from a copy of
Paul's branch in poky-contrib, here's what I did:

* On machine A (x86 Fedora 11)
   % bitbake poky-image-minimal

* On machine B (x86 Fedora 13)
   -- Copy sstate-cache from machine A to /tmp/sstate-cache (rsync with
      all perms & timestamps preserved)
   -- Using the identical conf/local.conf file from machine A, except
      I set up SSTATE_MIRRORS like this
          SSTATE_MIRRORS ?= "\
          file://.* file:///tmp/sstate-cache/"
   % bitbake poky-image-minimal

Fell apart pretty badly.  Look at the output
   http://www.mlbassoc.com/poky/poky_with_sstate.out

Also, it seemed to be rebuilding a lot of packages.  IMO, there's
no reason it should have to rebuild _any_

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

