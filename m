Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E25B4E006DD
	for <poky@yoctoproject.org>; Wed,  4 Jan 2012 08:35:12 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so13008842qcs.35
	for <poky@yoctoproject.org>; Wed, 04 Jan 2012 08:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=G5vnq3xf0NwsHg4vtOwimUoma9T4WsLETSPRtbpE5bE=;
	b=rd8o62onkzZ7vOmTX0dwz0mJuaeaVGZ3/dfaxmyqrNtjwx8cipzP7u6FOqYB+mfWRn
	RNjHuz8uLgu1fje/Q2AEms1YckQyhgq6iMF2KxipcprvP5FDO3c5Rrb7tWgSxbwX+jLQ
	nEqI2TFU6LkPBGBErNyhZ1dCfYORifVcS993w=
Received: by 10.224.200.197 with SMTP id ex5mr23563273qab.88.1325694912256;
	Wed, 04 Jan 2012 08:35:12 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.187.141 with HTTP; Wed, 4 Jan 2012 08:34:51 -0800 (PST)
In-Reply-To: <1325694194.20759.23.camel@ted>
References: <1325642890.24646.8.camel@lenny> <1325694194.20759.23.camel@ted>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 4 Jan 2012 09:34:51 -0700
X-Google-Sender-Auth: p6iN4mt9RsTGubeOYrBGcMTyXJM
Message-ID: <CABcZANkD1Dik9YDK82UJ72wMV4jLnczCKtDrPYH9gJchqjH=sQ@mail.gmail.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Cc: poky@yoctoproject.org
Subject: Re: [OE-core] -dev RPM packages Require:ing all of their bitbake build dependences
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
X-List-Received-Date: Wed, 04 Jan 2012 16:35:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 4, 2012 at 9:23 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>> Another approach would be to stop injecting -dev Requires by default. =
=C2=A0I
>> imagine this was done to handle the case of library A whose headers
>> require library B. =C2=A0However, a saner way to handle this I think is
>> simply to push people to use pkg-config; IIRC a script exists to extract
>> pkg-config dependencies from the .pc files and use that for the RPM
>> auto-dependency phase. =C2=A0That would ensure that e.g. gtk+-dev Requir=
es:
>> glib-dev. =C2=A0This doesn't help non-pkg-config libraries, but those pe=
ople
>> should be shamed anyways =3D)
>
> I think these dependencies are wrong and need revisiting. Currently,
> -dev and -dbg packages share the same code and its tilted more in favour
> of -dbg than it is for -dev.
>
> I think the -dev packages make sense if you want to build X but not
> build something that just depends on X. We should therefore move the
> dependencies to a new package (need a good name) and rethink the -dev
> package dependencies.


I'm inclined to say let the user install the deps needed to build X
themselves, or build it with bitbake, and let -dev work the way it
does in other distros, the bits needed to build against X.
--=20
Christopher Larson

