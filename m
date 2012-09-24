Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36C01E01447
	for <poky@yoctoproject.org>; Mon, 24 Sep 2012 04:19:07 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B8B56F8120C; Mon, 24 Sep 2012 05:19:06 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E2949F811EB;
	Mon, 24 Sep 2012 05:19:05 -0600 (MDT)
Message-ID: <506041A9.10009@mlbassoc.com>
Date: Mon, 24 Sep 2012 05:19:05 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <503550B4.6060708@gmail.com> <5035DBF4.2020201@r-finger.com>
	<503639B2.4000605@gmail.com>
	<CAMKF1sqhPaHkiOn5uTiF6mQixoatRL8queN6XX5AvQaxL1nvzg@mail.gmail.com>
	<50598A24.1040503@gmail.com> <1348483894.8662.3.camel@ted>
In-Reply-To: <1348483894.8662.3.camel@ted>
Subject: Re: do_fetch error with gcc-cross-initial_4.7
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
X-List-Received-Date: Mon, 24 Sep 2012 11:19:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-09-24 04:51, Richard Purdie wrote:
> On Wed, 2012-09-19 at 12:02 +0300, Florin wrote:
>> Trying to build something today and still takes forever and crashes at
>> fetch. Looking at the gcc-4.7.inc I see it's still from git.
>> What would the resolution be for this issue?
>
> The recipe is now using a release tarball. There is talk of ways to
> improve the fetcher in this regard in future too but that is probably
> 1.4 work at this point.

Has this change actually been merged to master?  I just updated and
did not see it.

... anxiously awaiting this change to arrive in master :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

