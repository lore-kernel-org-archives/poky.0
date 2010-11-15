Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4AD0D4C80815
	for <poky@lists.pokylinux.org>; Sun, 14 Nov 2010 22:06:50 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Nov 2010 20:06:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,198,1288594800"; d="scan'208";a="857554687"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 14 Nov 2010 20:06:38 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 15 Nov 2010 12:06:28 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 15 Nov 2010 12:06:26 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, Gary Thomas <gary@mlbassoc.com>
Date: Mon, 15 Nov 2010 12:06:25 +0800
Thread-Topic: [poky] SSTATE builds more broken than I thought
Thread-Index: AcuEJYqurQN4uQ4HSGGZReOM/DDgtAAU/psg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D2A9B5160@shsmsx502.ccr.corp.intel.com>
References: <4CDB2A52.6060400@mlbassoc.com> <1289539963.1272.3055.camel@rex>
	<4CDCF848.9020703@mlbassoc.com> <1289550656.1272.3179.camel@rex>
	<4CDCFC57.20909@mlbassoc.com> <1289604672.1272.4108.camel@rex>
	<4CDDD3E7.3000305@mlbassoc.com> <1289757488.1272.4980.camel@rex>
In-Reply-To: <1289757488.1272.4980.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: SSTATE builds more broken than I thought
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
X-List-Received-Date: Mon, 15 Nov 2010 04:06:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Richard Purdie
>Sent: Monday, November 15, 2010 1:58 AM
>To: Gary Thomas
>Cc: Poky
>Subject: Re: [poky] SSTATE builds more broken than I thought
>
>On Fri, 2010-11-12 at 16:55 -0700, Gary Thomas wrote:
>> On 11/12/2010 04:31 PM, Richard Purdie wrote:
>> > On Fri, 2010-11-12 at 01:35 -0700, Gary Thomas wrote:
>> >> On 11/12/2010 01:30 AM, Richard Purdie wrote:
>> >>> On Fri, 2010-11-12 at 01:18 -0700, Gary Thomas wrote:
>> >>>>> Are these all files or are they symlinks? Are they just present fo=
r
>> >>>>> deploy-ipk or are there others?
>> >>>>
>> >>>> They are files.
>> >>>>
>> >>>> Sorry, but I don't understand your other question.  These are the o=
nly
>> >>>> extra files polluting the tree, except for Python *.py? object file=
s
>> >>>> which are also always created.
>> >>>
>> >>> Are there any files related to other sstate tasks such as
>> >>> populate-sysroot*.tgz or package*.tgz or is there just *deploy-ipk*.=
tgz?
>> >>>
>> >>> In other words I'm wondering if this is something specific to the
>> >>> deploy-ipk sstate task...
>> >>
>> >> The only extra files created are *deploy-ipk*.tgz
>> >> This most certainly is restricted to the deploy-ipk sstate task and o=
nly
>> >> happens if SSTATE_MIRRORS is defined.
>> >
>> > This should be fixed in ae98f7eacb9e61fe086d88dc694b4c651af9fee3, it
>> > turns out to be an issue with the local fetcher not searching DL_DIR.
>>
>> Trying the same process as in bug #526, it failed with this error:
>[...]
>
>Right, I messed up those commits. I should know better than make commits
>when travelling and jetlagged.
>
>I ended up reverting the first fixes and pushing a set of different
>fixes.
>
>Previously you (and I think Kevin Tian) reporting bitbake spending a
>huge amount of time thinking about shared state. When I was debugging
>this I noticed a potential cause of that, my local test setups were
>evidently just too fast to notice it. I added another commit:

how did your local test exactly setup?

>
>http://git.pokylinux.org/cgit.cgi/poky/commit/?id=3D89929e1f283c8508c505c9=
731ad93388
>0abf22a1
>
>which should make things faster (n^2 faster where n is the number of
>tasks).

I did a quick test just now, the result is not that promising. The total ti=
me
of sstate setscene took ~8min this time, however there're also less tasks
executed:

Previous run: ~25min, sstate-setscene starts from 133 of 1673 tasks
Current run: ~8min, sstate_setscene starts from 1283 of 1673 tasks

From the build process, there did have more recipes rebuilt from scratch
instead of taking prebuilt this time, such as gcc, etc. The build even didn=
't
finish, with C preprocessor sanity check failure on gcc-runtime.

This may not be a good test though, as I'm still using the prebuilts genera=
ted
from last week (at d9ff2f897aa271e6b2d7e4dcaf8b8d19de513b50), while
the 2nd build uses latest ddbf5e9c48afdeefeaec120a02d43536f5fd1ce1 plus
my siggen fix.

I'll redo a slow test by having both builds from the same commit, while kee=
ping
original env for further analysis later.

Thanks
Kevin

