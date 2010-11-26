Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C05B4C8110E
	for <poky@lists.pokylinux.org>; Thu, 25 Nov 2010 20:30:16 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2010 18:30:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,258,1288594800"; d="scan'208";a="630401632"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2010 18:30:15 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 26 Nov 2010 10:29:32 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 26 Nov 2010 10:29:31 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Poky <poky@lists.pokylinux.org>
Date: Fri, 26 Nov 2010 10:29:30 +0800
Thread-Topic: [poky] bitbake listtasks broken
Thread-Index: AcuMlT/GFBYoDMoVSkGCED8jYHOrCgAfD1og
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D42C67F98@shsmsx502.ccr.corp.intel.com>
References: <4CEE4347.1070700@mlbassoc.com> <4CEE4A9E.6030107@mlbassoc.com>
In-Reply-To: <4CEE4A9E.6030107@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: bitbake listtasks broken
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
X-List-Received-Date: Fri, 26 Nov 2010 02:30:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Gary Thomas
>Sent: Thursday, November 25, 2010 7:38 PM
>
>On 11/25/2010 04:06 AM, Gary Thomas wrote:
>> Filed as bug #548
>>
>> This command [no longer?] produces any output:
>> bitbake recipe -c listtasks
>>
>> $ bitbake qemu -c listtasks
>> NOTE: Handling BitBake files: | (0756/0756) [100 %]
>> Parsing of 756 .bb files complete (0 cached, 756 parsed). 913 targets, 3=
4 skipped, 0
>masked, 0 errors.
>>
>> OE Build Configuration:
>> BB_VERSION =3D "1.11.0"
>> METADATA_BRANCH =3D "local_master"
>> METADATA_REVISION =3D "94b1fda09671b58aafb54983e4a6e499f6ffc369"
>> TARGET_ARCH =3D "i586"
>> TARGET_OS =3D "linux"
>> MACHINE =3D "qemux86"
>> DISTRO =3D "poky"
>> DISTRO_VERSION =3D "0.9+snapshot-20101125"
>> TARGET_FPU =3D ""
>>
>> NOTE: Resolving any missing task queue dependencies
>> NOTE: Preparing runqueue
>> NOTE: Executing runqueue
>> NOTE: Full skip list set([])
>> NOTE: Running task 1 of 1 (ID: 0,
>/tmp/poky-amltd/meta/recipes-devtools/qemu/qemu_0.12.4.bb, do_listtasks)
>> NOTE: package qemu-0.12.4-r22: task do_listtasks: Started
>> NOTE: package qemu-0.12.4-r22: task do_listtasks: Succeeded
>> NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to be reru=
n and 0 failed.
>
>To be fair, it does do something, but the results are hidden in
>the temp/log.do_listtasks file.  Certainly not what the documentation
>implies...
>

Previously python tasks were not logged, so do_listtasks get its output to =
the console.

Now all python and shell tasks are logged, that's why you see output in a l=
og file now.

But I agree that it's not convenient to search WORKDIR for such information=
. I'm working
a fix by use bb.msg.note instead.

Thanks
Kevin

