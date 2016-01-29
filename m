Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBB7BE00A92; Thu, 28 Jan 2016 17:41:32 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D957E008F5
	for <poky@yoctoproject.org>; Thu, 28 Jan 2016 17:41:31 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u0T1fUd7025082
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Jan 2016 17:41:30 -0800 (PST)
Received: from [128.224.162.155] (128.224.162.155) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 28 Jan 2016 17:41:29 -0800
To: "Burton, Ross" <ross.burton@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
References: <1453818056-6498-1-git-send-email-ross.burton@intel.com>
	<56A9CA3B.4000704@windriver.com>
	<CAJTo0LZZga-97iUfP3MNtP=5fn4whhpB-0eLgedJTGEG4Ry8wA@mail.gmail.com>
	<1453976171.10340.44.camel@linuxfoundation.org>
	<CAJTo0LbKX8kDQkPnfaUO4W=AbB8F0FE1cMjxtdM8=iUChroSzg@mail.gmail.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <56AAC347.6080809@windriver.com>
Date: Fri, 29 Jan 2016 09:41:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbKX8kDQkPnfaUO4W=AbB8F0FE1cMjxtdM8=iUChroSzg@mail.gmail.com>
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
X-List-Received-Date: Fri, 29 Jan 2016 01:41:33 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 01/28/2016 06:50 PM, Burton, Ross wrote:
>
> On 28 January 2016 at 10:16, Richard Purdie <richard.purdie@linuxfoundation.org
> <mailto:richard.purdie@linuxfoundation.org>> wrote:
>
>     Note that we specifically put an https:// test in here too as we've had
>     issues with that before :(
>
>
> How about https://www.iana.org/?

This fine, but I prefer:

http://www.example.org/
https://www.example.org/

They are faster and smaller than www.iana.org in both the USA and China.
I'm not sure about the U.K. since I don't have a server there.

// Robert

>
> Ross

