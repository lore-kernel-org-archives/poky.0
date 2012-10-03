Return-Path: <raj.khem@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A57B2E011C5
	for <poky@yoctoproject.org>; Tue,  2 Oct 2012 23:22:36 -0700 (PDT)
Received: by wgbdt10 with SMTP id dt10so4177102wgb.11
	for <poky@yoctoproject.org>; Tue, 02 Oct 2012 23:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=lCvMlDsJFNFE3YXTssQOHiQfBLW80V5v2X+XYeJ9InY=;
	b=QMyvMX0ea1JM1RgFq/h/FUaNPEVKnrs3/Cw2+QnNp/AK5D/NxogUoPfe0ugbU4bC8K
	gokjK+4tN9EkrMOXM/bpWEXuspuBdUSNFEN9idumxJYQzHL50b2zunYAmKimlJKn5wco
	MEj+Mak9sMNQWcyqDBtJ0VVJbqu3Dn2lK8t/B/G+aZkBQFekaWDLGST2TC0QabpMJwbo
	4o5/SaEhp0ehA/AXWz/4FDLoFe1OM9xyvmLJh5VVXkdHfPprfnFn4LaIdX/I0d0iPOql
	tqTaK1jLsnGzcvFDeGMf9YHOR+j5jD/U+uzx+WNOrvbua/SyDJ/Px1oT1uHaTbPc+Edd
	dUHA==
Received: by 10.216.241.200 with SMTP id g50mr621089wer.79.1349245354875; Tue,
	02 Oct 2012 23:22:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.28.38 with HTTP; Tue, 2 Oct 2012 23:22:04 -0700 (PDT)
In-Reply-To: <1349192635.18301.5.camel@ted>
References: <506B0983.3060500@mlbassoc.com> <1349192635.18301.5.camel@ted>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 2 Oct 2012 23:22:04 -0700
Message-ID: <CAMKF1spz8e=XYjQm4ztctLKEfkg=Jcf=XAB0JA94cri+kAbT2A@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: New warning
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
X-List-Received-Date: Wed, 03 Oct 2012 06:22:37 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 2, 2012 at 8:43 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Tue, 2012-10-02 at 09:34 -0600, Gary Thomas wrote:
>> I'm getting these new warnings, even with a build from scratch.  This is from
>> poky master rev 7c39c87d52c20e47cf90275a16e4517a296c8388
>>
>> WARNING: The recipe is trying to install files into a shared area when those files already exist. Those files are:
>>     /home/local/p81_build/tmp/sysroots/cobra3530p81/usr/include/python2.7/pyconfig.h
>>     /home/local/p81_build/tmp/sysroots/cobra3530p81/usr/lib/libpython2.7.so
>>     /home/local/p81_build/tmp/sysroots/cobra3530p81/usr/lib/libpython2.7.so.1.0
>>     /home/local/p81_build/tmp/sysroots/cobra3530p81/usr/lib/python2.7/config/Makefile
>>
>> Do they hurt anything?  Why am I getting them now, what's changed, etc?
>
> I fixed the code that was supposed to be generate these messages and we
> started seeing them. Its a new type of check added relatively recently
> but was accidentally disabled in its original commit.
>
> The python recipe does something particularly evil, the do_compile pokes
> file into STAGING_DIR_* directly for various reasons.
>
> The do_install then does save off the files correctly but there is an
> overwrite situation occurring there and I don't consider the recipe to
> be doing something particularly nice.
>
> So there is an issue there, it won't break your build but we should
> really do something better.
>

yeah probably we need two stage approach may be a python-initial and
then real python.

> Cheers,
>
> Richard
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

