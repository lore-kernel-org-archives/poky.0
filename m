Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6505D4C80BD4
	for <poky@pokylinux.org>; Wed, 15 Dec 2010 19:44:47 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Dec 2010 17:44:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,352,1288594800"; d="scan'208";a="362362122"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 17:44:44 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 09:43:53 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 09:43:53 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 16 Dec 2010 09:43:52 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Thu, 16 Dec 2010 09:43:50 +0800
Thread-Topic: [poky] [PATCH 0/1] Fix weird rebuild issue even when sstate
	signature doesn't change
Thread-Index: Acuccp35Z6qXKEqJSZCVhAxHZCaH1gAUAWLA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F409356@shsmsx502.ccr.corp.intel.com>
References: <0d30dc$kf5f5e@orsmga001.jf.intel.com>
	<1292404338.26558.1582.camel@rex> <4D08E868.6090606@mlbassoc.com>
In-Reply-To: <4D08E868.6090606@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 0/1] Fix weird rebuild issue even when sstate signature doesn't change
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
X-List-Received-Date: Thu, 16 Dec 2010 01:44:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Gary Thomas [mailto:gary@mlbassoc.com]
>Sent: Thursday, December 16, 2010 12:10 AM
>
>On 12/15/2010 02:12 AM, Richard Purdie wrote:
>> On Tue, 2010-12-14 at 21:40 +0800, Kevin Tian wrote:
>>> This patch is to fix one weird issue I've keeping seeing recently when =
using sstate.
>>> Even with a minimal build, there're around 50 recipes rebuilt from scra=
tch even though
>>> sstate packages in sstate_cache do match. Actually the end result is to=
 just overwrite
>>> sstate packages again with same sigature for those recipes.
>>> https://lists.yoctoproject.org/pipermail/poky/2010-December/001063.html
>>>
>>> The cause for this mess is from misinterpretation of the index of a lis=
t, which then
>>> points to wrong setscene tasks instead of desired ones. The end result =
is that some
>>> tasks which don't need execution are scheduled while other setscene tas=
ks which need
>>> run are simply skipped.
>>>
>>> It's based on Paul's sstate branch.
>>
>> I've merged this patch into master, good catch and hopefully this gets
>> sstate into a good working state.
>>
>> I've merged an updated version of Paul's sstate branch too.
>>
>> I'm hoping this makes sstate packages finally usable!
>
>Mucho bettero (TM) :-)
>
>I just tried this from master and at least on the same machine
>but different build paths, it performed much as hoped.  My initial
>build (step 1) took some 165 minutes, building the same target using
>the sstate cache from step 1 took only 22.  The only packages rebuilt
>during step 2 were the kernel and the image tasks (I tested this with
>my own image+kernel recipes, so it's OK if this differs a little from
>other's results).

Good to see that. :-)

Thanks
Kevin

