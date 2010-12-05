Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A752E4C80052
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 05:19:34 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Dec 2010 03:19:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,302,1288594800"; d="scan'208";a="864654282"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 05 Dec 2010 03:19:33 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 5 Dec 2010 19:19:32 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Sun, 5 Dec 2010
	19:19:31 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Date: Sun, 5 Dec 2010 19:19:17 +0800
Thread-Topic: [poky] sstate status
Thread-Index: AcuTsXV1Rj5yZu0iR2uDEkF1eF8C8AAu6AGQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D475430F6@shsmsx502.ccr.corp.intel.com>
References: <201012031634.56033.paul.eggleton@linux.intel.com>
	<4CF97DC2.8040209@mlbassoc.com> <4CFA3868.4020604@mlbassoc.com>
In-Reply-To: <4CFA3868.4020604@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: C3DF EnVg E5GI FrXr Ikv6 Jz6P KaSJ RAzT REjE SLDt Tm0p
	UxLR V4Ko WsHp eWy0 e1wc; 3;
	ZwBhAHIAeQBAAG0AbABiAGEAcwBzAG8AYwAuAGMAbwBtADsAcABhAHUAbAAuAGUAZwBnAGwAZQB0AG8AbgBAAGwAaQBuAHUAeAAuAGkAbgB0AGUAbAAuAGMAbwBtADsAcABvAGsAeQBAAHkAbwBjAHQAbwBwAHIAbwBqAGUAYwB0AC4AbwByAGcA;
	Sosha1_v1; 7; {AEBE8954-42CE-49B6-A2AB-DC55EC911BFD};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Sun,
	05 Dec 2010 11:19:17
	GMT;UgBFADoAIABbAHAAbwBrAHkAXQAgAHMAcwB0AGEAdABlACAAcwB0AGEAdAB1AHMA
x-cr-puzzleid: {AEBE8954-42CE-49B6-A2AB-DC55EC911BFD}
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
X-List-Received-Date: Sun, 05 Dec 2010 11:19:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Gary Thomas
>Sent: Saturday, December 04, 2010 8:48 PM
>
>On 12/03/2010 04:31 PM, Gary Thomas wrote:
>> On 12/03/2010 09:34 AM, Paul Eggleton wrote:
>>> Hi all,
>>>
>>> I've been doing some tests with sstate, and I've managed to get to a
>>> stage where I can share the SSTATE_DIR between my two machines (one
>>> running Fedora 14 and the other Kubuntu 10.10) and almost get a
>>> successful build from a clean TMPDIR. My last test got to
>>> poky-image-minimal.do_rootfs and then failed due to some kind of
>>> package dependency issue:
>>>
>>> --------- snip ---------
>>> | Processing rpm...
>>> | Processing zypper...
>>> | error: Failed dependencies:
>>> | elfutils>=3D 0.148 is needed by rpm-5.1.10-r7.i586
>>> | libaugeas0>=3D 0.7.3 is needed by
>>> zypper-1.4.7+git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r1.i586
>>> | ERROR: Task failed: ('function do_rootfs failed',
>>>
>'/home/pokystuff/tmp/work/qemux86-poky-linux/poky-image-minimal-1.0-r0/tem=
p/log.
>do_rootfs.6874')
>>>
>>> --------- snip ---------
>>>
>>> A "bitbake -c clean augeas elfutils" and then "bitbake
>>> poky-image-minimal" again went through OK (and built the
>>> aforementioned recipes from sstate) , so I'm not sure what went wrong
>>> here.
>>>
>>> My current state of work is in the paule/sstate contrib branch, which
>>> is based on Kevin's tk/sstate branch. Kevin, I think the sooner we can
>>> move this towards master the better, then we can get some wider testing=
.
>>>
>>> FYI Joshua has made bug #507 into a tracking bug for current sstate
>>> issues:
>>> http://bugzilla.pokylinux.org/show_bug.cgi?id=3D507
>>
>> I gave this a simple try and it failed miserably. Working from a copy of
>> Paul's branch in poky-contrib, here's what I did:
>>
>> * On machine A (x86 Fedora 11)
>> % bitbake poky-image-minimal
>>
>> * On machine B (x86 Fedora 13)
>> -- Copy sstate-cache from machine A to /tmp/sstate-cache (rsync with
>> all perms & timestamps preserved)
>> -- Using the identical conf/local.conf file from machine A, except
>> I set up SSTATE_MIRRORS like this
>> SSTATE_MIRRORS ?=3D "\
>> file://.* file:///tmp/sstate-cache/"
>> % bitbake poky-image-minimal
>>
>> Fell apart pretty badly. Look at the output
>> http://www.mlbassoc.com/poky/poky_with_sstate.out
>>
>> Also, it seemed to be rebuilding a lot of packages. IMO, there's
>> no reason it should have to rebuild _any_
>>
>
>One thing that seems to be significant is the base build directory path.
>In the case above, they did not match, i.e.
>   * On machine A, BUILDDIR=3D/tmp/sstate_testing
>   * On machine B, BUILDDIR=3D/home/local/my_sstate_test
>I tried it this way as it matches my [customer's] expected usage.

I think in usual case the directory paths would mismatch. So let's stick to=
 that
configuration to expose more issues. In my previous debug, I have made it
in a good shape but would now turn to RP's branch to try more experiments.

It would be good if you also try that one:
http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Drpurdie/tweaks=
2

>
>I've rerun the experiment again where I used identical paths on both
>machines and the results were vastly improved.  It still takes a horrible
>length of time (64 minutes on a fast 4 processor box) and rebuilds way to
>many packages for just replaying what's already been done though (IMO).
>Results are at
>   http://www.mlbassoc.com/poky/poky_with_sstate_same_paths.out
>

In my run ~25min are consumed just for sstate check/installation on a NHM 4=
-core box.=20
then several minutes for rootfs generation if two builds totally match. the=
 slow sstate
phase comes from same reason as a slow build - the 'exec' overhead. I use '=
sato' as
the target.

In your case, however there're still some packages rebuilt, such as gzip-na=
tive,
unifdef-native, eglibc-initial, ncurses, etc. and also gcc related packages=
 are rebuilt=20
which just consumes time. Has your source tree changed between the two buil=
ds?

Thanks
Kevin



