Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 56BF44C811C1
	for <poky@yoctoproject.org>; Fri,  7 Jan 2011 08:00:10 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 369EE166019F; Fri,  7 Jan 2011 07:00:10 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 843BD1660176;
	Fri,  7 Jan 2011 07:00:08 -0700 (MST)
Message-ID: <4D271C68.9090300@mlbassoc.com>
Date: Fri, 07 Jan 2011 07:00:08 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D25DE22.4000004@mlbassoc.com> <4D265300.2000906@intel.com>
	<1294408600.17519.27150.camel@rex>
In-Reply-To: <1294408600.17519.27150.camel@rex>
Cc: poky@yoctoproject.org
Subject: Re: ^C during build broken?
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
X-List-Received-Date: Fri, 07 Jan 2011 14:00:11 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/07/2011 06:56 AM, Richard Purdie wrote:
> On Thu, 2011-01-06 at 15:40 -0800, Scott Garman wrote:
>> On 01/06/2011 07:22 AM, Gary Thomas wrote:
>>> As of today's master (9b5c770cbda8cfc4c108d94bd0ff5c0af3d0b64b),
>>> if I type ^C during the build, it just keeps merrily going on...
>>>
>>>      --NOTE: package readline-native-6.1-r0: task do_configure: Started
>>>      ^C
>>>      Keyboard Interrupt, closing down...
>>>
>>>      Waiting for 1 active tasks to finish:
>>>      0: readline-native-6.1-r0 do_configure (pid 25173)
>>>      NOTE: package perl-native-5.8.8-r14: task do_compile: Succeeded
>>>      NOTE: Running task 444 of 468 (ID: 110, /tmp/poky-amltd/meta/recipes-devtools/perl/perl-native_5.8.8.bb, do_install)
>>>      NOTE: Running task 444 of 468 (ID: 110, /tmp/poky-amltd/meta/recipes-devtools/perl/perl-native_5.8.8.bb, do_install)
>>>      Waiting for 2 active tasks to finish:
>>>      0: readline-native-6.1-r0 do_configure (pid 25173)
>>>      1: perl-native-5.8.8-r14 do_install (pid 27401)
>>>      NOTE: package perl-native-5.8.8-r14: task do_install: Started
>>>
>>> Huh?  It _was_ waiting for 1 task to finish, but then it fired
>>> off more!  I let it run for a while and it just kept going and going...
>>
>> I am also seeing this.
>
> One of the patches we merged from upstream bitbake wasn't applied
> properly. I've fixed this in:
>
> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=0e26f53f9e2f190b302235864552956ed8f6d39b
>
> which should fix this problem.

Yup, working properly again.  Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

