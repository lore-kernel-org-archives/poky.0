Return-Path: <kergoth@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CDB74C80A5B
	for <poky@yoctoproject.org>; Mon, 18 Jul 2011 09:13:17 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxh3 with SMTP id 3so2629379vxh.35
	for <poky@yoctoproject.org>; Mon, 18 Jul 2011 07:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=Zeypjq3cKatU+DHoY2R558HJK72qzLvbbGwK4iIG0iw=;
	b=nJL/JyrA2MiXRRdU5vpLfCP7qreKENAgv9r/YpmSvCLMP8Sx/TB9tP+w2li9tb1MoA
	IHf6BnNTx9ZwKgraKYrrGWCYL6IK/rzPw0zXy5ajrmtkN9HhY3uJTx+4SGbBITYPYvAT
	OPBrgfrd8KEJTRHiXSWctjNXfI2eC61RB0hk8=
Received: by 10.52.76.197 with SMTP id m5mr5914756vdw.308.1310998397202; Mon,
	18 Jul 2011 07:13:17 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.181.104 with HTTP; Mon, 18 Jul 2011 07:12:57 -0700 (PDT)
In-Reply-To: <4E243DA5.4090207@mlbassoc.com>
References: <4E243A67.3090400@mlbassoc.com>
	<CABcZANmcWYoF4wb6Nx=w9LDhaRdzSdhc9XOHD7n8w_NfskGThA@mail.gmail.com>
	<4E243DA5.4090207@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 18 Jul 2011 07:12:57 -0700
X-Google-Sender-Auth: iHOhUmaq9_BBmgSiqbYDwTQ7L6M
Message-ID: <CABcZANnQ9J9DDdVMgjbF2nKwcwOBcMp9XyHyBDwRyiHAYvu=iA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Order of .conf processing?
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
X-List-Received-Date: Mon, 18 Jul 2011 14:13:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 18, 2011 at 7:05 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 07/18/2011 07:59 AM, Chris Larson wrote:
>>
>> On Mon, Jul 18, 2011 at 6:51 AM, Gary Thomas<gary@mlbassoc.com> =C2=A0wr=
ote:
>>>
>>> What's the order of processing of the various .conf files?
>>>
>>> It seems to me that bitbake.conf must be first as it seems
>>> impossible to override settings in that file using a soft
>>> assignment. =C2=A0In particular, local.conf often has soft settings
>>> but these dont' seem to change what's in bitbake.conf
>>
>> BitBake only parses one global configuration file, bitbake.conf. It's
>> bitbake.conf that includes/requires all the other configuration files.
>> You can see the order by reading those inclusions in bitbake.conf.
>> Historically, the intention was for the configuration file load order
>> to be relatively parallel to the overrides order -- two different
>> mechanisms for implementing what is essentially a layered architecture
>> for the metadata, allowing, generally, more specific information to
>> override more general information. The configuration file order
>> differs slightly from that, however, as it's not possible to load the
>> distro or machine config files after local.conf, as local.conf is
>> generally where DISTRO and MACHINE are defined.
>
> In that case, isn't using ?=3D assignments in bitbake.conf a bit misleadi=
ng?

First, there is one place variables can come from before the
configuration files, and that's the process environment, for variables
which aren't filtered out. Second, it could use ?=3D sanely after the
configuration files are included, as well.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

