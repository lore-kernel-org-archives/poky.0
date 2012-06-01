Return-Path: <yocto@mindchasers.com>
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A36DE00747
	for <poky@yoctoproject.org>; Fri,  1 Jun 2012 14:58:12 -0700 (PDT)
Received: from [192.168.1.3] (pool-108-25-202-159.atclnj.east.verizon.net
	[108.25.202.159])
	by smtp.webfaction.com (Postfix) with ESMTP id 6F3C42104A6D;
	Fri,  1 Jun 2012 16:58:11 -0500 (CDT)
Message-ID: <4FC93AF2.2090102@mindchasers.com>
Date: Fri, 01 Jun 2012 17:58:10 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <4FC90484.6010007@mindchasers.com>
	<CAEsOVNerOSK+HJX7UvzM_O7t8vt=FEaZ1W5MWmUFeTVcSGe0mw@mail.gmail.com>
In-Reply-To: <CAEsOVNerOSK+HJX7UvzM_O7t8vt=FEaZ1W5MWmUFeTVcSGe0mw@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: best way to purge stale packages?
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
X-List-Received-Date: Fri, 01 Jun 2012 21:58:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/01/2012 03:27 PM, McClintock Matthew-B29882 wrote:
> On Fri, Jun 1, 2012 at 1:05 PM, Bob Cochran<yocto@mindchasers.com>  wrote:
>> Hello,
>>
>> Inside my work directory, I have three versions of openssl:
>> openssl-1.0.0i-r15.2, openssl-1.0.0i-r0.1, and openssl-1.0.0h-r15.1, with
>> the latter two being stale.  I also have artifacts from these stale packages
>> in tmp/stamps.
>>
>> I haven't come along a bitbake option or ancillary script to remove stale
>> packages as my recipes bump.  Is there one?
>
> ./scripts/cleanup-workdir ?
>
> -M
>


Thanks Matthew.  I didn't notice that was added back in March.  Very cool.

I'm going to read through the source before trying since I see that 
Andreas sent out an email on 4/12 on the OE list pointing out a few 
problems he had.

I'll report back if I get good results or not.  I have been working from 
the same build directory for a couple of months from the master branch, 
so my build dir should be a decent test case.

Thanks again,

Bob


