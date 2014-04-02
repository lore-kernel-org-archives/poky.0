Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7F2CE00BD3
	for <poky@yoctoproject.org>; Wed,  2 Apr 2014 06:01:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s32D1CiP019437
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 2 Apr 2014 06:01:13 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 2 Apr 2014 06:01:12 -0700
Message-ID: <533C0A15.9070008@windriver.com>
Date: Wed, 2 Apr 2014 09:01:09 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
References: <cover.1396288654.git.bruce.ashfield@windriver.com>
	<5946317.EfKT5Psj4O@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <5946317.EfKT5Psj4O@peggleto-mobl5.ger.corp.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [v2 PATCH 0/7] poky/yocto-bsps: 3.10 and 3.14 updates
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
X-List-Received-Date: Wed, 02 Apr 2014 13:01:18 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-02 08:57 AM, Paul Eggleton wrote:
> On Monday 31 March 2014 14:01:53 Bruce Ashfield wrote:
>> Here's the resend of the 3.10 and 3.14 updates for the 3.14 kernel
>> and 3.10.34 update.
>
> It seems like we should be dropping routerstationpro at this point as well.
> I've started putting together patches to do this; the question is do we want
> to preserve the removed pieces in some additional external layer?

I know that I want them preserved somewhere.

What we have in the 3.4 and 3.10 kernels for those retired BSPs
continues to work fine (in the state that it was), and they'll continue
to get -stable updates as I maintain the trees. And I wouldn't say no if
someone sent a patch for a board.

Shoving them into a retirement home layer works for me, I just don't have
a compelling suggestion for the name of that layer.

Bruce

>
> Cheers,
> Paul
>


