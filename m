Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00FA5E00948; Thu, 28 Jan 2016 01:30:00 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6EE6E00838
	for <poky@yoctoproject.org>; Thu, 28 Jan 2016 01:29:57 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u0S9Tuta007125
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Jan 2016 01:29:56 -0800 (PST)
Received: from [128.224.162.155] (128.224.162.155) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 28 Jan 2016 01:29:55 -0800
To: "Burton, Ross" <ross.burton@intel.com>
References: <1453818056-6498-1-git-send-email-ross.burton@intel.com>
	<56A9CA3B.4000704@windriver.com>
	<CAJTo0LZZga-97iUfP3MNtP=5fn4whhpB-0eLgedJTGEG4Ry8wA@mail.gmail.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <56A9DF92.2090007@windriver.com>
Date: Thu, 28 Jan 2016 17:29:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZZga-97iUfP3MNtP=5fn4whhpB-0eLgedJTGEG4Ry8wA@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] conf/distro/poky.conf: use google.com for connectivity check
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
X-List-Received-Date: Thu, 28 Jan 2016 09:30:01 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 01/28/2016 05:17 PM, Burton, Ross wrote:
>
> On 28 January 2016 at 07:58, Robert Yang <liezhi.yang@windriver.com
> <mailto:liezhi.yang@windriver.com>> wrote:
>
>     Sorry, but google.com <http://google.com> is nearly unreachable in China as
>     the reason you may know.
>
>     How about 8.8.8.8 which is OK ?
>
>
> That's a good point which I should have thought of.  I'm surprised the Great
> Firewall lets 8.8.8.8 through, but as this check uses the fetcher there needs to
> be a HTTP URL it can open and 8.8.8.8 doesn't respond to HTTP.

It seems that 8.8.8.8 doesn't repond to HTTP. How about example.org which
is reserved by RFC ?

In the USA:
$ ping example.org
PING example.org (93.184.216.34) 56(84) bytes of data.
64 bytes from 93.184.216.34: icmp_req=1 ttl=52 time=5.82 ms
64 bytes from 93.184.216.34: icmp_req=2 ttl=52 time=5.25 ms

$ ping google.com
PING google.com (216.58.219.14) 56(84) bytes of data.
64 bytes from lax17s03-in-f14.1e100.net (216.58.219.14): icmp_req=1 ttl=54 
time=12.2 ms
64 bytes from lax17s03-in-f14.1e100.net (216.58.219.14): icmp_req=2 ttl=54 
time=11.8 ms


$ ping yoctoproject.org
PING yoctoproject.org (140.211.169.56) 56(84) bytes of data.
64 bytes from yocto-www.yoctoproject.org (140.211.169.56): icmp_req=1 ttl=53 
time=26.6 ms
64 bytes from yocto-www.yoctoproject.org (140.211.169.56): icmp_req=2 ttl=53 
time=26.0 ms

The example.org is faster than google.com and yoctoproject.org.

In China, example.org is also OK.
$ ping example.org
PING example.org (93.184.216.34) 56(84) bytes of data.
64 bytes from 93.184.216.34: icmp_seq=2 ttl=52 time=155 ms
64 bytes from 93.184.216.34: icmp_seq=3 ttl=52 time=158 ms

$ ping google.com
PING google.com (216.58.221.142) 56(84) bytes of data.
[no respond]

$ ping yoctoproject.org
PING yoctoproject.org (140.211.169.56) 56(84) bytes of data.
64 bytes from yocto-www.yoctoproject.org (140.211.169.56): icmp_seq=3 ttl=49 
time=336 ms
64 bytes from yocto-www.yoctoproject.org (140.211.169.56): icmp_seq=4 ttl=49 
time=397 ms

// Robert

>
> Ross

