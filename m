Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CC6EE01244
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 10:25:30 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk36 with SMTP id 36so6306609pzk.7
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 10:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=AGAjQzwzyI+saCkq5zSPgoeQ9WhvdlJfXP9/2SUigS4=;
	b=Ix2ynY/DIS9M0zW6jmjv9gkDKX8iNcNVdjWmOdfVW9pQaoxBRe5xFh5JEFkrYbKI9E
	nBYQ8enJcV+iT0CnRf/D3UwDaMTSW3NC9jiFJg89iWa11IHwnHg8gedV5R7oHSVvQJzN
	iSiPSAzoyLk73Uc8Y/AaJ1abaPA6pxpBEa/Fc=
Received: by 10.68.23.6 with SMTP id i6mr6277812pbf.13.1318613130088; Fri, 14
	Oct 2011 10:25:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.48.230 with HTTP; Fri, 14 Oct 2011 10:25:00 -0700 (PDT)
In-Reply-To: <4E985E22.1080008@windriver.com>
References: <4E984ACB.1080901@mlbassoc.com> <4E985E22.1080008@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 14 Oct 2011 10:25:00 -0700
Message-ID: <CAMKF1soWTX52GFQFYr0=pfykeU7y5YwhgvQKEHyrcn0+HE3Arw@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: Poky SDK as an external toolchain
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
X-List-Received-Date: Fri, 14 Oct 2011 17:25:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 14, 2011 at 9:06 AM, Mark Hatle <mark.hatle@windriver.com> wrot=
e:
> On 10/14/11 9:44 AM, Gary Thomas wrote:
>> Premise: I'm happy with the toolchain that builds with Poky/Yocto
>> Problem: I'm not happy rebuilding said toolchain all the time, nor
>> having my customers have to rebuild it.
>>
>> Solution? I'd like to build the meta-toolchain and then be able to
>> use that as an external toolchain for subsequent builds. =C2=A0That way,
>> I can create the tools and reuse them internally as well as pass
>> them to my customers.
>>
>> How can I make this happen? =C2=A0The last time I tried anything like
>> this, I spent many days in the attempt only to find out that it
>> was never going to work...
>
> We have a similar need for our commercial products. =C2=A0We allow/enable=
 our
> customers to rebuild the toolchains (and use the results), but we only pr=
ovide
> official support for our binary versions. =C2=A0There are simply too many=
 variations
> possible to try to support the toolchains in source format. =C2=A0(Toolch=
ains =3D
> bintuils, gcc, stock eglibc and a stock uclibc configurations...)
>
> Our intention is simply to create custom recipes that extract our binarie=
s and
> use them instead of doing a by-source build. =C2=A0If there is an easier =
way that
> would be nice. =C2=A0(And I agree, using the results of the meta-toolchai=
n build is
> the right approach for anything standard.)
>
> I'd suggest this get added as an enhancement request to the bugzilla. =C2=
=A0We're
> currently working on feature planning for 1.2 so this would be a good tim=
e to
> add it into the bucket of possible work items.

i think making external toolchains pluggable is a good feature. We could wo=
rk
towards getting it documented and any support needed in metadata. I
have come across many users
who would want to have such a set up.

>
> --Mark
>
>> Note: sstate is *not* the answer. =C2=A0Not only is it HUGE (well over
>> 1GB for a typical setup), but it doesn't work reliably - see
>> bug #1536
>>
>> Ideas/hints?
>>
>> Thanks
>>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

