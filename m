Return-Path: <kergoth@gmail.com>
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABF05E0044D
	for <poky@yoctoproject.org>; Tue,  3 Apr 2012 10:36:24 -0700 (PDT)
Received: by qabg1 with SMTP id g1so422937qab.13
	for <poky@yoctoproject.org>; Tue, 03 Apr 2012 10:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=+EaUn4LaO+09z2sayocWg8GL9r6t9mRlGRPhTQiP5Mw=;
	b=04SS4pELIrRn91qVQWGIkV9UdZi7qAp3eFFFR/vPxhSDJ5HxliBVsxpr2mhEV7/UdH
	fJQ7O64mEmZ+xCVVM4zJ1/4ZPr6zCUnvm6A6UsPY8wy/vuX6y0hVIY0InSyLwsJ1xFTw
	gRr8goXLyjWHooVSuhn1+4dftTSlDh0fGWV0TC9eC9T9dIVDcHkdXb82RbCCGs7Bn0rb
	K2JKqvtLNA0hj3Hn6a0IK8YnaVwohHTuyWcnpIJKhq0+U0negswc7r16w3BhKDbbQxzq
	CcZ5QVDKZJnhK+ELsGF3jnY+PNx+pfvpyb4QOGZXH1/N5NEAASaDnTAhkW37493ellal
	YqBw==
Received: by 10.224.180.200 with SMTP id bv8mr18435560qab.29.1333474584195;
	Tue, 03 Apr 2012 10:36:24 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.24.196 with HTTP; Tue, 3 Apr 2012 10:36:03 -0700 (PDT)
In-Reply-To: <4F7B3409.8000905@mlbassoc.com>
References: <4F7B3409.8000905@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 3 Apr 2012 10:36:03 -0700
X-Google-Sender-Auth: tM1cgxpk9YVedO7FWF_5tG3d370
Message-ID: <CABcZANkiFDcOdLfJy5y0OZTkQzUEaC3ip_CF84iZKp6MV3aZYQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: ccache
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
X-List-Received-Date: Tue, 03 Apr 2012 17:36:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 3, 2012 at 10:31 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> Why is ccache being used for Poky/Yocto builds? =C2=A0My understanding is
> that it's a win for _rebuilds_ of the same/related files, but there's
> not a whole lot of that going on.
>
> If I build core-image-sato from scratch, I end up with ${BUILD}/tmp/ccach=
e
> which is 1.8GB - quite a bite! =C2=A0Is there some way to disable this?, =
other
> than not have ccache on my host computer (not an option as it is useful
> for other builds I do)

I think the default behavior of using ccache when it's installed is
extremely bad, and dangerous, in that the ccache object cache is of
both limited usefulness, as you say, and the object cache can get
corrupted, leading to extremely odd behavior (and it's rarely a place
you think to look as a cause). At Mentor we disabled this behavior,
and I really, really think we should do so in the default oe-core
bitbake.conf.
--=20
Christopher Larson

