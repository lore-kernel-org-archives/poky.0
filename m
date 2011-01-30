Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69CEB4C8018D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 16:04:38 -0600 (CST)
Received: by wye20 with SMTP id 20so5158891wye.35
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 14:04:37 -0800 (PST)
Received: by 10.216.87.130 with SMTP id y2mr5367739wee.58.1296425077322;
	Sun, 30 Jan 2011 14:04:37 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id o19sm10420627wee.26.2011.01.30.14.04.36
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sun, 30 Jan 2011 14:04:36 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D45D611.1040606@intel.com>
Date: Sun, 30 Jan 2011 23:04:35 +0100
Message-Id: <F4B5B2D2-9064-4000-B10B-FFD7E6081C0A@dominion.thruhere.net>
References: <cover.1296372804.git.jingdong.lu@windriver.com>	<a598a01bc519ea080e73605f4ff70b499bcab645.1296372804.git.jingdong.lu@windriver.com>
	<B32A4CB7-E47B-43F2-A71C-912D5C2D1334@dominion.thruhere.net>
	<4D45D611.1040606@intel.com>
To: Saul Wold <saul.wold@intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/5] cups: add cups 1.4.6
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
X-List-Received-Date: Sun, 30 Jan 2011 22:04:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 30 jan 2011, om 22:20 heeft Saul Wold het volgende geschreven:

> On 01/30/2011 08:01 AM, Koen Kooi wrote:
>>=20
>> Op 30 jan 2011, om 08:36 heeft Jingdong Lu het volgende geschreven:
>>=20
>>> From: Jingdong Lu<jingdong.lu@windriver.com>
>>>=20
>>> This package has been added from Open Embedded.
>>> Changes from the Open Embedded version:
>>> * Update to version 1.4.6
>>> * Add SUMMARY, LIC_FILES_CHKSUM, checksum of source
>>> * Remove skip_tools.patch
>>=20
>> The skip_tools patch is needed for cross-compiling, without it it =
will try to run genstrings and the ppd generator. I cleaned up the cups =
in meta-oe and that builds cleanly for armv7a now. You can steal the =
updated skip_tools patch from there.
>>=20
> Thanks for pointing this out.
>=20
> Jingdong: can you please respin this one again with the input from =
Koen. (Thanks).
>=20
>> I also updated the license to GPLv2 and LGPLv2, but I'm not sure how =
to add the apple and ssl exception is lists in LICENSE.txt.
>>=20
> Koen,
>=20
> Is seems we should also the mention KSC (Kerberos Support Code) since =
it has it's own copyright and license.  As for the Apple and SSL =
exceptions, I am not sure they apply in this case since the cups work in =
this case targets a Linux based operating system, not an Apple one.
>=20
> Remember this is an engineer's opinion, I am not a Lawyer, nor to I =
play one on TV!  We can consult the lawyers if needed.

It has 2 seperate exceptions, one for apple and one for ssl. If we =
decide to enable openssl support in cups it won't be a gpl violation :)=

