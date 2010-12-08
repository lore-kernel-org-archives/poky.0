Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E44AB4C8120A
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 05:41:47 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2010 03:41:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="634320671"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2010 03:41:46 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 19:41:25 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Wed, 8 Dec 2010
	19:41:24 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Wed, 8 Dec 2010 19:41:22 +0800
Thread-Topic: [poky] sstate status
Thread-Index: AcuWy34yzOB6z/FZTYGU3fElsw4SfQAANtJw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D515D0DC8@shsmsx502.ccr.corp.intel.com>
References: <201012031634.56033.paul.eggleton@linux.intel.com>
	<201012071636.55690.paul.eggleton@linux.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC4@shsmsx502.ccr.corp.intel.com>
	<201012081131.37242.paul.eggleton@linux.intel.com>
In-Reply-To: <201012081131.37242.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Wed, 08 Dec 2010 11:41:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>Sent: Wednesday, December 08, 2010 7:32 PM
>
>On Wednesday 08 December 2010 11:22:40 Tian, Kevin wrote:
>> The weird behavior I saw yesterday is still there: lots of recipes (such=
 as gzip-native) are
>> rebuilt when I build poky-image-minimal, which however finally ends up t=
o override my
>> sstate cache with same checksums.
>>
>> If I end the build when it finished setscene stage, and then simply buil=
d tasks in the
>runqueue
>> such as gzip-native, git-native, . It just succeeds by reusing sstate pa=
ckage.
>>
>> Quite strange... Still look into it now.
>
>Oops, it appears that I pushed the wrong branch to paule/sstate yesterday.=
 I've re-pushed
>a new one which actually includes the variable whitelisting changes.

Do we still need those variable whitelisting changes? Based on original bra=
nch you pushed
(basically RP's branch rebased on master imo), I think it basically works a=
t least for a single
recipe build though above weird issue exists for image build.

Of course we need keep some bitbake specific variables in whitelist, such a=
s DATE, TIME and
several others you added in last commit.

On the other hand, did you observe my issue on this new push? I want to und=
erstand its
root cause, which is really funny.=20

>
>Sorry about that!
>

No problem. :-)

Thanks
Kevin

