Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83CE6E0079B; Mon,  4 Aug 2014 23:30:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A7C3E004DD
	for <poky@yoctoproject.org>; Mon,  4 Aug 2014 23:30:13 -0700 (PDT)
Received: by mail-ig0-f177.google.com with SMTP id hn18so697906igb.10
	for <poky@yoctoproject.org>; Mon, 04 Aug 2014 23:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=csjch1jsbqL59wszLbgGmm9vKpLV3IPSf+t9x0UUQfE=;
	b=Sk7HdxwEFRfyNcm2kZncWK0FQ14p19xZfeEd1vSBAAJFE3nfrVTDekQ9T0iHDbbYie
	DYNafkEEBFvJ1n+W1uaaXuKMNspuwRJt/jWIuS6VjakID8STDlSoeBSbKm56zW5awjxc
	xvnPb2byhiwzTD+M0r+my4pgK2bx7Kakxy1i7MtN54gSLvJbI0Ve9A/AucKlvyg3L+Q6
	nfEg+twTyDXMoD5h+pzP6yY24SCnr0pdI9cQTwfiMNf9o7oyf5mX7VHulGB7o7zzL81L
	t6dVpNAnhsl2B5HNOwMY42lavVS0OrAF4HHVO8TSkFikq0F4O3/L642/JL2vsEIJyJ+K
	bf5Q==
X-Received: by 10.43.64.198 with SMTP id xj6mr2815446icb.70.1407220212892;
	Mon, 04 Aug 2014 23:30:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.126.103 with HTTP; Mon, 4 Aug 2014 23:29:42 -0700 (PDT)
In-Reply-To: <30DC4EDFD798C94083F3E083754532CCC9B0A2@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <30DC4EDFD798C94083F3E083754532CCC9AAA9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1407147842.6981.52.camel@ted>
	<30DC4EDFD798C94083F3E083754532CCC9ADE9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<20140805022441.GB3867@haswell>
	<30DC4EDFD798C94083F3E083754532CCC9B013@G08CNEXMBPEKD02.g08.fujitsu.local>
	<CAMKF1soS9TDHD34wTCaQr1ZgTazZbF0u8u6dNKjgQzSzP4Sq9Q@mail.gmail.com>
	<30DC4EDFD798C94083F3E083754532CCC9B0A2@G08CNEXMBPEKD02.g08.fujitsu.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 4 Aug 2014 23:29:42 -0700
Message-ID: <CAMKF1soEFoebxrXL14EpFZk+3Xc2XRB5KFSfXxY5-bMJgG1GGw@mail.gmail.com>
To: "biannm@cn.fujitsu.com" <biannm@cn.fujitsu.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Question]Does poky rebuild source when only makefile was modified
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
X-List-Received-Date: Tue, 05 Aug 2014 06:30:17 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 4, 2014 at 10:57 PM, biannm@cn.fujitsu.com
<biannm@cn.fujitsu.com> wrote:
> When we rebuild a recipe where $B != $S is not supported, although tasks will be redone,
> the source files will not be rebuild if we just change the libdir.

I think tasks should execute and if underlying build system is able to
handle rebuilds in same directory without cleaning it will work out to
be ok
if not then you might have to resort to manual cleaning and rebuilding
of the package

