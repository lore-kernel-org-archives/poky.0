Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B94BCE00C8F; Fri, 30 Nov 2018 02:29:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f194.google.com (mail-it1-f194.google.com
	[209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA877E00C7E
	for <poky@yoctoproject.org>; Fri, 30 Nov 2018 02:29:43 -0800 (PST)
Received: by mail-it1-f194.google.com with SMTP id x19so8447369itl.1
	for <poky@yoctoproject.org>; Fri, 30 Nov 2018 02:29:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=DR4CBUuRki83mDmmKOAVoR1Cr3wiTllSenfk7VjdZw0=;
	b=BiIdkPXdd/f8r8viiDHyTHXz0KDK60VrSGaG9otcqB1Mze3rk6UVmA0CDPlX4Vywdl
	M6/r5uuztQOIhHmdpaMLmoa6aWKhcZyQUy7fta//f+shOvXeBA60QxyqYjhA2XZJhosS
	f4DeYBdxZV9IJMWipZe0VGVBMO7YvKJhVBCYHnjqI72pda3unABj3VhhLgoj8F97aR/5
	m3+eqbh7lFYMFNXYwhv71zt2gbJrxB4MPA0XYdn8lDt1GFZWh7ek8w+jsOk8l4k+vui/
	xpuOkV2g841IJ29lf2FDWHyjQKP3dYhwV6yuQDZsAWAn0h9t2/dPypB1mVL+/X3d9HWT
	YNfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=DR4CBUuRki83mDmmKOAVoR1Cr3wiTllSenfk7VjdZw0=;
	b=oYTuamsCKEXnZ/8wZT120m+8q9E5j8ZoQ05MHv0tuKq51P/PIoWvpbLdHL5LUDsryi
	urm4hS0n85H7u9MTUBxYifmkOFMBFKLrWuGVrT00/z96KPTuZbage6yEvS+DRB7GgXaN
	rfE9d9xgvAgCTgjue/FX4Gg63FPQ/Gx17NL/0qKrwSGq35Gd5VDEGX3USv8zU/vXYGwx
	v3F22eEaBwdCWI6/uHOszELwg4BvuKLgLhXo8Qi7g9DuH2OgX0aYgEmOR5mZ9DAUMPer
	BOFL9xcOpmy49tXHkFyotJ+dVPVFcbQ4H+2r/W2Zph3cy/fbBJXh6+pv3bQq2a0L8tUy
	5uVA==
X-Gm-Message-State: AA+aEWaB/0l04RCceDDsthTIIs18jr6jOJt2s/mikvWdLxFQm6t14qhP
	6V54o1Hc2tFMMlAmq3fFTkW6KoOcMWmnf12Bg8PhHg==
X-Google-Smtp-Source: AFSGD/WaC4Af3wzfvHxO5N9MsCBDCxj17TrTDmUnxP/1+w8FWYVgrPt30U/o2r4mwlRhJ3XVxbKya7bsmtl+bfRnSQ0=
X-Received: by 2002:a02:1bc5:: with SMTP id 66mr4720621jas.105.1543573783097; 
	Fri, 30 Nov 2018 02:29:43 -0800 (PST)
MIME-Version: 1.0
References: <cover.1543535225.git.roussinm@sonatest.com>
	<9d5112ef83d85dd155d5972241280ac31ba7ea71.1543535225.git.roussinm@sonatest.com>
	<CAJTo0LZRa_b0DbGVpuUa_Uksjho877bqjyAAYuOhD9_zRtPLKg@mail.gmail.com>
	<CAE=T-s7YKSYr77eiFQQ1cCTTjH5dEy=sm=BNuQ=PXSBra8AJBw@mail.gmail.com>
In-Reply-To: <CAE=T-s7YKSYr77eiFQQ1cCTTjH5dEy=sm=BNuQ=PXSBra8AJBw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 30 Nov 2018 10:29:31 +0000
Message-ID: <CAJTo0LaeGSjdvN=J-pQ_3JGuH-hjpaAtvMiEzvf3j8DkvMakuA@mail.gmail.com>
To: =?UTF-8?Q?Maxime_Roussin=2DB=C3=A9langer?=
	<maxime.roussinbelanger@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PULL][PATCH 1/1] cmake: remove version in directory structure
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Nov 2018 10:29:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 30 Nov 2018 at 01:30, Maxime Roussin-B=C3=A9langer
<maxime.roussinbelanger@gmail.com> wrote:
> > Whilst that's a hard point to argue with, what's the problem that's
> > being solved here?
>
>
> If CMake is in the cmake-x.xx directory and then there is libeigen that
> adds their own cmake modules to the cmake/modules.
>
> So now you have the cmake modules inside cmake-x.xx/Modules and some in
> cmake/modules. Your project will have to update the CMAKE_MODULE_PATH,
> if they wanna use libeigen.
>
> Well, I think that's how it works. All of the recipes that want to add th=
eir own
> module they have to use `cmake/Modules`, because they can't possibly know
> which cmake version we are using.
>
> So I thought maybe put them all in the same directory so no one
> has to deal with the fact that 2 directories are used for the same thing.
>
> Less confusing?

The context is useful, thanks.  Note that Debian does exactly the
same: cmake installs to /usr/lib/cmake-[version] and eigen installs to
/usr/lib/cmake/, and that works.  Is this a problem in general builds
or just the SDK?  Possibly our toolchain file is breaking the usual
lookup.

Ross

