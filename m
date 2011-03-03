Return-Path: <kubera.samrat@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 215754C803BA
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 23:36:09 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wya21 with SMTP id 21so956944wya.35
	for <poky@yoctoproject.org>; Wed, 02 Mar 2011 21:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=mPld3Vjxxje8uPuE3t0D0aOyiDmOuWG97g3uSyHFsEg=;
	b=PAeWQZhJP4zoIgC0OlkU/indgeUtIPcbJQZiRBoR9AJDT7eJdbhJi26hhbfr2J6AoR
	Xn3WEC9tR3Pf76oimzJdYWkLKTQZDcGNbcD2abrKfJ/eLp4uxQIzUW01WFel7J7iPCBg
	oWRCsmkNLtfjw25R6oEDkFgYQ8jyIUMq4pbko=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=qeF1aMEtpgGGk+FohFtaNhUzHKHvLEnykuznDynKdS53VJCw9XuLU8ghdUy54RlGuE
	zeDlrStaYgjWjFo2w4zE24Wfn0DN9u1tJoZjQcvHopIVhAPrCsXYym1/8avlpPey6l7K
	Zy2PS5PW13YV2KbxsMHdoeIPMX/a89BSje5c8=
MIME-Version: 1.0
Received: by 10.216.22.131 with SMTP id t3mr529748wet.2.1299130557134; Wed, 02
	Mar 2011 21:35:57 -0800 (PST)
Received: by 10.216.69.83 with HTTP; Wed, 2 Mar 2011 21:35:57 -0800 (PST)
In-Reply-To: <1865303E0DED764181A9D882DEF65FB6866D365FBA@shsmsx502.ccr.corp.intel.com>
References: <AANLkTi=XgciNC_9dy3zocW8GzBj6sbg5RjfbJe-OuhJM@mail.gmail.com>
	<1865303E0DED764181A9D882DEF65FB6866D365FBA@shsmsx502.ccr.corp.intel.com>
Date: Thu, 3 Mar 2011 11:05:57 +0530
Message-ID: <AANLkTi=YH3OH89E8viucBekQcSxvM0ZAyNcCnfFottwB@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Reg:problem while Adding libgcc_s
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
X-List-Received-Date: Thu, 03 Mar 2011 05:36:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Dexuan,
                  I have pulled in gcc into poky(using
meta/recipes-devtools/gcc/libgcc_4.5.1.bb). But I couldn't find
libgcc_s.so in target image. Do I have to change any configure options
to get gcc_s ?
or else suggest me approproate solution

On Thu, Mar 3, 2011 at 10:53 AM, Cui, Dexuan <dexuan.cui@intel.com> wrote:
> kubera samrat wrote:
>> hi,
>> =A0 =A0 =A0 =A0 =A0I am using Ubuntu (10.04) on 64 bit machine. I have p=
ulled in
>> gcc but I am unable to find libgcc_s. Can any one help me in
>> integrating this to poky.
>> Your help will be greatly appreciated.
> What do you mean by "pulling in gcc but unable to find libgcc_s"?
> We have a recipe meta/recipes-devtools/gcc/libgcc_4.5.1.bb to install lib=
gcc_s.so into target image.
>
> Thanks,
> -- Dexuan



Thanks and regards
V kubera Samrat

