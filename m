Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6208DE00746
	for <poky@yoctoproject.org>; Sat, 12 May 2012 05:01:52 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id BE818F8124D; Sat, 12 May 2012 06:01:51 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id DEF98F811E8;
	Sat, 12 May 2012 06:01:50 -0600 (MDT)
Message-ID: <4FAE512E.8070004@mlbassoc.com>
Date: Sat, 12 May 2012 06:01:50 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4FADA8C4.6020605@mlbassoc.com> <1336808085.2494.243.camel@ted>
In-Reply-To: <1336808085.2494.243.camel@ted>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Stuck fetching latest Yocto kernel?
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
X-List-Received-Date: Sat, 12 May 2012 12:01:52 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-05-12 01:34, Richard Purdie wrote:
> On Fri, 2012-05-11 at 18:03 -0600, Gary Thomas wrote:
>> This task has been stuck for ~12 hours now
>>     0: linux-yocto-3.0.24+git2+34e0d2b4b4e9778b31f9ea99ca43f0dc71a7ee23_2+8fd5a8eb4067c7032389e82d54f0e54e1e27f78c-r4 do_fetch (pid 4665)
>>
>> Is something stuck?
>
> There was a DDOS attack against servers in the same location at the
> Yocto Project servers yesterday which causes a number of problems. I
> suspect that this may have caused it to hang :(

Doesn't look to have improved yet - I can't even connect to the mirror
   http://downloads.yoctoproject.org/mirror/sources/

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

