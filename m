Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 329774C81206
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 05:22:52 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2010 03:22:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="581718483"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 08 Dec 2010 03:22:44 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 19:22:43 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Wed, 8 Dec 2010
	19:22:42 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Wed, 8 Dec 2010 19:22:40 +0800
Thread-Topic: [poky] sstate status
Thread-Index: AcuWLRbjlOrgm8NrRoukk/biAf9EKwAnIvQw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D515D0DC4@shsmsx502.ccr.corp.intel.com>
References: <201012031634.56033.paul.eggleton@linux.intel.com>
	<201012061606.45790.paul.eggleton@linux.intel.com>
	<1291725996.11475.22.camel@rex>
	<201012071636.55690.paul.eggleton@linux.intel.com>
In-Reply-To: <201012071636.55690.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Wed, 08 Dec 2010 11:22:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Paul Eggleton
>Sent: Wednesday, December 08, 2010 12:37 AM
>
>On Tuesday 07 December 2010 12:46:36 Richard Purdie wrote:
>> Agreed, I'll take that patch on its own, I just want to move carefully
>> to the end result.
>>
>> Can you rebase your sstate branch onto master, pull in the above changes
>> not already in master and lets see where we are?
>
>Done - pushed to contrib paule/sstate. I have omitted Kevin's bitbake-diff=
sigs srcpath fix
>which is still being worked on.
>

The weird behavior I saw yesterday is still there: lots of recipes (such as=
 gzip-native) are
rebuilt when I build poky-image-minimal, which however finally ends up to o=
verride my
sstate cache with same checksums.=20

If I end the build when it finished setscene stage, and then simply build t=
asks in the runqueue
such as gzip-native, git-native, . It just succeeds by reusing sstate packa=
ge.

Quite strange... Still look into it now.

Thanks
Kevin

