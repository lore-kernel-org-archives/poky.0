Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9A044C8121F
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 08:15:49 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2010 06:15:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="634355802"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2010 06:15:49 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 22:15:47 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Wed, 8 Dec 2010
	22:15:47 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Wed, 8 Dec 2010 22:15:45 +0800
Thread-Topic: [poky] sstate status
Thread-Index: AcuW4RrT3ixiNufaRryUKgB26vgvcAAAOyLQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D515D0DFE@shsmsx502.ccr.corp.intel.com>
References: <201012081402.16308.paul.eggleton@linux.intel.com>
	<201012081406.20138.paul.eggleton@linux.intel.com>
In-Reply-To: <201012081406.20138.paul.eggleton@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 08 Dec 2010 14:15:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>Sent: Wednesday, December 08, 2010 10:06 PM
>
>On Wednesday 08 December 2010 14:02:15 Paul Eggleton wrote:
>> I have to admit I didn't look closely enough to be sure - I was mainly
>> testing between two different build machines which don't share the same
>> native arch, so the native packages were rebuilt anyway. I'm starting a
>> fresh build now with my new branch to see if I can reproduce your result=
s.
>
>FYI my build just finished and it's definitely rebuilding a whole bunch of=
 packages (and not
>just native ones). More concerningly it seems to have rebuilt git-native a=
nd the hash has
>actually changed, although bitbake-diffsigs doesn't seem to be able to tel=
l me what is
>different other than the hash itself.
>

It's a little different from my case, though I also observed lots of packag=
es rebuilt
besides native ones. How did you check the hash has been changed? In my cas=
e git-native
simply overrides sstate package with same checksum.

Also I found that git-native.do_populate_setsecene is not scheduled at all,=
 which may be
the reason for the rebuilt, but I haven't got the cause.

Thanks
Kevin

