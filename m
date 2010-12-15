Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E6664C80BCF
	for <poky@lists.pokylinux.org>; Wed, 15 Dec 2010 11:57:58 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwi17 with SMTP id 17so5748379wwi.3
	for <poky@lists.pokylinux.org>; Wed, 15 Dec 2010 09:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:sender:received
	:in-reply-to:references:from:date:x-google-sender-auth:message-id
	:subject:to:content-type:content-transfer-encoding;
	bh=ZQoJ7Crwaf0nKdXJOt9GrqFOpbN24ebM/BbuOKdkOxQ=;
	b=fLFPwoQkWceksXHZQbVf0bfeimes7axZ6STNXKLERtzkMEE8bkvMQkcFjbQgUwRFk5
	ByXGvG5UH2z9B3XfHum47oGP3M0yiyh3wibxp3dTvGIpfAH4f0hHCkhxdtfMH8RyrKlB
	f5a5kW9Mps4mURAGu1KTrgnvlHW+dnzCgYai4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:content-type
	:content-transfer-encoding;
	b=cecpo1164HO8Yxgj/DIphqsDqzxhBziI2H2BKQv13Kl6VtSpVfii0Jn4Sg13c99/a9
	Rdca3sJlfUEtA2MgSSeke3cxW97j7u7neOyV8OVzo1N55djf7pBjgWeloNUvoRvf//sR
	5FDIhRXKKIDwkwSUNKbkWURp8T/3d3d6ZaLHs=
Received: by 10.216.46.19 with SMTP id q19mr1234520web.0.1292435876892; Wed,
	15 Dec 2010 09:57:56 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.67.67 with HTTP; Wed, 15 Dec 2010 09:57:36 -0800 (PST)
In-Reply-To: <4D08FBE3.9020904@mlbassoc.com>
References: <4D08FBE3.9020904@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 15 Dec 2010 10:57:36 -0700
X-Google-Sender-Auth: 8QVxrJX0DVFsVZriJdxOJ8ZHnKU
Message-ID: <AANLkTi=36pdAvEaL3bXTHVyu4OBEOTFh7eL2SegGpaaT@mail.gmail.com>
To: Poky <poky@lists.pokylinux.org>
Subject: Re: Extending recipes
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
X-List-Received-Date: Wed, 15 Dec 2010 17:57:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 15, 2010 at 10:33 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> I have a number of recipes that are in the Poky core that
> need a little extending for my environment. =C2=A0Mostly, this
> can be done with a .bbappend file, but some are a bit trickier.
>
> For example, in
> meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb
> there are a couple of lines which control how this package is
> configured and built. =C2=A0In particular:
> =C2=A0DEPENDS +=3D "gst-plugins-base libid3tag libmad mpeg2dec liba52 lam=
e"
> =C2=A0EXTRA_OECONF +=3D
> "--with-plugins=3Da52dec,lame,id3tag,mad,mpeg2dec,mpegstream,mpegaudiopar=
se,asfdemux,realmedia"
> In my case, I want to have the h264 encoder/decoder built as well.
> I don't see a [good?] way to change these lines to be effectively:
> =C2=A0DEPENDS +=3D "gst-plugins-base libid3tag libmad mpeg2dec liba52 lam=
e x264"
> =C2=A0EXTRA_OECONF +=3D
> "--with-plugins=3Da52dec,lame,id3tag,mad,mpeg2dec,mpegstream,mpegaudiopar=
se,asfdemux,realmedia,x264"
>
> The DEPENDS variable is easy enough to extend in .bbappend,
> but how should I handle EXTRA_OECONF?

The list of plugins should likely be shifted into its own variable in
the core, so that its easier to override.  Alternatively, you could
use oe_filter_out() to remove the current --with-plugins and add your
own.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

