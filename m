Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id BCA064C81065
	for <poky@lists.pokylinux.org>; Fri, 21 Jan 2011 08:25:51 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4910416605F0; Fri, 21 Jan 2011 07:25:46 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3228916605EA;
	Fri, 21 Jan 2011 07:25:45 -0700 (MST)
Message-ID: <4D399769.1050803@mlbassoc.com>
Date: Fri, 21 Jan 2011 07:25:45 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D3850B3.2030100@mlbassoc.com> <1295619024.14388.30678.camel@rex>
In-Reply-To: <1295619024.14388.30678.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: What's taking so long??
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
X-List-Received-Date: Fri, 21 Jan 2011 14:25:52 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/21/2011 07:10 AM, Richard Purdie wrote:
> On Thu, 2011-01-20 at 08:11 -0700, Gary Thomas wrote:
>> My target platform/distro uses IPK and I have a local kernel
>> recipe which is based on the pre linux-yocto recipe that was
>> used by Poky.  When I build&  package the kernel, I have
>> terrible performance - this is new, it used to be just fine.
>>
>> Here's what I mean.  Building for my kernel and timing the
>> various steps, e.g.
>>     % time bitbake virtual/kernel -c compile
>>
>> My kernel:
>>     compile            1m49s
>>     deploy             0m16s
>>     populate_sysroot   0m38s
>>     package           23m20s
>>
>> Just to compare, using OTS Poky for BeagleBoard:
>>     compile            5m07s
>>     deploy             0m36s
>>     populate_sysroot   0m29s
>>     package            5m02s
>>
>> That's a five-fold difference in the time to build&  package
>> the kernel.
>
> This is a serious and worrying number. I just tried a test where I ran:
>
> bitbake virtual/kernel -c package | ../predate.sh
>
> where predate.sh contains:
>
> #!/bin/bash
> while read line ; do
>      echo "$(date): ${line}"
> done
>
> and I added a bb.error to the package functions interation loop in
> package.bbclass.
>
> I saw:
>
> Fri Jan 21 13:58:00 GMT 2011: NOTE: Running task 667 of 667 (ID: 14, /media/build2/builds/rptest/meta/recipes-kernel/linux/linux-yocto_git.bb, do_package)
> Fri Jan 21 13:58:00 GMT 2011: NOTE: package linux-yocto-2.6.37+git0+e3895db37bd65ea97e59b70ea936c84b398d3f3e_0+a9d833fda90e2f1257888a97e092135610b5f259-r15: task do_package: Started
> Fri Jan 21 13:58:00 GMT 2011: ERROR: Running perform_packagecopy
> Fri Jan 21 13:58:02 GMT 2011: ERROR: Running package_do_split_locales
> Fri Jan 21 13:58:02 GMT 2011: ERROR: Running populate_packages
> Fri Jan 21 13:58:02 GMT 2011: WARNING:<string>:5: RuntimeWarning: tmpnam is a potential security risk to your program
> Fri Jan 21 13:58:02 GMT 2011:
> Fri Jan 21 13:58:18 GMT 2011: ERROR: Running package_do_filedeps
> Fri Jan 21 13:59:08 GMT 2011: ERROR: Running package_do_shlibs
> Fri Jan 21 13:59:10 GMT 2011: ERROR: Running package_do_pkgconfig
> Fri Jan 21 13:59:10 GMT 2011: ERROR: Running read_shlibdeps
> Fri Jan 21 13:59:11 GMT 2011: ERROR: Running package_depchains
> Fri Jan 21 13:59:11 GMT 2011: ERROR: Running emit_pkgdata
> Fri Jan 21 13:59:11 GMT 2011: ERROR: Running do_package_qa
> Fri Jan 21 14:00:42 GMT 2011: NOTE: package linux-yocto-2.6.37+git0+e3895db37bd65ea97e59b70ea936c84b398d3f3e_0+a9d833fda90e2f1257888a97e092135610b5f259-r15: task do_package: Succeeded
> Fri Jan 21 14:00:42 GMT 2011: NOTE: Tasks Summary: Attempted 667 tasks of which 615 didn't need to be rerun and 0 failed.
>
> so it did this in 2.6 minutes which doesn't seem unreasonable.
>
> Are you seeing the slow package step in current master and when you made
> the timings above, were they the only task running or were there others
> active too?

This particular test was isolated, just that one recipe.  I noticed
it before when building a complete image, so running it isolated does not
seem to make any difference.  There is also nothing else running on my build
machine (it's a separate server that is used only for builds)

This is against master as of 2011-01-14 (897530621fabf3c345c302050a5c21e16097a2ba)
with my local layers.

What can I look at (alternatively what data can I provide) to help
understand this?

Thanks


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

