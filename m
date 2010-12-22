Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E23BC4C80050
	for <poky@pokylinux.org>; Wed, 22 Dec 2010 07:38:48 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Dec 2010 05:38:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,213,1291622400"; d="scan'208";a="870881326"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 22 Dec 2010 05:38:46 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 22 Dec 2010 21:38:45 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 22 Dec 2010 21:38:45 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 22 Dec 2010 21:38:44 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 22 Dec 2010 21:38:42 +0800
Thread-Topic: [poky] perl binary hard-code path hurts sstate
Thread-Index: Acuh1NEZ1PtjmLWBQ9qO51qHZKThXQAB178A
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F6A4621@shsmsx502.ccr.corp.intel.com>
References: <4D0ABF1C.6090706@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
	<4D0AC7D8.8080001@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409868@shsmsx502.ccr.corp.intel.com>
	<4D0ACB43.8050909@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409997@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F4099DD@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=ViynyC5=Dmm_MDqOLz8_R-ThxxPwHYYRWBU9a@mail.gmail.com>
	<1292594329.25087.40.camel@rex>	<4D0B7CF4.4070407@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F6A3C8D@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F6A40FF@shsmsx502.ccr.corp.intel.com>
	<4D109DE4.2070901@mlbassoc.com> <4D10C452.1000405@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F6A421D@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F6A45FF@shsmsx502.ccr.corp.intel.com>
	<4D11F091.8000701@mlbassoc.com>
In-Reply-To: <4D11F091.8000701@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	Chris Larson <clarson@kergoth.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: perl binary hard-code path hurts sstate
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
X-List-Received-Date: Wed, 22 Dec 2010 13:38:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Gary Thomas [mailto:gary@mlbassoc.com]
>Sent: Wednesday, December 22, 2010 8:35 PM
>
>On 12/22/2010 05:07 AM, Tian, Kevin wrote:
>> Hi, Gary,
>>
>> I caught another bug when I did "bitbake virtual/kernel" following your =
instructions,
>> of course with a slightly change adapting to my single machine case (I e=
nsure my
>> original build dir is renamed and also the PSTATE_MIRRORS is commented).=
 It's
>> about CFLAGS used to compile perf tool, which however is very 'perf' spe=
cific which
>> I'm still looking for a right fix.
>>
>> I did try other recipes though, both native (gzip-native) and target rec=
ipes (db,
>> makedevs, ...) which all works as expected. This is quite different from=
 your error
>> which I think is common blocking all target recipes in your side.
>>
>> So when I'm tackling the 'perf' issue, could you post your logs in case =
we can
>> eye-catch some hints there? I think both the 1st build and 2nd failure l=
og are useful
>> here.
>>
>> In general as I replied in earlier mail, your error is very likely to be=
 related to the
>> fact that one or some of gcc recipes got rebuild in your experiment, whi=
ch need
>> verification from your log and I don't quite understand yet. :-)
>
>No GCC packages were rebuilt as part of my experiment.  Note that
>I could have just as easily reproduced it by bumping PR in my kernel
>recipe on the second machine, just to force it to be rebuilt.
>
>The problem here is that the GCC built on the first machine (used
>as basis of the sstate-cached packages) has some hard-coded paths
>in it which don't exist on the second machine.  Any package built
>using that cross compiler could suffer this error.

GCC always contains some hard links to original build dir, through --with-s=
ysroot
or --with-build-sysroot as the default config. Poky encapsulates ${CC} with=
=20
"--sysroot=3D${STAGING_DIR_TARGET} to override build config to actual targe=
t
sysroot, which should also work in 2nd build dir if it's set correctly. In =
my failure,
the Makefile of kernel perf tool overrides ${CC} directly which makes --sys=
root
abandoned and then failed to search some header files.

so your case looks weird to me. Just double confirm, any recipe in your
2nd build now will fail following same steps, right?

>
>It turns out my list of packages rebuilt by perl-native _was_ 10.

that's same list as what I observed so far.

>My test count was just too stupid:
>   % ls -l tmp/work/*/*/temp/log.do_compile* | wc
>which sadly included the symlinks.  Leaving the symlinks out, I
>got this package set:
>    armv7a-poky-linux-gnueabi/libtool-cross-2.4-r0
>    my_board-poky-linux-gnueabi/my-console-image-1.0-r0
>    i686-linux/git-native-1.7.3.2-r0
>    i686-linux/libxml2-native-2.7.7-r2
>    i686-linux/libxslt-native-1.1.26-r0
>    i686-linux/openssl-native-0.9.8p-r2
>    i686-linux/perl-native-5.8.8-r14
>    i686-linux/pseudo-native-0.0+git0+c9792c7acdb1cac90549ff08db12a8bf0c53=
cdcf-r16
>    i686-linux/python-native-2.6.6-nk0.0
>    i686-linux/rpm-native-5.1.10-r7

In the build where you see above kernel failure, is the kernel the only one
being rebuilt, or are there any other packages rebuild triggered implicitly=
?

I'll try to find a 2nd machine tomorrow...

Thanks
Kevin

