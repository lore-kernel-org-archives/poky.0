Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B03CA4C80FAD
	for <poky@yoctoproject.org>; Mon,  8 Nov 2010 21:51:11 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA93pAm9028785
	for <poky@yoctoproject.org>; Mon, 8 Nov 2010 19:51:10 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 8 Nov 2010 19:51:10 -0800
Received: from Macintosh-5.local ([172.25.36.228]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 8 Nov 2010 19:51:10 -0800
Message-ID: <4CD8C52D.6060207@windriver.com>
Date: Mon, 08 Nov 2010 21:51:09 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1289273912.1272.24.camel@rex>
In-Reply-To: <1289273912.1272.24.camel@rex>
X-OriginalArrivalTime: 09 Nov 2010 03:51:10.0598 (UTC)
	FILETIME=[58D54A60:01CB7FC1]
Subject: Re: Bitbake fetchers
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
X-List-Received-Date: Tue, 09 Nov 2010 03:51:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I was talking to someone a few weeks ago about the SRC_URI entries.  They were 
wondering if the Apache Maven stuff had been looked at:

http://maven.apache.org/scm/scms-overview.html

basically it's an attempt at standardizing the scm URIs.  It's certainly 
different then the current bitbake methods, so it's unclear to me if this would 
be at all useful for the work you are suggesting.. but it might be work 
exploring as an alternative way to secify the scm info.

--Mark

On 11/8/10 9:38 PM, Richard Purdie wrote:
> Hi,
>
> I've talked with various people about the bitbake fetchers and I think
> the time has come for an overhaul. I'm going to take the opportunity to
> write down all the various issues I've seen with the current approach so
> we can then come up with a plan and some changes to address this.
>
> Some things that currently bother me:
>
> a) For a git checkout, we clone the repository, make a checkout, tar
> this up, then do_unpack task untars it. This is inefficient to say the
> least.
>
> b) For git controlled sources, we "lose" the .git directory in the
> workdir. For any git checkout, I'd like this to be available.
>
> c) Even when git recipes have the SRCREV specified to a fixed value, the
> recipe always gets reparsed as there is no way to tell if its locked
> down or could float (with AUTOREV). We shouldn't be reparsing.
>
> d) There is no way to set two SRCREV values for different branches of
> the same git repository without two entries in SRC_URI. Knowing when to
> update a multi revision bare clone git repository is hard with the
> information spread over two SRC_URI entries.
>
> e) Its hard to configure bitbake to be "networkless", or to turn off the
> default SRC_URI entries and force bitbake to only use a mirror, or a
> local directory.
>
> f) The whole of the fetcher code has grown orgnaically and doesn't have
> an overall design or a sensible API for accessing it.
>
> g) SRCREV has to be set in the configuration space, not in recipe space.
> We should support it in recipe space but this will mean caching values
> and providing them to the main configuration space. This is a bitbake
> parsing/data caching issue rather than a fetcher one.
>
> h) The error handling and propagation of errors appears to have issues
> in places.
>
> i) Its hard to enable/disable SCM mirror tarballs at present (this
> should be optional as they'd really become unneeded).
>
>> From a design standpoint I'd therefore like to create a "fetch2"
> directory in bitbake and try and redesign the fetchers there with a
> sensible API learning from the codebase we already have. In places this
> will no doubt use the same code but I'd like to take a step back and
> restructure it.
>
> To address some of the problems above, I'd like to see the do_unpack
> task that Poky/OE have, call into the fetcher rather than have the code
> in Poky/OE clases. This means the likes of the git checkouts can be
> optimised and a checkout into WORKDIR can just be a git clone by
> reference (see man git-clone). This probably needs to be through
> symlinks and not hardlinks as DL_DIR and WORKDIR can be on different
> filesystems.
>
> There are some complexities in the fetcher code:
>
> a) There is the issue of caching, we try and cache the parsed SRC_URI
> rather than reparse it multiple times.
>
> b) SRCREV = "${AUTOREV}" introduces a lot of complexity as it has to
> inject the git revision into the PV variable which is widely used. This
> is partly the reason a) above is needed. The value for PV needs to be
> computed at parse time, not task execution, further complicating the
> model.
>
> c) Sometimes, we need to "fetch" different data so we change the values
> of SRC_URI, the mirrors and DL_DIR. These things therefore need to be
> configurable. An example user is the sstate fetcher code. Another
> example is the checkuri task. It would be nice if for a given recipe,
> the fetcher could give feedback about whether the main SRC_URI works
> with no mirror and which mirrors had the file availability.
>
> These complexities need to be addressed in the rewrite to ensure
> features still work.
>
> I'm sure there are other things I'm missing on these lists but hopefully
> this is a good start at documenting them. If anyone has further issues
> to add, I'd be interested to hear about them.
>
> Cheers,
>
> Richard
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


