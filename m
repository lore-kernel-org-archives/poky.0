Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C894BE013A8
	for <poky@yoctoproject.org>; Tue, 27 Mar 2012 06:25:46 -0700 (PDT)
Received: by wgbdq13 with SMTP id dq13so4467866wgb.11
	for <poky@yoctoproject.org>; Tue, 27 Mar 2012 06:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Y8Qn9FgL29M/VC5tJUxvfk69iz+Jjsqg5StEw5r54Gg=;
	b=Tt6weIM2D7SxKos7tfY2SJvqmsLaWr2kUkFudiRhbT0DMoFbtEuNFVg1U8dvFUwee7
	jOe3hIJaiYf7LOMFIkMHQQaZjLiqZHFw69xoVbSJzBzbrEuUvwQn3ieZllx16cm34mpH
	MYjU9gAVJ+GMAg5qbEZFMv7IqB4x+3eDVndZEdh3Q9hNrd24ED9B8QoTESOsFCyYZjVm
	VntkGirHiygO5jMmcUd89rILSNtNDpFThthLldRh7g3UqS73AAkgbC4BAp8HQWXMrJBV
	Xa0q5Aq6GHNXY4SknKvNe2fL8vTvUlmRrJT4j57bFN3kAl7UPo+B/iuWzVG6UpI90+o0
	ijzg==
MIME-Version: 1.0
Received: by 10.216.132.18 with SMTP id n18mr14821800wei.81.1332854745420;
	Tue, 27 Mar 2012 06:25:45 -0700 (PDT)
Received: by 10.216.38.135 with HTTP; Tue, 27 Mar 2012 06:25:45 -0700 (PDT)
In-Reply-To: <1447035.Hxb8yfX2az@helios>
References: <4F71B57F.30103@uni-bielefeld.de> <17090847.kqXxAj3sEM@helios>
	<4F71B96F.5020409@uni-bielefeld.de> <1447035.Hxb8yfX2az@helios>
Date: Tue, 27 Mar 2012 09:25:45 -0400
Message-ID: <CADkTA4NwFXptPVLgiyBgC8Vt=emvj74F=g528iMiZTBYBN+_WA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Patch.bbclass URL Reasoning
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
X-List-Received-Date: Tue, 27 Mar 2012 13:25:47 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Mar 27, 2012 at 9:05 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Tuesday 27 March 2012 14:58:23 Robert Abel wrote:
>> On 27.03.2012 14:55, Paul Eggleton wrote:
>> > However if I needed to do what you want to do I would do it differently -
>> > instead of modifying the patches, why not just modify the file(s) in the
>> > source code directly? I would suggest using sed in a
>> > do_configure_prepend() to change the values in the source to the desired
>> > value from a variable. Depending on the complexity you could have the
>> > patches change the values to some easily replaceable string beforehand.
>>
>> That's exactly what I'm doing right now. However, since I'm patching the
>> kernel and users could theoretically add patches containing my magic
>> strings, I wanted to avoid a sed on git\* and instead only edit *.patch
>> in ${WORKDIR}, which is why I'm asking why the copied patches go unused.
>
> Well, I can't answer that, but I don't think it's too difficult to come up with
> a string that's unlikely to ever occur in the kernel sources.

Or perhaps come up with a different model all together that avoids the need
to modify the patches on the fly :) I've had to do things very similar to this
before, and I've solved it with the include of a generated file.

That being said, I am painfully aware of the different patch locations and what
does or doesn't get used, since I had to adapt the feature processing of
linux yocto to figure out the WORKDIR variant (so there would be somewhere
writable).

That being said, the current behaviour has advantages that via the
absolute / source location of the patch, it's possible to examine the entire
directory without having to modify bitbake to recognize the files and do the
copy to WORKDIR.  Summary: the current behaviour works, and if it changed,
existing semantics would break, so if it was changed the return of WORKDIR
versus source location would be better done as an option.

Cheers,

Bruce

>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

