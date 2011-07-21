Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f50.google.com (mail-pz0-f50.google.com
	[209.85.210.50])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF9EC4C800A1
	for <poky@yoctoproject.org>; Thu, 21 Jul 2011 14:18:20 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk2 with SMTP id 2so3058493pzk.23
	for <poky@yoctoproject.org>; Thu, 21 Jul 2011 12:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=ISd8DAiDA8ZxLMBVvcuKC08diXyBvmAk/B3wTQTqJ/s=;
	b=D6aYqAriE0LndQ4SebR0FjDSu9rOTUMON++Er+OiW74uOaTqGx5AwsN2opTZmP/rxL
	eAi9tlquPZvyiap9VPOwA34LPRDcPWLprtybyNgZm08ifNZWNxDUgrX09hVLPZ93hub/
	/v2PpyeH2N0E66UcCsAX9N4gNtQsJTCSqSoAg=
Received: by 10.68.9.165 with SMTP id a5mr819535pbb.412.1311275900050; Thu, 21
	Jul 2011 12:18:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Thu, 21 Jul 2011 12:17:49 -0700 (PDT)
In-Reply-To: <4E244458.8040406@mlbassoc.com>
References: <4E243A67.3090400@mlbassoc.com>
	<CABcZANmcWYoF4wb6Nx=w9LDhaRdzSdhc9XOHD7n8w_NfskGThA@mail.gmail.com>
	<4E243DA5.4090207@mlbassoc.com>
	<CABcZANnQ9J9DDdVMgjbF2nKwcwOBcMp9XyHyBDwRyiHAYvu=iA@mail.gmail.com>
	<1310999306.20015.1267.camel@rex> <4E244458.8040406@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Jul 2011 12:17:49 -0700
Message-ID: <CAMKF1srZMrVH357sEQ-xAHtw4BJg9QAHnWjWm4TqHmeEEFPRkw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Chris Larson <clarson@kergoth.com>, Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Thu, 21 Jul 2011 19:18:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 18, 2011 at 7:34 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 07/18/2011 08:28 AM, Richard Purdie wrote:
>>
>> On Mon, 2011-07-18 at 07:12 -0700, Chris Larson wrote:
>>>
>>> On Mon, Jul 18, 2011 at 7:05 AM, Gary Thomas<gary@mlbassoc.com> =C2=A0w=
rote:
>>>>
>>>> On 07/18/2011 07:59 AM, Chris Larson wrote:
>>>>>
>>>>> On Mon, Jul 18, 2011 at 6:51 AM, Gary Thomas<gary@mlbassoc.com>
>>>>> wrote:
>>>>>>
>>>>>> What's the order of processing of the various .conf files?
>>>>>>
>>>>>> It seems to me that bitbake.conf must be first as it seems
>>>>>> impossible to override settings in that file using a soft
>>>>>> assignment. =C2=A0In particular, local.conf often has soft settings
>>>>>> but these dont' seem to change what's in bitbake.conf
>>>>>
>>>>> BitBake only parses one global configuration file, bitbake.conf. It's
>>>>> bitbake.conf that includes/requires all the other configuration files=
.
>>>>> You can see the order by reading those inclusions in bitbake.conf.
>>>>> Historically, the intention was for the configuration file load order
>>>>> to be relatively parallel to the overrides order -- two different
>>>>> mechanisms for implementing what is essentially a layered architectur=
e
>>>>> for the metadata, allowing, generally, more specific information to
>>>>> override more general information. The configuration file order
>>>>> differs slightly from that, however, as it's not possible to load the
>>>>> distro or machine config files after local.conf, as local.conf is
>>>>> generally where DISTRO and MACHINE are defined.
>>>>
>>>> In that case, isn't using ?=3D assignments in bitbake.conf a bit
>>>> misleading?
>>>
>>> First, there is one place variables can come from before the
>>> configuration files, and that's the process environment, for variables
>>> which aren't filtered out. Second, it could use ?=3D sanely after the
>>> configuration files are included, as well.
>>
>> It does this second part pretty clearly:
>>
>> [...]
>> require conf/xxx.conf
>> require conf/yyy.conf
>>
>> TUNE_ARCH ?=3D "INVALID"
>> TUNE_FEATURES ?=3D "${TUNE_FEATURES_tune-${TUNENAME}}"
>>
>> ##################################################################
>> # Weak variables (usually to retain backwards compatibility)
>> ##################################################################
>>
>> DL_DIR ?=3D "${TOPDIR}/downloads"
>> [...]
>>
>> so most of the ?=3D variables are after the includes.
>>
>> Looking at the file, there are some good candidates for either =3D or ??=
=3D
>> though, including I suspect the console ones which are likely what
>> prompted this?
>
> Yes, I tried to override TERMCMD using ?=3D in local.conf and that didn't
> work. =C2=A0Using =3D fixed it though.

?=3D means you still wanted others places to override it if any
local.conf settings are mostly like what you want to have override over oth=
ers
so using =3D would be right here.

