Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 916F14C81217
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 07:04:15 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn41 with SMTP id 41so78159iwn.35
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 05:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=8IFqkUbRsJFbzjTKCAvjG3EsOF5z+0ZrIICtjEbpEeE=;
	b=vi/dVn/qGyg1gaoRxnWKbbrkkbLiP93MxxLhkAE9q9ev7pM8e17myTXsQ/dL9KIHom
	nHYQQbbTUHrUIVsX3ryWgmZztictMlvqjsVCXYK/7N7nMEKOfEq1eOCb27VbZSYnYd5e
	gJ/5mdrv0to+dBy4Tjiht4scBJAQfqyMZj/20=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=PlG2Q4fMPLFE2uDNJrq2E48CRQAfpq40mFt3cjPqh2uQBdJSZMV933Yfsb+QSfwl6g
	7xwGKxscy5Io88QupcsFpXjgYGnoDL0leGdvGELzHbjkjm68yY90jL2dA5XX15nYFjcP
	vkpjMu7UdSSVpmAyl7WNVl86qBdwUxprkjBgM=
MIME-Version: 1.0
Received: by 10.231.14.10 with SMTP id e10mr5588241iba.132.1291035855294; Mon,
	29 Nov 2010 05:04:15 -0800 (PST)
Received: by 10.231.200.140 with HTTP; Mon, 29 Nov 2010 05:04:15 -0800 (PST)
In-Reply-To: <1291033557.14277.944.camel@rex>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex>
Date: Mon, 29 Nov 2010 14:04:15 +0100
Message-ID: <AANLkTi=3f9NUcm3+1xNz2bL0+gaasfGN8-bU6Zov6Ut-@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Mon, 29 Nov 2010 13:04:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2010/11/29 Richard Purdie <rpurdie@linux.intel.com>:
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
>> No, EXTRA_OECONF_append is never a variable. =A0_append/_prepend are
>> operations, not part of the name. =A0The value gets set aside in a list
>> of appends for that variable. =A0One _append cannot override/replace
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
>

Hm.
Please allow me the remark that, if this does not do what you as
expert expect it to to, that probably for mere mortals like me, this
is a construct that is way too complicated.

What is the rationale that _append is not a variable? Wouldn't it be
more logical/orthogonal/clearer if it was (and get appended at the end
as most people seem to expect/assume)

Puzzled. Frans

