Return-Path: <simonsonc@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 319D6E0059A
	for <poky@yoctoproject.org>; Thu, 29 Mar 2012 06:39:10 -0700 (PDT)
Received: by lagu2 with SMTP id u2so3581696lag.35
	for <poky@yoctoproject.org>; Thu, 29 Mar 2012 06:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=uATxgdJL8+TKpgfu0LYS/1UFyGwAOgY5JvS/CdPZkpg=;
	b=dgzr488K7N7oc9+gBYXbOSTLRwNjmnjjxrr2fud58HCkyTc5EJ24zymBxwuGJdooA1
	SfVFhyES3s4RZOw8S+3n+PEpqE4hEcIIShVyZMhk9BDEqLll43AaBqYwIYwkwCnZZnBc
	ERtSvl9eaRACUXGmUYPdT/ownGSfabqu+vOffOQEqX2+j7QxtifAVt9e22P/alHLlepf
	BSTr7kQb+0a0QoeBZwuaG4M0CRHcsDlYVv2/5cEUrKBFy07glDHWoSzRObtMUzr9i5gH
	V1AmFladHC5dvakdcBwMA5B8NhG6Nn2g2CXUPOcR9EyfHuBinrRXjGDlXwOb2ts9GJNO
	wdLQ==
MIME-Version: 1.0
Received: by 10.152.162.72 with SMTP id xy8mr28109825lab.32.1333028350070;
	Thu, 29 Mar 2012 06:39:10 -0700 (PDT)
Received: by 10.112.66.7 with HTTP; Thu, 29 Mar 2012 06:39:10 -0700 (PDT)
In-Reply-To: <1333027388.17502.2.camel@ted>
References: <cover.1333022130.git.dongxiao.xu@intel.com>
	<eb5271caf52a62ab102078eb90fcd0482b74536e.1333022130.git.dongxiao.xu@intel.com>
	<1333027388.17502.2.camel@ted>
Date: Thu, 29 Mar 2012 08:39:10 -0500
Message-ID: <CANpFMipWhrBppTW5ETPd_zXqc=Ep5i6NvC+ncP3ZgrSknMe7zw@mail.gmail.com>
From: Carl Simonson <simonsonc@gmail.com>
To: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-yocto: Define DISTRO in layer.conf
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
X-List-Received-Date: Thu, 29 Mar 2012 13:39:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 29, 2012 at 8:23 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Thu, 2012-03-29 at 20:01 +0800, Dongxiao Xu wrote:
>> Add the definition of DISTRO variable in meta-yocto/conf/layer.conf,
>> and remove the corresponding definition in local.conf.sample.
>>
>> As we know, if we source oe-init-build-env in Yocto project environment,
>> we will have DISTRO=3D"poky" set in local.conf by default, where the
>> "poky" DISTRO comes from the meta-yocto layer. If user deletes
>> meta-yocto layer from BBLAYERS in bblayers.conf, and then error will
>> happen when bitbake parsing the local.conf, since it could not find
>> where the "poky" DISTRO comes from.
>>
>> Putting the DISTRO definition in layer.conf to avoid defining two
>> related variables (DISTRO and BBLAYERS) in two separate
>> configuration files (local.conf and bblayers.conf).
>>
>> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
>> ---
>> =C2=A0meta-yocto/conf/distro/poky.conf =C2=A0| =C2=A0 =C2=A01 -
>> =C2=A0meta-yocto/conf/layer.conf =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=
=A01 +
>> =C2=A0meta-yocto/conf/local.conf.sample | =C2=A0 =C2=A04 ++--
>> =C2=A03 files changed, 3 insertions(+), 3 deletions(-)
>
> I'm afraid this is the wrong approach. The UI should simply not allow
> selection of a DISTRO option which is no longer available.
>
> Setting DISTRO in local.conf is the way people expect to use the system
> and we can't change that.
>
> Cheers,
>
> Richard
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

Agreed. It's important that DISTRO remains in local.conf. Remember,
also, that local.conf.sample is only a suggestion as to how to
configure your build. The real configuration is in
build/conf/local.conf, and that is meant to be changed freely.

Carl Simonson
simonsonc@gmail.com

