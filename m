Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 148EFE013A6
	for <poky@yoctoproject.org>; Thu,  9 Aug 2012 06:38:56 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C3773F81220; Thu,  9 Aug 2012 07:38:55 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D61EDF8121E;
	Thu,  9 Aug 2012 07:38:54 -0600 (MDT)
Message-ID: <5023BD77.1020807@mlbassoc.com>
Date: Thu, 09 Aug 2012 07:39:03 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <5023B746.5020005@mlbassoc.com>
	<20120809131816.GB3273@jama.jama.net>
In-Reply-To: <20120809131816.GB3273@jama.jama.net>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: SSTATE_MIRRORS setup
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
X-List-Received-Date: Thu, 09 Aug 2012 13:38:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-08-09 07:18, Martin Jansa wrote:
> On Thu, Aug 09, 2012 at 07:12:38AM -0600, Gary Thomas wrote:
>> What pattern should I use to pick up a shared SSTATE cache, now
>> that it has been split into bits?  I used to use something like this:
>>     SSTATE_MIRRORS ?= "\
>>     file://.* file:///local/my_poky/sstate-cache/"
>>
>> It looks like the manual & sample local.conf haven't caught up with
>> this change yet.
>
> Add PATH as described in
> http://lists.linuxtogo.org/pipermail/openembedded-devel/2012-July/040712.html
>

Thanks, that seems to work fine (albeit not very intuitive)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

