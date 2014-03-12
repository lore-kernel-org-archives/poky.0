Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1D36E009BB
	for <poky@yoctoproject.org>; Wed, 12 Mar 2014 03:27:24 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2CARAAW022563
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 12 Mar 2014 03:27:10 -0700 (PDT)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 12 Mar 2014 03:27:09 -0700
Message-ID: <5320367B.8070303@windriver.com>
Date: Wed, 12 Mar 2014 18:27:07 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Mats_K=E4rrman?= <Mats.Karrman@tritech.se>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
References: <ED3E0BCACD909541BA94A34C4A164D4C5B180D0A@post.tritech.se>,
	<1394596414.19455.57.camel@ted>
	<ED3E0BCACD909541BA94A34C4A164D4C5B18123B@post.tritech.se>
In-Reply-To: <ED3E0BCACD909541BA94A34C4A164D4C5B18123B@post.tritech.se>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Stephen Jolley <stephen.k.jolley@intel.com>
Subject: Re: Schedule for Poky Dora point release
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
X-List-Received-Date: Wed, 12 Mar 2014 10:27:27 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit



On 03/12/2014 04:00 PM, Mats Kärrman wrote:
> on Wednesday, March 12, 2014 4:53 AM, Richard Purdie wrote:
>> On Tue, 2014-03-11 at 10:14 +0000, Mats Kärrman wrote:
>>> Considering the recent discovery and fix of a serious bug in the compiler for ARM:
>>> commit        97c9163d97911dad0afcd0dae39e5c426e27e921
>>> "gcc: Include patch scheduled for GCC 4.8.3 to fix epilogue on ARM"
>>> is there a new point-release scheduled for Dora?
>>> If so, when it is expected to be released?
>>
>> Firstly we need to get this backported to dora. Is there a version of
>> this change backported and tested there? If not, someone needs to sort
>> out that patch.
>
> Looking at http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=dora
> it is there since 2014-02-14.
>

Thanks Mats and RP, yes, it is already on dora.

We may release 1.5.2 on April as Stephen said.

// Robert

// Robert

> BR // Mats
> Richard
>

