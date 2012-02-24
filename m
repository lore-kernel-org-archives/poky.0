Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1693E003E3
	for <poky@yoctoproject.org>; Fri, 24 Feb 2012 07:27:22 -0800 (PST)
Received: by eeke49 with SMTP id e49so99372eek.35
	for <poky@yoctoproject.org>; Fri, 24 Feb 2012 07:27:21 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.112.8.129 as permitted sender) client-ip=10.112.8.129; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.112.8.129 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.112.8.129])
	by 10.112.8.129 with SMTP id r1mr1124544lba.38.1330097241338 (num_hops
	= 1); Fri, 24 Feb 2012 07:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=9f/ZagAXOn5OUtdykqQOXgy5G3dhrzzyICqeiw/cFrw=;
	b=AQ1+By8S1SRe6k6QLV89gEZcpsrDIRAx0+EZDwMfoe0cCIZWnt5tn/5qln4BqxgIV+
	1ZWxCCV0fhwwxgndAQOBNZxDzAv9E90uLktIQuQa1t1gstxPaeqRZVXvv2qK4w58gRQ1
	lwcr6MxEIwOgdq4dDx0K695sDVVEcW9NqO5jk=
Received: by 10.112.8.129 with SMTP id r1mr930276lba.38.1330097241261; Fri, 24
	Feb 2012 07:27:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.27.109 with HTTP; Fri, 24 Feb 2012 07:26:51 -0800 (PST)
In-Reply-To: <1330078754.32006.3.camel@ted>
References: <0BB3B561D7068A4E89FD8E9ABFB538BEB0B9F942C2@PG-ITMSG03.altera.priv.altera.com>
	<1329985869.32110.50.camel@ted>
	<20120224080118.GC2479@sakrah.homelinux.org>
	<1330078754.32006.3.camel@ted>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 24 Feb 2012 07:26:51 -0800
Message-ID: <CAMKF1spzoUd9v3YTi0vRtPKCQA=vrO+Y42-Ep8mUYf7ZkZRM1Q@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Chin Huat Ang <chang@altera.com>
Subject: Re: Using non-distro gcc
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
X-List-Received-Date: Fri, 24 Feb 2012 15:27:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 24, 2012 at 2:19 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Fri, 2012-02-24 at 00:01 -0800, Khem Raj wrote:
>> On (23/02/12 08:31), Richard Purdie wrote:
>> > On Wed, 2012-02-22 at 16:00 +0800, Chin Huat Ang wrote:
>> > > My Centos 5.6=E2=80=99s gcc is a bit outdated and I=E2=80=99m seeing=
 compiler bugs
>> > > when compiling elfutils-native. As such I=E2=80=99ve rolled my own g=
cc 4.5.3
>> > > with MPC/MPFR/GMP all installed to /opt, my intention is to make the
>> > > new toolchain self-contained and reusable on other machines/distros.
>> > >
>> > > The problem is that, in order to use this gcc I will need to set
>> > > LD_LIBRARY_PATH so that it can picks up MPC/MPFR/GMP from /opt.
>> > >
>> > > Poky seems to always build with pristine environment (i.e. no
>> > > LD_LIBRARY_PATH), so my new toolchain is unusable. This problem will
>> > > not happen on distro gcc as MPC et al are always installed
>> > > in /usr/lib.
>> > >
>> > > Is there a way to tell Poky to set LD_LIBRARY_PATH whenever it uses
>> > > the non-distro toolchain? Or is it the right thing to do at all?
>> >
>> > You can set "export LD_LIBRARY_PATH=3Dxxx" in your local.conf and that
>> > will make bitbake always set the variable. I'm not sure you can do it
>> > for just the target gcc.
>> >
>> > Another alternative would be to put wrapper scripts around your
>> > toolchain binaries and ensure they get found in PATH first and the
>> > scripts setup the environment correctly.
>> > >
>> > Its certainly possible to make this work but it might require a little
>> > bit of experimentation. I'm surprised your toolchain doesn't set the
>> > RPATHs of the binaries correctly to find the libs its linked to.
>>
>> I think it would be safer to provide gcc-native for such cases
>
> Which you would compile with what?

its native you can bootstrap it.

>
> Cheers,
>
> Richard
>
>

