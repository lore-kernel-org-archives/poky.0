Return-Path: <kergoth@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8F8DE01277
	for <poky@yoctoproject.org>; Fri, 21 Oct 2011 07:14:40 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eyh5 with SMTP id 5so5315438eyh.35
	for <poky@yoctoproject.org>; Fri, 21 Oct 2011 07:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=RY7rmkEMCxPaFMr74TG/2KqL8c2zmAz3MJp1xak5JF4=;
	b=ZcxIBRD2LyT2TKgvaCgJauA3XcXmeVaYqJb3NzVEFddLy++BI4XvJEFpiCO0ebYYf6
	G+rRdr3ZKTf4c2kkY3rriI6ASeyENaOx6yksVrufMBredAis9UgVVDcNj1TNC5QraO2K
	RxnBzDmOr/Grw9tpqtquR3LrWcypn++i9UZTo=
Received: by 10.216.230.83 with SMTP id i61mr783688weq.39.1319206479134; Fri,
	21 Oct 2011 07:14:39 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.160.80 with HTTP; Fri, 21 Oct 2011 07:14:19 -0700 (PDT)
In-Reply-To: <4EA15F6D.7080005@mlbassoc.com>
References: <4EA15C8B.1050504@mlbassoc.com> <4EA15F6D.7080005@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 21 Oct 2011 07:14:19 -0700
X-Google-Sender-Auth: lkWbneo_InzNjJ7gKgGCLqUL6e0
Message-ID: <CABcZANmm0GOeg91PA8id8Js+xC-whjgpu=K94VmYegqyZ=vz7g@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Error managing features
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
X-List-Received-Date: Fri, 21 Oct 2011 14:14:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 21, 2011 at 5:02 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2011-10-21 05:50, Gary Thomas wrote:
>>
>> In my $DISTRO, I have a default set of image features:
>> IMAGE_FEATURES ?=3D "package-management debug-tweaks "
>>
>> I'd like to build a minimized image which leaves out the package stuff, =
so
>> I added this line to my <image>.bb:
>> IMAGE_FEATURES :=3D "${@oe_filter_out('package-management',
>> '${IMAGE_FEATURES}', d)}"
>>
>> Sadly, this gives me this error:
>> ERROR: Failure expanding variable IMAGE_FEATURES[:=3D], expression was
>> ${@oe_filter_out('package-management', 'package-management debug-tweaks
>> ${EXTRA_IMAGE_FEATURES}', d)} which
>> triggered exception SyntaxError: EOL while scanning string literal
>> (IMAGE_FEATURES[:=3D], line 1)
>>
>> Any idea what I've done wrong?
>
> Note: I noticed that EXTRA_IMAGE_FEATURES is only set in a few Yocto
> images (no default/fallback), so I added
> =C2=A0EXTRA_IMAGE_FEATURES ?=3D ""
> to $DISTRO.conf and the syntax error went away.
>
> I guess there must be some difference inside bitbake that manages
> to ignore unset variables when expanding, but not in this case?

I really think the current behavior of leaving unset variables in
their unexpanded form so that the shell may expand them needs to die.
Better to just make it raise an exception, I think. It would help
catch bugs, and worst case you define some default values.. heh. In
this case, you could also have worked around it by using d.getVar()
rather than '${}' in the python snippet.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

