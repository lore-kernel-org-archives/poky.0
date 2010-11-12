Return-Path: <gary@mlbassoc.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DD7B4C80815
	for <poky@lists.pokylinux.org>; Fri, 12 Nov 2010 07:05:03 -0600 (CST)
Received: by pug.o-hand.com (Postfix)
	id 2F18312EC362; Fri, 12 Nov 2010 07:41:47 -0600 (CST)
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by pug.o-hand.com (Postfix) with ESMTP id 0E09B12EC27E
	for <poky@o-hand.com>; Fri, 12 Nov 2010 07:41:46 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id BB814166077F; Fri, 12 Nov 2010 06:05:01 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0C4A0166073E;
	Fri, 12 Nov 2010 06:04:57 -0700 (MST)
Message-ID: <4CDD3B78.7040208@mlbassoc.com>
Date: Fri, 12 Nov 2010 06:04:56 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: poky@o-hand.com
References: <4CAC8593.10509@mlbassoc.com> <1286376546.15840.5993.camel@rex>
In-Reply-To: <1286376546.15840.5993.camel@rex>
Cc: Richard Purdie <richard@openedhand.com>
Subject: Re: Building kernel modules outside of kernel recipe
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
X-List-Received-Date: Fri, 12 Nov 2010 13:05:03 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/06/2010 08:49 AM, Richard Purdie wrote:
> On Wed, 2010-10-06 at 08:20 -0600, Gary Thomas wrote:
>> I filed a bug on this last month:
>>     http://bugzilla.pokylinux.org/show_bug.cgi?id=241
>>
>> Richard, you made a comment about how the emenlow machine works around
>> this, but I'm not seeing how this is done in the recipes/conf files.
>>
>> Any hints?  Maybe I can see how to extend this for all targets.
>
> http://git.pokylinux.org/cgit/cgit.cgi/poky/tree/meta-emenlow/packages/psb-kernel-source/psb-kernel-source-4.42.0/build.patch
>
> See the change to psb-kernel-source-4.42.0/Makefile

Sorry, but these changes will only work when the target architecture
is execute-compatible with the host machine.  These are host executables
that need to be [re]built and the lines inserted into the Makefile will
end up building target executables.  For the PSB kernel, it works fine
since it's x86 and your build host will be x86 or ia64.  It falls apart
for me since my target is ARM.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

