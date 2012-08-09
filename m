Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 091BFE0044A
	for <poky@yoctoproject.org>; Thu,  9 Aug 2012 10:57:11 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id AB988F81225; Thu,  9 Aug 2012 11:57:10 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 027BBF811EE;
	Thu,  9 Aug 2012 11:57:09 -0600 (MDT)
Message-ID: <5023F9FF.10204@mlbassoc.com>
Date: Thu, 09 Aug 2012 11:57:19 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1344533174.4828.29.camel@rogue> <5023F425.1090801@mlbassoc.com>
	<2803677.9qrQhhpNF3@helios>
In-Reply-To: <2803677.9qrQhhpNF3@helios>
Cc: poky@yoctoproject.org
Subject: Re: [denzil][meta-ti] Problems building compiler for Pandaboard
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
X-List-Received-Date: Thu, 09 Aug 2012 17:57:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-08-09 11:36, Paul Eggleton wrote:
> On Thursday 09 August 2012 11:32:21 Gary Thomas wrote:
>> On 2012-08-09 11:26, Luke A. Guest wrote:
>>> Can anybody help me get started with this? I've only been able to build
>>> an qemux86 image so far which is not that useful for real boards.
>>
>> Try cleaning out your build tree (remove sstate-cache/ and tmp/) and run
>> it again.  The error you are seeing is related to reusing the same tree
>> with [somewhat] different target machines.
>
> Sharing build directory between disparate machines should be perfectly
> allowable, if there are failures that block it we should fix them. I'm not sure
> what this specific failure is caused by though.

I see this problem a lot when updating my master tree and trying
to rebuild.  Sadly, once it happens, it's hard to reproduce and
I never know when it will bite me.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

