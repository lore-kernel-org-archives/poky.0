Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61FEF4C80039
	for <poky@pokylinux.org>; Mon, 20 Dec 2010 19:09:54 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 17:09:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,205,1291622400"; d="scan'208";a="585629234"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 17:09:52 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 21 Dec 2010 09:09:51 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 21 Dec 2010 09:09:51 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Tue, 21 Dec 2010 09:09:50 +0800
Thread-Topic: [poky] perl binary hard-code path hurts sstate
Thread-Index: Acud/IQ9lNR7hq4HS5iLzcJpphZQtACrxzwQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F6A3C8D@shsmsx502.ccr.corp.intel.com>
References: <4D0ABF1C.6090706@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
	<4D0AC7D8.8080001@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409868@shsmsx502.ccr.corp.intel.com>
	<4D0ACB43.8050909@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409997@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F4099DD@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=ViynyC5=Dmm_MDqOLz8_R-ThxxPwHYYRWBU9a@mail.gmail.com>
	<1292594329.25087.40.camel@rex> <4D0B7CF4.4070407@mlbassoc.com>
In-Reply-To: <4D0B7CF4.4070407@mlbassoc.com>
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
X-List-Received-Date: Tue, 21 Dec 2010 01:09:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Gary Thomas
>Sent: Friday, December 17, 2010 11:09 PM
>
>On 12/17/2010 06:58 AM, Richard Purdie wrote:
>> On Fri, 2010-12-17 at 06:49 -0700, Chris Larson wrote:
>>> These sorts of issues aren't new, or fun, sadly.  We've run into many
>>> like this using packaged staging.  We had to use the variable to
>>> disable packaged-staging for exactly this reason, so something similar
>>> for sstate would indeed be useful for this.
>>
>> In cases like this I'd suggest adding the encoded path into the checksum
>> via vardeps. This means the sstate package will be reused when the path
>> matches but not otherwise.
>>
>> We can then work on removing the dependencies which I agree is the goal
>> but we should get them identified first.
>
>Sadly, this problem is not confined to perl.  I just tried this experiment=
:
>   * Build Poky on MachineA to some directory $NEW
>   * Copy Poky ($POKYBASE) and $NEW/sstate-cache to MachineB, in this case
>     the path for $POKYBASE is the same on both machines but $NEW differs.
>     MachineA:$NEW does not exist on MachineB
>   * Try to build on Machine B, pointing SSTATE_MIRRORS to $NEW/sstate-cac=
he
>     This build is in $NEW2
>The process fails for me building the kernel:
>   | arm-poky-linux-gnueabi-ld: libgcc.a: No such file: No such file or di=
rectory
>Looking carefully, I can see that the compiler is looking for libgcc.a in
>the directory path $NEW that is only on MachineA.
>
>So this is the same problem Paul had, just for the cross compiler
>instead of perl.
>
>n.b. Is there a bug # I should use to be tracking this?
>

I'll see whether I can reproduce this after RP's new fix about perl-native.

Thanks
Kevin

