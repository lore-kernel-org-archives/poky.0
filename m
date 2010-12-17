Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A8FC4C80B71
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 23:31:11 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2010 21:30:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,359,1288594800"; d="scan'208";a="869195485"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 21:30:39 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 13:30:07 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 17 Dec 2010 13:30:06 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>
Date: Fri, 17 Dec 2010 13:29:58 +0800
Thread-Topic: perl binary hard-code path hurts sstate
Thread-Index: Acudkl/NBGPZudlmQkiFDIJ9N2W/gwAEnCmAAAD5tdA=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F4099DD@shsmsx502.ccr.corp.intel.com>
References: <4D0ABF1C.6090706@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
	<4D0AC7D8.8080001@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409868@shsmsx502.ccr.corp.intel.com>
	<4D0ACB43.8050909@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409997@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F409997@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: IrGx JGBe JKXG JiKn KVfS Lffu LuTq L6UP MBSl PZeP UKS2
	VIBR VjqA VrAf WGEe Wut4; 2;
	cABhAHUAbAAuAGUAZwBnAGwAZQB0AG8AbgBAAGwAaQBuAHUAeAAuAGkAbgB0AGUAbAAuAGMAbwBtADsAcABvAGsAeQBAAHAAbwBrAHkAbABpAG4AdQB4AC4AbwByAGcA;
	Sosha1_v1; 7; {A10AD9DB-FDCA-4B44-8277-64D893BC50E4};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Fri,
	17 Dec 2010 05:29:58 GMT;
	cABlAHIAbAAgAGIAaQBuAGEAcgB5ACAAaABhAHIAZAAtAGMAbwBkAGUAIABwAGEAdABoACAAaAB1AHIAdABzACAAcwBzAHQAYQB0AGUA
x-cr-puzzleid: {A10AD9DB-FDCA-4B44-8277-64D893BC50E4}
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>, "Purdie,
	Richard" <richard.purdie@intel.com>
Subject: perl binary hard-code path hurts sstate
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
X-List-Received-Date: Fri, 17 Dec 2010 05:31:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

(change the title to better reflect the ongoing thread)

sstate.bbclass solves the absolute path issue by encoding a special pattern
(FIXMESTAGINGDIR) in all sysroot paths captured in plain text files (header=
s,=20
config files, etc.), and then replace them with new path when installing in=
to a=20
different directory. This works well until below issue is reported.

The problem is that perl includes absolute path inside its binary:
	xxx/usr/lib/perl/5.8.8/CORE/libperl.so
(Nitin, please correct me whether this is the actual case)

I'm not sure how to work around it to allow a successful sstate reuse.

On the other hand, perhaps we could introduce some blacklist to mark some
packages not sstate-able? I think such case is rare. After rebuilding perl =
from
scratch in the new build dir, the error disappears and the build is continu=
ing.
I'll see whether there're other similar issues cross the build.

Paul tried two machine before. I guess this issue doesn't expose earlier pe=
rhaps
because he is using same build hierarchy on two machines...

Thanks
Kevin

>From: Tian, Kevin
>Sent: Friday, December 17, 2010 12:47 PM
>
>>From: Garman, Scott A
>>Sent: Friday, December 17, 2010 10:30 AM
>>
>>On 12/16/2010 06:19 PM, Tian, Kevin wrote:
>>>> I'm guessing Perl creates a configuration file somewhere in the sysroo=
t
>>>> which contains full pathnames to it's Perl module directories. That
>>>> config file gets rolled into the prebuild package and cannot be used o=
n
>>>> another build directory.
>>>>
>>>
>>> I think so, just curious how it may be reproduced in my side. I just ha=
ve one
>>> linux box in front now. :/
>>>
>>> Or could you search which file @INC actually points to and its content?
>>
>>It appears that @INC is encoded into the perl interpreter itself. cd
>>into your native sysroot directory and run ./usr/bin/perl -V
>>
>>To reproduce this, bitbake an image in one directory. Then, create a
>>separate directory somewhere else, and copy your sstate-cache over to
>>the second build area. Finally (and this is important), rename your
>>original build area.
>>
>>I'd bet that will make this reproducable.
>>
>
>I assume that you're not using the latest master, correct? I'm asking here=
 as I
>encountered other errors earlier than this one due to a 'noexec' change fr=
om RP
>yesterday, and thus your info would confirm my guess. :-)
>
>Then after revert that commit, now I do reproduce this with same error as =
yours,
>except that it happens on git-native. This is understood as I think all pe=
rl related
>scripts will hit this issue.
>
>However I haven't found which bit contains that bad link pointing to origi=
nal build
>directory. I checked tmp/sysroot/i686-linux/usr/lib/perl/5.8.8/Config.pm, =
where
>all hard paths are changed to new build directory correctly... :/
>
>Thanks
>Kevin
>_______________________________________________
>poky mailing list
>poky@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/poky

