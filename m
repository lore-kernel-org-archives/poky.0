Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0276D4C81110
	for <poky@pokylinux.org>; Wed, 22 Dec 2010 22:52:37 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Dec 2010 20:52:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,217,1291622400"; d="scan'208";a="586527428"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 22 Dec 2010 20:52:36 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 23 Dec 2010 12:52:22 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 23 Dec 2010 12:52:21 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 23 Dec 2010 12:52:20 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 23 Dec 2010 12:52:04 +0800
Thread-Topic: [poky] perl binary hard-code path hurts sstate
Thread-Index: AcuhIcrLOEgn/alKT4OAvf5ihS6TCwBOnb1A
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F6A4842@shsmsx502.ccr.corp.intel.com>
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
In-Reply-To: <4D10C452.1000405@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: AROl Atwy Be+5 D0Ye EiSl IBkO JaoC Ndug P7ib WBRr WDVD
	XKFT ZRaB jdkl l251 oK+k; 4;
	YwBsAGEAcgBzAG8AbgBAAGsAZQByAGcAbwB0AGgALgBjAG8AbQA7AGcAYQByAHkAQABtAGwAYgBhAHMAcwBvAGMALgBjAG8AbQA7AHAAYQB1AGwALgBlAGcAZwBsAGUAdABvAG4AQABsAGkAbgB1AHgALgBpAG4AdABlAGwALgBjAG8AbQA7AHAAbwBrAHkAQABwAG8AawB5AGwAaQBuAHUAeAAuAG8AcgBnAA==;
	Sosha1_v1; 7; {3B2BE984-5678-4521-992A-8809F0543248};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Thu,
	23 Dec 2010 04:52:05 GMT;
	UgBFADoAIABbAHAAbwBrAHkAXQAgAHAAZQByAGwAIABiAGkAbgBhAHIAeQAgAGgAYQByAGQALQBjAG8AZABlACAAcABhAHQAaAAgAGgAdQByAHQAcwAgAHMAcwB0AGEAdABlAA==
