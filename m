Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDC01E00747
	for <poky@yoctoproject.org>; Thu,  5 Sep 2013 09:24:14 -0700 (PDT)
Received: by mail-vc0-f174.google.com with SMTP id gd11so1314362vcb.33
	for <poky@yoctoproject.org>; Thu, 05 Sep 2013 09:24:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=+JywKFgmEGPWNPgz6yS2N3emWDWgfiRto4Vd4GizZ6E=;
	b=VMMgBYYj99GG4tGcfZwir6Oq9PHcv1n0JZVEnCm3W2vckEA6oGfwObGlB058bIJHa5
	LAAEF0PJ0f+RfO4VFePZgoStYeUrN0x4/qEgk2feQGp5Vs9u4EbIaxc9UzfmM5B3xkVI
	SalTi92up7sMrb5jEVkgs3TgyYk3Vn0PbpD9arkFcZzeFvsX04HqNr+aFc2T71YUIYfF
	r3iehHWtS7C0bpCGPDe2c1FZqb5HEUZQvdVQVDyZJ0Cg2Q/ymJCvybNVFPHEEULAhYi/
	mUocp0UrR595XJtt7/592GT4EHs3uRXA3wtKJSKSAaTiCZEZes2d3OPSSERHkitnArgR
	MGMg==
X-Gm-Message-State: ALoCoQn5ZHsKUaNE5HSOItFHWbDiKWwcgUkCJ3EoKpCSVgQrPKOrhCJOcjCE4EMw53nAxI6jaJ5z
X-Received: by 10.52.119.139 with SMTP id ku11mr650659vdb.42.1378398253481;
	Thu, 05 Sep 2013 09:24:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 5 Sep 2013 09:23:53 -0700 (PDT)
In-Reply-To: <1378395125.32427.78.camel@ted>
References: <cover.1378339881.git.dvhart@linux.intel.com>
	<7e9270b1c56aeeb6ed22210cab98d2675b092d5d.1378339881.git.dvhart@linux.intel.com>
	<CAJTo0La0W7PXkuBsvqD2XqPMMbbLtmJef5T97sikSJogZ1XCiQ@mail.gmail.com>
	<CAP9ODKqVU+ka+VzjPj6p0iVsirrOSqLtDFWNzfBcKutwj1Fo3Q@mail.gmail.com>
	<CAJTo0Labk000SpLOiM8gtuSu2pwK0jsgU9osO60GEFntThxSeA@mail.gmail.com>
	<1378383289.32427.63.camel@ted>
	<1378383839.6940.83.camel@phil-desktop.brightsign>
	<1378395125.32427.78.camel@ted>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 5 Sep 2013 17:23:53 +0100
Message-ID: <CAJTo0LZozjJdqonXNqv1L1yL58YzsK11Z6xbio0YYo-gfTAEvw@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Darren Hart <dvhart@linux.intel.com>, Poky <poky@yoctoproject.org>,
	Phil Blundell <pb@pbcl.net>, Otavio Salvador <otavio@ossystems.com.br>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH 2/4] xorg-driver-common: Add configure and install appends from meta-intel
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Sep 2013 16:24:15 -0000
Content-Type: text/plain; charset=UTF-8

On 5 September 2013 16:32, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> I guess the .la files just don't seem to be a big issue that some people
> seem to paint them as. Why do we need to remove them and deviate from
> the upstream?

You appear to be defending choices made by libtool upstream here.  Are
you unwell? :)

> Anyhow, if someone can show some world builds with and without the .la
> files and see what build history shows we'd be closer to taking a patch
> to turning them off. If we do it, we'll have to do it everywhere for
> everything since the remaining code will bitrot badly IMO otherwise.

I'll try and hack something up this week as a proof of concept.

Ross

