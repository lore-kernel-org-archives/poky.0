Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 685DD4C80FA4
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 18:32:09 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Nov 2010 16:32:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,273,1288594800"; d="scan'208";a="862136086"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 28 Nov 2010 16:32:08 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 29 Nov 2010 08:32:06 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 29 Nov 2010 08:32:06 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 29 Nov 2010 08:32:05 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, "Xu, Dongxiao"
	<dongxiao.xu@intel.com>
Date: Mon, 29 Nov 2010 08:32:02 +0800
Thread-Topic: [poky] [PATCH 0/1][RFC] Optimize file parsing speed
Thread-Index: AcuPQge/UaZsa/s4RSKa2yJMt3zWrAAGqmzA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D42C683EA@shsmsx502.ccr.corp.intel.com>
References: <cover.1290405852.git.dongxiao.xu@intel.com>
	<1290954465.27143.226.camel@rex>
In-Reply-To: <1290954465.27143.226.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1][RFC] Optimize file parsing speed
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
X-List-Received-Date: Mon, 29 Nov 2010 00:32:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Richard Purdie
>Sent: Sunday, November 28, 2010 10:28 PM
>
>Hi Dongxiao,
>
>On Mon, 2010-11-22 at 14:04 +0800, Dongxiao Xu wrote:
>> I found that when parsing bitbake files, most of the variables in
>> d.keys() are in distro_tracking_fields.inc, and they are not used in
>> normal build.
>>
>> This pull request moves some distro related functions in
>> utility-tasks.bbclass into distrodata.bbclass, and remove the inclusion
>> of distro_tracking_fields.inc from poky.conf. This could gain about 25%
>> parsing time saving.
>
>I'm going to take the patch but I'd like to be clear where the speed
>gains come from with this change. I suspect some are due to a smaller
>number of keys but I also suspect the smaller number of tasks involved
>helps too!
>
>Also, a lot of those keys are override keys so perhaps its speeding up
>update_data() calls and some of the gain is from there too?
>
>Anyhow, its a good move :)
>

Good to know the secret sauce, and the improvement is indeed obvious!

Thanks
Kevin

