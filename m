Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE001.bigfish.com (am1ehsobe001.messaging.microsoft.com
	[213.199.154.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC366E0030C
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 08:54:04 -0800 (PST)
Received: from mail27-am1-R.bigfish.com (10.3.201.252) by
	AM1EHSOBE001.bigfish.com (10.3.204.21) with Microsoft SMTP Server id
	14.1.225.23; Thu, 12 Jan 2012 16:54:03 +0000
Received: from mail27-am1 (localhost [127.0.0.1])	by mail27-am1-R.bigfish.com
	(Postfix) with ESMTP id 2298E480455;
	Thu, 12 Jan 2012 16:54:03 +0000 (UTC)
X-SpamScore: -7
X-BigFish: VS-7(zz9371I1432N98dKzz1202hzz8275bhz2dhc1ahc1bh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 13,
Received: from mail27-am1 (localhost.localdomain [127.0.0.1]) by mail27-am1
	(MessageSwitch) id 1326387224354638_10781;
	Thu, 12 Jan 2012 16:53:44 +0000 (UTC)
Received: from AM1EHSMHS020.bigfish.com (unknown [10.3.201.241])	by
	mail27-am1.bigfish.com (Postfix) with ESMTP id 49A3C4C0043;
	Thu, 12 Jan 2012 16:53:44 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS020.bigfish.com
	(10.3.206.23) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 12 Jan 2012 16:53:42 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0355.003; Thu, 12 Jan 2012 10:53:40 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [poky] sstate info
Thread-Index: AQHM0Uq8oQGAPfjfAUCEy4RiWbY3eg==
Date: Thu, 12 Jan 2012 16:53:40 +0000
Message-ID: <CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net> <4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net> <4F0EFD47.1070708@mlbassoc.com>
In-Reply-To: <4F0EFD47.1070708@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: sstate info
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 Jan 2012 16:54:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <A69BF2CA0FBAAF488FB2D9309860969C@freescale.net>
Content-Transfer-Encoding: quoted-printable

First off, what version of Yocto are you running? I've made a lot of
fixes post 1.1 release (others have made some as well ;)), and I
believe lots of these fixes will be in the 1.1.1 release. They should
all be in master, although I've not tested master sstate-cache in a
while now.

On Thu, Jan 12, 2012 at 9:33 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> I worked this down to the do_patch in pseudo-native:
> $ bitbake-diffsigs
> p60_poky/tmp/stamps/i686-linux/pseudo-native-1.2-r4.do_patch.sigdata.6e97=
a41d825568db298fdc9dbaed563c
> p60_test_pass1/tmp/stamps/i686-linux/pseudo-native-1.2-r4.do_patch.sigdat=
a.a0d4e99625c211f4f1d793213014ac07
> basehash changed from f5994d735ee2b909b72ee811364befc1 to
> 564be8db4146afa5fc3579dc4c1618d3
> Variable DATE value changed from 20120110 to 20120111
> Hash for dependent task quilt-native_0.50.bb.do_populate_sysroot changed
> from 9307106f3c5dfd49d953e206cb1b6da5 to 24151a370083d625b84a2afb77955021
>

This is telling you that you need to look at the quilt-native task
now. Nothing is wrong about the signature for psuedo-natve.

> Why is DATE as a variable important?
> Why is it not ignored by this statement in ./meta/classes/patch.bbclass?
> =A0 patch_do_patch[vardepsexclude] =3D "DATE SRCDATE PATCHRESOLVE"

DATE is not important, that is why we are explicitly telling the
signature to ignore this variable.

> As is, it seems that the sstate cache is only good on the day it
> was made :-(

This is possible, but you need to check the upstream task that
changed. Since psuedo-native depends on quilt-native it's getting a
new signature since something that changed in quilt-native might
effect psuedo-native.

> Here's what I tried yesterday:
> =A0* Create a new build, e.g.
> =A0 =A0% . /local/poky/oe-init-build-env /local/test_pass1
> =A0 =A0-- adjust local.conf to match desired target
> =A0 =A0% bitbake core-image-minimal
> =A0* Create a new build, using the previous one's sstate-cache
> =A0 =A0% . /local/poky/oe-init-build-env /local/test_pass2
> =A0 =A0-- adjust local.conf to match desired target
> =A0 =A0-- enable sstate cache via these lines in local.conf:
> =A0 =A0 =A0 =A0 SSTATE_MIRRORS ?=3D "\
> =A0 =A0 =A0 =A0 file://.* file:///local/test_pass1/sstate-cache/"
> =A0 =A0% bitbake core-image-minimal
>
> This all went to plan - the sstate cache was reused for every package exc=
ept
> one. =A0For some reason, dbus-1 had to be rebuilt.

This should work. I'm building on one machine and reusing on others
including native cache. I'm doing thing on something close to what
1.1.1 will look like.

> Today, I tried it again, just like the second step. =A0Low and behold,
> virtually
> none of the sstate packages were reused :-( =A0This seems totally broken =
to me
> and has been filed as bug #1896

-M=


