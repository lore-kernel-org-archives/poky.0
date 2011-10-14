Return-Path: <tom.rini@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C3D5E01277
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 12:58:55 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk30 with SMTP id 30so621255qyk.14
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 12:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=nKVMKMgqPI/4TtCa7KP/w1nRDl9ERGLXtNyhOSI/2BM=;
	b=WmVOPaMTTqm0iLO0DKj3kctPuZlU5BxfjOVs4QLHR4SZL/FrZEUkj8Ae2EWA6J88ew
	Euhro3V9FhNgugbb5bBHwGhVM4Rv/vJBEnoCAe+9Fh6IAq8x/bLsJDlH/0rlZweGx6Qd
	w0IXWaodq+VDl6fS6u+xKHf5Mbt1H8WdDOKvY=
MIME-Version: 1.0
Received: by 10.229.64.153 with SMTP id e25mr2237235qci.74.1318622333658; Fri,
	14 Oct 2011 12:58:53 -0700 (PDT)
Received: by 10.229.94.72 with HTTP; Fri, 14 Oct 2011 12:58:53 -0700 (PDT)
In-Reply-To: <4E9886EE.2080107@mlbassoc.com>
References: <4E984ACB.1080901@mlbassoc.com> <4E985E22.1080008@windriver.com>
	<1318608939.2342.37.camel@ted> <4E9886EE.2080107@mlbassoc.com>
Date: Fri, 14 Oct 2011 12:58:53 -0700
Message-ID: <CA+M6bX=Rx-oT6mx1RwSzQQy0+8-mZhjG5A_1V=K8F0JFpCT34A@mail.gmail.com>
From: Tom Rini <tom.rini@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Fri, 14 Oct 2011 19:58:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 14, 2011 at 12:01 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2011-10-14 10:15, Richard Purdie wrote:
>>
>> On Fri, 2011-10-14 at 11:06 -0500, Mark Hatle wrote:
>>>
>>> On 10/14/11 9:44 AM, Gary Thomas wrote:
>>>>
>>>> Premise: I'm happy with the toolchain that builds with Poky/Yocto
>>>> Problem: I'm not happy rebuilding said toolchain all the time, nor
>>>> having my customers have to rebuild it.
>>>>
>>>> Solution? I'd like to build the meta-toolchain and then be able to
>>>> use that as an external toolchain for subsequent builds. =A0That way,
>>>> I can create the tools and reuse them internally as well as pass
>>>> them to my customers.
>>>>
>>>> How can I make this happen? =A0The last time I tried anything like
>>>> this, I spent many days in the attempt only to find out that it
>>>> was never going to work...
>>>
>>> We have a similar need for our commercial products. =A0We allow/enable =
our
>>> customers to rebuild the toolchains (and use the results), but we only
>>> provide
>>> official support for our binary versions. =A0There are simply too many
>>> variations
>>> possible to try to support the toolchains in source format. =A0(Toolcha=
ins
>>> =3D
>>> bintuils, gcc, stock eglibc and a stock uclibc configurations...)
>>>
>>> Our intention is simply to create custom recipes that extract our
>>> binaries and
>>> use them instead of doing a by-source build. =A0If there is an easier w=
ay
>>> that
>>> would be nice. =A0(And I agree, using the results of the meta-toolchain
>>> build is
>>> the right approach for anything standard.)
>>>
>>> I'd suggest this get added as an enhancement request to the bugzilla.
>>> =A0We're
>>> currently working on feature planning for 1.2 so this would be a good
>>> time to
>>> add it into the bucket of possible work items.
>>
>> We already support external toolchains just fine. You can use a
>> meta-toolchain as an external toolchain.
>
> How do I do this? =A0 I really don't want to deal with another toolchain
> [vendor]
> like CSL. =A0As I said, I'm very happy with the toolchains that are being
> built,
> I just want to reuse them.

What Richard is saying is that based on the recipe for CSL (which just
plugs the binary in and satisfies DEPENDS, etc) you can do the same
for one that comes out via the meta-toolchain recipe.  Provided that is,
the toolchain that comes out of meta-toolchain does what you want it to do.

See http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/m=
eta/external-csl-toolchain_2008q3-72.bb
as an example

--=20
Tom