x-cr-puzzleid: {3B2BE984-5678-4521-992A-8809F0543248}
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
X-List-Received-Date: Thu, 23 Dec 2010 04:52:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Gary Thomas [mailto:gary@mlbassoc.com]
>Sent: Tuesday, December 21, 2010 11:14 PM
>
>On 12/21/2010 05:30 AM, Gary Thomas wrote:
>> On 12/21/2010 04:51 AM, Tian, Kevin wrote:
>>>> From: Tian, Kevin
>>>> Sent: Tuesday, December 21, 2010 9:10 AM
>>>>
>>>>> From: Gary Thomas
>>>>> Sent: Friday, December 17, 2010 11:09 PM
>>>>>
>>>>> On 12/17/2010 06:58 AM, Richard Purdie wrote:
>>>>>> On Fri, 2010-12-17 at 06:49 -0700, Chris Larson wrote:
>>>>>>> These sorts of issues aren't new, or fun, sadly. We've run into man=
y
>>>>>>> like this using packaged staging. We had to use the variable to
>>>>>>> disable packaged-staging for exactly this reason, so something simi=
lar
>>>>>>> for sstate would indeed be useful for this.
>>>>>>
>>>>>> In cases like this I'd suggest adding the encoded path into the chec=
ksum
>>>>>> via vardeps. This means the sstate package will be reused when the p=
ath
>>>>>> matches but not otherwise.
>>>>>>
>>>>>> We can then work on removing the dependencies which I agree is the g=
oal
>>>>>> but we should get them identified first.
>>>>>
>>>>> Sadly, this problem is not confined to perl. I just tried this experi=
ment:
>>>
>>> Hi, Gary, I can't reproduce in my side, though I use only one machine.
>>>
>>>>> * Build Poky on MachineA to some directory $NEW
>>>>> * Copy Poky ($POKYBASE) and $NEW/sstate-cache to MachineB, in this ca=
se
>>>>> the path for $POKYBASE is the same on both machines but $NEW differs.
>>>>> MachineA:$NEW does not exist on MachineB
>>>>> * Try to build on Machine B, pointing SSTATE_MIRRORS to $NEW/sstate-c=
ache
>>>>> This build is in $NEW2
>>>
>>> compare to your steps, mine is:
>>>
>>> * build Poky in $DIR1, with sstate generated in ${SSTATE-CACHE} (a glob=
al one)
>>> * then with same $POKYBASE, create a new build $DIR2, with SSTATE_MIRRO=
RS
>>> pointing to ${SSTATE-CACHE}
>>> * move $DIR1 to $DIR1.bak
>>>
>>> This way if there's reference to $DIR1, I should be able to observe fai=
lure
>>>
>>>>> The process fails for me building the kernel:
>>>>> | arm-poky-linux-gnueabi-ld: libgcc.a: No such file: No such file or =
directory
>>>>> Looking carefully, I can see that the compiler is looking for libgcc.=
a in
>>>>> the directory path $NEW that is only on MachineA.
>>>
>>> However I didn't see above failure and most sstate packages could be re=
used
>>> successfully except several ones depending on perl-native...
>>>
>>>>>
>>>>> So this is the same problem Paul had, just for the cross compiler
>>>>> instead of perl.
>>>>>
>>>>> n.b. Is there a bug # I should use to be tracking this?
>>>>>
>>>>
>>>> I'll see whether I can reproduce this after RP's new fix about perl-na=
tive.
>>>
>>> so Gary, could you try latest poky master or verify whether my single-m=
achine steps
>>> may expose same failure in your side? Or is there any step not equivale=
nt between
>>> our cases?
>>
>> Yes, I'll try it now, thanks
>>
>
>Still fails.  There is one step I wasn't clear on - if you
>just follow the steps above, you'll succeed and get a working
>result, using only the staged (sstate cached) packages.  However,
>if you try and build some other package, or in my case I forced
>a build of the kernel, it fails.
>
>Amended steps to reproduce this failure:
>   * Build Poky on MachineA, results in MachineA:NEW1
>   * Copy MachineA:NEW1/sstate-cache to MachineB:NEW1_CACHE
>   * Build Poky on MachineB, results in MachineB:NEW2, using
>     MachineB:NEW1_CACHE for SSTATE_MIRRORS
>   * Disable SSTATE_MIRRORS in conf/local.conf on MachineB:NEW2
>   * Build a package from scratch.  In my case, I rebuilt the kernel:
>     - bitbake virtual/kernel -c clean
>     - rm sstate-cache/sstate-linux-am*
>     - bitbake virtual/kernel
>     My kernel is based on a local recipe linux-am_X.Y.Z
>
>     Note: I tried to simplify this process by using 'cleanall'
>     but ran into a fetch problem (reported separately)

I finally found the 2nd machine and followed the exact steps as above based=
 on
same commit you provided. Again, I can't reproduce your problem, and everyt=
hing
works fine by trying fresh build for several recipes including kernel.

I'm not sure how much you have added in your own layer (like your own kerne=
l
here), and it'd be helpful if you could try a pure poky master (and if poss=
ible a
single machine test to ease future replication).

BTW, my MachineA is Ubuntu9.04 and MachineB is FC13. Both are 32bit.

In your specific case, could you double-confirm whether libgcc.a exists in =
your
MachineB, and provide some info how you identified MachineA is referenced
for that library?

Thanks
Kevin

>
>Notes:
>   * For my testing, I used a simple package set, e.g. poky-image-minimal
>   * My Poky tree is based on today's master
>4cd40dbaa8aef7b6b9ff9ce892a576b802f4b1ec
>   * I notice that this process now rebuilds some 20 packages from scratch
>     on MachineB.  These include the perl-native, etc, that this thread ha=
s
>     been discussing.  Is this expected?
>
>Thanks for working on this; it's getting close and will be
>a big help to my customers.
>

