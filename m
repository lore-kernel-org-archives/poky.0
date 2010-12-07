Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5B1864C80039
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 09:26:24 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn7 with SMTP id 7so13563iwn.35
	for <poky@yoctoproject.org>; Tue, 07 Dec 2010 07:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=M0nAY2okHqhvfFFibTZfslFmq6O1bCMbcq0UteFOa7k=;
	b=t7cHm5B1iXw+XCZYeDpCM8ARyWKpeD9Uy7WGVmWuaJlkC/2C34/cMG/7Ljes4rb7WZ
	BdK+axRw9tsy28iQwpRAtBl7w1HRZOjJ2oM2n3+ttDM19E37LU5PrkG1b+GP0bCVdMam
	GCoDAnWJ0lrAufIw059uyAxSciaJGL0EBqlhg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=dBlgenfCbQtk9Yu7uQgiLxW5U6vGJxrAN5myuOl8BO84P8fRjzJmWk9bwch/MM8WVz
	hy5m1p8ku75+WeiznBoe7BC9qVAqVNJOBKH1bFQidaFQkpdovPn42Oor7kFWyy725gpa
	iNI7Tf6KA0LPo+UIt/68oq+Gsg8OEs9CSyvMM=
MIME-Version: 1.0
Received: by 10.231.30.68 with SMTP id t4mr7735970ibc.129.1291735384621; Tue,
	07 Dec 2010 07:23:04 -0800 (PST)
Received: by 10.231.207.5 with HTTP; Tue, 7 Dec 2010 07:23:04 -0800 (PST)
In-Reply-To: <AANLkTiketYj8Cch6qt+0N86yDwSU+xedTtqhVE_ZQGRB@mail.gmail.com>
References: <4CFD6EFA.8050503@linux.intel.com> <4CFD8581.5080106@windriver.com>
	<4CFDAE16.3030703@linux.intel.com>
	<AANLkTiketYj8Cch6qt+0N86yDwSU+xedTtqhVE_ZQGRB@mail.gmail.com>
Date: Tue, 7 Dec 2010 10:23:04 -0500
Message-ID: <AANLkTikAwvHcCMKGu=gmHfbniGgMxhfb9mCtHiudzPu6@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Chris Larson <clarson@kergoth.com>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, poky@yoctoproject.org
Subject: Re: Proper recipe naming and PV definition
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
X-List-Received-Date: Tue, 07 Dec 2010 15:26:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 6, 2010 at 11:02 PM, Chris Larson <clarson@kergoth.com> wrote:
> On Mon, Dec 6, 2010 at 8:46 PM, Darren Hart <dvhart@linux.intel.com> wrot=
e:
>> You have SRCPV here - I believe you intended SRCREV - correct?
>>
>> If so, then your PV looks the same as mine above. The place where I repl=
aced
>> the _git was in the filename of the recipe. It still isn't clear to me w=
hat
>> the _VERSION part of recipe-name_VERSION.bb is meant to indicate or how
>> exactly it is used. It clearly isn't the exact and complete version of t=
he
>> source, that is what PE.PV is for, and PR identifies the recipe version =
(for
>> lack of a better description).
>
> People seem to be making this a bit more complex than it is. =A0The
> second component of the filename, separated by _, is simply the
> *default* value of PV, just as the first component is the default
> value of PN, and the third component is the default value of PR.
> Naturally the 2nd and 3rd are optional, and of course you can always
> override them in the recipe, it's just the default.

Yep, and that's why I was keeping just the one, since I always
preferred setting the values in the recipe itself. I recall reading
this somewhere about 10 months ago, but can't find the reference
now. Thanks for the explanation!

>
> You can see the definitions of the PN, PV, and PR variables in
> bitbake.conf -- they run a function which just splits the filename.
> If those defaults were not set there, then PN, PV, and PR would always
> have to be explicitly set. =A0It's just a convenience, that's all.

Agreed and thanks,

Bruce

> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

