Return-Path: <kergoth@gmail.com>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id F40C84C810B0
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 09:25:10 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ewy9 with SMTP id 9so2096939ewy.35
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 07:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:sender:received
	:in-reply-to:references:from:date:x-google-sender-auth:message-id
	:subject:to:cc:content-type:content-transfer-encoding;
	bh=dZH35xqtjffv67V2KZVnY6ameKMqvpguWsYcVFl7Oj4=;
	b=BJSz6ND3uLd1sG1YbruXd4zMyG2CJEq+6oDtyVkenGi112MvsD6hWNl2zElImaSpPN
	1Y9WY5EG5HubZOKbtfBQi+vdVZCnah8n5oZVeqZm/NGxahBd4sdjyhhleURwN/tt08dS
	5f6KTYETx94bV7lDx7ngvX9xJdZyQAEbPnmfg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=vuuNEleLlDtByYCc5ukCO+Ed0SlpuWUjTVkNO6WJgn1/EjoP/d4WCl8OABseoW3eI6
	MkyfV+tBprBph13nyyV19uCXj5U6i6q2KAcJfuLt5UWFvMVmsqyfpF+M4X+COEpmv7P5
	hSSrykqsOVR5KK8Z8GbwD50ligftPNCfsfzoI=
Received: by 10.216.154.8 with SMTP id g8mr513997wek.12.1291044309300; Mon, 29
	Nov 2010 07:25:09 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.67.67 with HTTP; Mon, 29 Nov 2010 07:24:48 -0800 (PST)
In-Reply-To: <1291033557.14277.944.camel@rex>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 29 Nov 2010 08:24:48 -0700
X-Google-Sender-Auth: 9j_qhNI4WU-IvcNlytpPue4IlDI
Message-ID: <AANLkTinYx+43yRYFu=BYQPVJHox6CmBgOMFF199z3BC=@mail.gmail.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] curl: fix native dependency
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
X-List-Received-Date: Mon, 29 Nov 2010 15:25:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 29, 2010 at 5:25 AM, Richard Purdie <rpurdie@linux.intel.com> w=
rote:
> On Sun, 2010-11-28 at 22:53 -0700, Chris Larson wrote:
>> On Sun, Nov 28, 2010 at 10:26 PM, Tian, Kevin <kevin.tian@intel.com> wro=
te:
>> > This also confuses me a bit. When virtclass-native is expanded, EXTRA_=
OECONF_append
>> > is simply a variable. In that case the expanded value should override =
the 1st assignment
>> > of EXTRA_OECONF_append, and then we should get:
>> >
>> > EXTRA_OECONF_append =3D " --without-gnutls "
>> >
>> > and then that's what we expect.
>> >
>> > I guess I may still overlook something here, and really appreciate you=
r explanation
>> > on the whole flow which is helpful. :-)
>>
>> No, EXTRA_OECONF_append is never a variable. =C2=A0_append/_prepend are
>> operations, not part of the name. =C2=A0The value gets set aside in a li=
st
>> of appends for that variable. =C2=A0One _append cannot override/replace
>> another on the same variable, its always cumulative.
>
> Right.
>
> Interestingly though, if I add this to curl*.bb:
>
> FOO =3D "A"
> FOO_append =3D "B"
> FOO_append_virtclass-native =3D "C"
>
> and then "bitbake curl-native -e | grep FOO" (he recipe has a
> BBCLASSEXTEND native) what should I see?
>
> I see FOO =3D "AB" which is not what I thought it would do...

Hmm, this isn't what I'd expect either.  It's certainly not what was
originally intended -- _append_<foo> and _prepend_<foo> were always
supposed to act like normal _append/_prepend, just conditional ones.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

