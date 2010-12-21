Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E50E4C808B0
	for <poky@pokylinux.org>; Tue, 21 Dec 2010 05:51:49 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2010 03:51:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,207,1291622400"; d="scan'208";a="689260749"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2010 03:51:48 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 21 Dec 2010 19:51:46 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 21 Dec 2010 19:51:47 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 21 Dec 2010 19:51:45 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Gary Thomas <gary@mlbassoc.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue, 21 Dec 2010 19:51:42 +0800
Thread-Topic: [poky] perl binary hard-code path hurts sstate
Thread-Index: Acud/IQ9lNR7hq4HS5iLzcJpphZQtACrxzwQABYuBtA=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F6A40FF@shsmsx502.ccr.corp.intel.com>
References: <4D0ABF1C.6090706@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
	<4D0AC7D8.8080001@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409868@shsmsx502.ccr.corp.intel.com>
	<4D0ACB43.8050909@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409997@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F4099DD@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=ViynyC5=Dmm_MDqOLz8_R-ThxxPwHYYRWBU9a@mail.gmail.com>
	<1292594329.25087.40.camel@rex> <4D0B7CF4.4070407@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F6A3C8D@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F6A3C8D@shsmsx502.ccr.corp.intel.com>
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
X-List-Received-Date: Tue, 21 Dec 2010 11:51:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Tian, Kevin
>Sent: Tuesday, December 21, 2010 9:10 AM
>
>>From: Gary Thomas
>>Sent: Friday, December 17, 2010 11:09 PM
>>
>>On 12/17/2010 06:58 AM, Richard Purdie wrote:
>>> On Fri, 2010-12-17 at 06:49 -0700, Chris Larson wrote:
>>>> These sorts of issues aren't new, or fun, sadly.  We've run into many
>>>> like this using packaged staging.  We had to use the variable to
>>>> disable packaged-staging for exactly this reason, so something similar
>>>> for sstate would indeed be useful for this.
>>>
>>> In cases like this I'd suggest adding the encoded path into the checksu=
m
>>> via vardeps. This means the sstate package will be reused when the path
>>> matches but not otherwise.
>>>
>>> We can then work on removing the dependencies which I agree is the goal
>>> but we should get them identified first.
>>
>>Sadly, this problem is not confined to perl.  I just tried this experimen=
t:

Hi, Gary, I can't reproduce in my side, though I use only one machine.

>>   * Build Poky on MachineA to some directory $NEW
>>   * Copy Poky ($POKYBASE) and $NEW/sstate-cache to MachineB, in this cas=
e
>>     the path for $POKYBASE is the same on both machines but $NEW differs=
.
>>     MachineA:$NEW does not exist on MachineB
>>   * Try to build on Machine B, pointing SSTATE_MIRRORS to $NEW/sstate-ca=
che
>>     This build is in $NEW2

compare to your steps, mine is:

* build Poky in $DIR1, with sstate generated in ${SSTATE-CACHE} (a global o=
ne)
* then with same $POKYBASE, create a new build $DIR2, with SSTATE_MIRRORS
pointing to ${SSTATE-CACHE}
* move $DIR1 to $DIR1.bak

This way if there's reference to $DIR1, I should be able to observe failure

>>The process fails for me building the kernel:
>>   | arm-poky-linux-gnueabi-ld: libgcc.a: No such file: No such file or d=
irectory
>>Looking carefully, I can see that the compiler is looking for libgcc.a in
>>the directory path $NEW that is only on MachineA.

However I didn't see above failure and most sstate packages could be reused
successfully except several ones depending on perl-native...

>>
>>So this is the same problem Paul had, just for the cross compiler
>>instead of perl.
>>
>>n.b. Is there a bug # I should use to be tracking this?
>>
>
>I'll see whether I can reproduce this after RP's new fix about perl-native=
.

so Gary, could you try latest poky master or verify whether my single-machi=
ne steps
may expose same failure in your side? Or is there any step not equivalent b=
etween
our cases?

Thanks
Kevin

