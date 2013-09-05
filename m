Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f46.google.com (mail-vb0-f46.google.com
	[209.85.212.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 813B6E01542
	for <poky@yoctoproject.org>; Thu,  5 Sep 2013 02:58:06 -0700 (PDT)
Received: by mail-vb0-f46.google.com with SMTP id p13so952148vbe.19
	for <poky@yoctoproject.org>; Thu, 05 Sep 2013 02:58:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=e3wnXq+SwrIqOjp6gffkuk+IAUrT2y84U2yM5EGH0Vg=;
	b=TGzaBd291KB7NsyF+tnE464ezzXIbAO0fEbkDBwnyzQM2U7PHZd48BkEp8GX3JrXRz
	+jvXjuhMk1V+x6ImwQylb2YINveDJfUAh3KoBYlakbS90OoXVh87NsJrX4YVY0DCqbAj
	gL8RmibVwbPIFk6ckfup1Q04eNVu2+LTaWE5Z8kzggR/SSnHxG8PhWP36rRc0BmU9z30
	r1nv31vJWjtm+tqbe0o6D5pbkaSOebPLcvDkDpVs/fChuwa4s3/iSOhI5AdzbWJyOpzI
	r9Sb6cefaaUxBrEGHhMePy2OjnR4Jt9t0ZC7gkHp01y1/dgQAQ4AZBchDtTcmhYXU5kW
	AW2Q==
X-Gm-Message-State: ALoCoQkK3GjJ64l7Q63wvsFMC4+LJ/CNG62pD/BOXCVVkZ0Zz4p+OJ4XWW7sXzVH+dIFzDYI3jIW
X-Received: by 10.220.43.19 with SMTP id u19mr4892094vce.3.1378375086102; Thu,
	05 Sep 2013 02:58:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 5 Sep 2013 02:57:46 -0700 (PDT)
In-Reply-To: <4562a00806c5a6573b5aa650764ad12bc93edda7.1378339881.git.dvhart@linux.intel.com>
References: <cover.1378339881.git.dvhart@linux.intel.com>
	<4562a00806c5a6573b5aa650764ad12bc93edda7.1378339881.git.dvhart@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 5 Sep 2013 10:57:46 +0100
Message-ID: <CAJTo0LY-oi+tQy7rs84axy4R71Y4j=HtEgXALN20aVdATwzVdg@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Poky <poky@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [PATCH 3/4] xf86-video-mga: Pull in Matrox MGA support from meta-intel
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
X-List-Received-Date: Thu, 05 Sep 2013 09:58:07 -0000
Content-Type: text/plain; charset=UTF-8

On 5 September 2013 01:18, Darren Hart <dvhart@linux.intel.com> wrote:
> In support of the more generic x86 BSPs, pull in the Matrox driver
> recipe from meta-intel.

What machine is this for in particular?  In discussion with Nitin
about MGA a few weeks back the conclusion was that the vesa driver
should be sufficient.  As far as I'm aware the reference platforms
don't ship with MGA hardware so it's up to the owner of the platform
to install whatever they have to hand (mga, nvidia, ATI, etc), or am I
wrong about that?

> Remove the checkfile patch from Ross as this is now handled adequately
> with the configure prepend hack which assumes success for any checkfile
> calls.

Assuming success in an distro where opengl isn't enabled will result
in the driver believing that DRI is enabled when it isn't, so expect
to see build failures from this.

Ross

