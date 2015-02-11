Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D363E008EA; Wed, 11 Feb 2015 09:32:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18336E003D4
	for <poky@yoctoproject.org>; Wed, 11 Feb 2015 09:32:51 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t1BHWirE016640
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Feb 2015 09:32:44 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Wed, 11 Feb 2015 09:32:44 -0800
Message-ID: <54DB921F.4090802@windriver.com>
Date: Wed, 11 Feb 2015 12:32:15 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Holger Hans Peter
	Freyther <holger@freyther.de>
References: <20150210184309.GB19902@xiaoyu.lan>	
	<1423608686.20217.54.camel@linuxfoundation.org>	
	<20150211082703.GA3213@xiaoyu.lan>
	<1423645857.20217.56.camel@linuxfoundation.org>
In-Reply-To: <1423645857.20217.56.camel@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: kernel.release being regenerated
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Feb 2015 17:32:57 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-02-11 04:10 AM, Richard Purdie wrote:
> On Wed, 2015-02-11 at 09:27 +0100, Holger Hans Peter Freyther wrote:
>> On Tue, Feb 10, 2015 at 10:51:26PM +0000, Richard Purdie wrote:
>>> Hi Holger,
>>
>> Hi Richard,
>>
>>> The fact the kernel.release is being recreated suggests something in the
>>> configuration is changing (different environment or commandline
>>> options?) or that there is a problem in your kernel to do with the
>>> Makefiles and the dependencies of the kernel.release file.
>>
>> This issue should be seen by everyone but the race is pretty small.
>> do_shared_workdir must run shortly after compilemodules has started
>> and removed the file but didn't create a new one. This is the kind
>> of race I am more likely to hit than the average population. The
>> "configuration is changing" part looks like a red herring to me.
>>  From looking at the Makefile I see a FORCE as dependency of the
>> kernel.release rule. With my 3.10er kernel (and it doesn't look
>> like we have patched the Makefile) the dependency chain is like
>> this:
>>
>>   init -> prepare -> prepare0 .. -> prepare3 -> kernel.release -> FORCE
>>
>> This means that on any target being executed the kernel.release
>> will be re-created. I think the only stable way would be to have
>> do_compile copy the kernel.release to another place and have the
>> copying task pick this file from another place.
>
> This does sound like a flaw in how we're copying the file if it is
> regenerated on each execution of make within the kernel build.
>
> What puzzles me is that the use of kernel.release isn't new, the
> previous do_install code used to do this and technically would have
> raced with do_compilemodules too. So was it just bad luck you started
> hitting this now?

It looks like bad luck that this is popping up now.

>
> (http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/classes/kernel.bbclass?id=92725ad46f4d331bea6a2fa65964158d78a7add8)
>
> As you say, if this really is getting regenerated as you describe, we'll
> have to store a safe copy in the tree.

What about changing the dependencies of the known tasks ? i.e. making
sure that the kernel modules don't start building until we have the
shared workdir populated ? Otherwise, what does that leave us, staging
a copy at the end of kernel_do_compile and grabbing it from there in the
shared workdir population step ?

Bruce

>
> Cheers,
>
> Richard
>


