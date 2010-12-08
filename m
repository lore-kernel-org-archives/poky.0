Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8CC194C81228
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 08:41:48 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 1D565166034B; Wed,  8 Dec 2010 07:41:33 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id AE788166020A;
	Wed,  8 Dec 2010 07:41:11 -0700 (MST)
Message-ID: <4CFF9907.3090901@mlbassoc.com>
Date: Wed, 08 Dec 2010 07:41:11 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101103 Fedora/1.0-0.33.b2pre.fc13
	Thunderbird/3.1.6
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <201012081402.16308.paul.eggleton@linux.intel.com>
	<201012081406.20138.paul.eggleton@linux.intel.com>
In-Reply-To: <201012081406.20138.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Wed, 08 Dec 2010 14:41:49 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/08/2010 07:06 AM, Paul Eggleton wrote:
> On Wednesday 08 December 2010 14:02:15 Paul Eggleton wrote:
>> I have to admit I didn't look closely enough to be sure - I was mainly
>> testing between two different build machines which don't share the same
>> native arch, so the native packages were rebuilt anyway. I'm starting a
>> fresh build now with my new branch to see if I can reproduce your results.
>
> FYI my build just finished and it's definitely rebuilding a whole bunch of packages (and not just native ones). More concerningly it seems to have rebuilt git-native and the hash has actually changed, although bitbake-diffsigs doesn't seem to be able to tell me what is different other than the hash itself.

I'm running my own experiments on this branch.  It seems that
something more fundamental is broken.  I first ran
   % bitbake poky-image-minimal
which seemed to go OK although the resulting image.tar.bz2 looks
surprisingly empty.  I've not investigated this fully.

Then in the same tree, nothing else touched, I ran
   % bitbake poky-image-sato
which generated a ton of messages like these:
   NOTE: package task-base-1.0-r69: task do_populate_sysroot_setscene: Started
   NOTE: Staging package /tmp/sstate_testing/sstate-cache/sstate-task-base-qemuarm-poky-linux-gnueabi-1.0-r69-armv5te-1-f2de7ef77366ff6028dbbf54a0206318_populate-sysroot.tgz does not
exist
   NOTE: package task-base-1.0-r69: task do_package_setscene: Started
   NOTE: Staging package /tmp/sstate_testing/sstate-cache/sstate-task-base-qemuarm-poky-linux-gnueabi-1.0-r69-armv5te-1-82eff67eab7faa49e63393c34ce384dd_package.tgz does not exist
etc.  I also have seen that if I abort this build, there are
literally hundreds of setscene tasks pending...

I've put the logs at
   http://www.mlbassoc.com/poky/poky-image-minimal-from-paule-branch
   http://www.mlbassoc.com/poky/poky-image-sato-from-paule-branch

Query: what sort of machine do you use for this testing?  I have a
Core-2 quad @2.4GHz with 3GB of RAM and it takes me around 5 hours
to make a full test.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

