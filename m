Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6092C4C81229
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 08:52:45 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 08 Dec 2010 06:52:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="865911334"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2010 06:52:44 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 22:52:43 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 22:52:43 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Wed, 8 Dec 2010
	22:52:42 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Wed, 8 Dec 2010 22:52:41 +0800
Thread-Topic: [poky] sstate status
Thread-Index: AcuW5zc7uFDStvHSSc6PE0C5aZNvAAAACE7w
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D515D0E15@shsmsx502.ccr.corp.intel.com>
References: <201012081402.16308.paul.eggleton@linux.intel.com>
	<201012081406.20138.paul.eggleton@linux.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DFE@shsmsx502.ccr.corp.intel.com>
	<201012081450.01690.paul.eggleton@linux.intel.com>
In-Reply-To: <201012081450.01690.paul.eggleton@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: sstate status
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
X-List-Received-Date: Wed, 08 Dec 2010 14:52:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>Sent: Wednesday, December 08, 2010 10:50 PM
>
>On Wednesday 08 December 2010 14:15:45 Tian, Kevin wrote:
>> It's a little different from my case, though I also observed lots of pac=
kages
>> rebuilt besides native ones.
>
>This is what I saw as well.
>
>> How did you check the hash has been changed? In my case git-native
>> simply overrides sstate package with same checksum.
>
>I hacked together a shell script that looks for .siginfo files with the sa=
me package/arch/task
>but a different hash; if it finds these then it uses bitbake-diffsigs to c=
ompare them.
>
>As for the sstate packages being overwritten, I assume this is happening i=
n my case as I
>can see the packages being rebuilt in the bitbake output.
>
>> Also I found that git-native.do_populate_setsecene is not scheduled at a=
ll,
>> which may be the reason for the rebuilt, but I haven't got the cause.
>
>Hmm, then it could be unrelated to the general problem.
>
>You didn't see this behaviour with your tk/sstate branch I presume?
>

I think so. I just observed this behavior after my vacation last week. But =
it may also
come from other changes, not exactly from sstate related ones imo. There're=
 some
bitbake changes in the middle I think.

Thanks
Kevin=20

