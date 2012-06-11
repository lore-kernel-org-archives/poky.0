Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9101E0044A
	for <poky@yoctoproject.org>; Mon, 11 Jun 2012 10:54:21 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 11 Jun 2012 10:50:20 -0700
Received: by lahj13 with SMTP id j13so2488357lah.25
	for <poky@yoctoproject.org>; Mon, 11 Jun 2012 10:50:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=gkMDk3531plH4t0Uz214/k+Js7DK9MN7ZuD6MQZSLl0=;
	b=imc99IEmA9jNrr7F5b9eCmQ2XM26g1OSbmHlrX3iPnuJ/5X6Nz2Kda24CE+7vagEr7
	0wTv0qhq/RE64soz8pruCE9tkigij+uEwGomP0LIrzkSw886olYpvqBzq85ZfpfCRL3k
	wDiFlF3Y/p3ijsZE7InZmHm6f5EPmYEZUaqOhtb73YgmbJcAwx6ViBrqTEANoi3UtrRc
	Uu6of9KA3eLRDqkKXaxAW/Unjtidw22GlUJNvr0o1pq6OzXyYleaD9PklMlSHH66UdGU
	WBHZx7Ux7VRtf80BQMyxMS1rY6ewk3sH3hzgC0P7TwHuKYWMAgVmioFPzlaUd4F2ZAP6
	ztNw==
MIME-Version: 1.0
Received: by 10.112.36.163 with SMTP id r3mr3533686lbj.87.1339437016506; Mon,
	11 Jun 2012 10:50:16 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Mon, 11 Jun 2012 10:50:16 -0700 (PDT)
In-Reply-To: <cover.1338538332.git.liezhi.yang@windriver.com>
References: <cover.1338538332.git.liezhi.yang@windriver.com>
Date: Mon, 11 Jun 2012 10:50:16 -0700
Message-ID: <CAPhnLPAZoOx9hBgWSrnmiNmRifT3tZG26wfzTeP2=SRrov8BOA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
X-Gm-Message-State: ALoCoQltH8yQ04nPegS0XdOcZopHSmsi5rFxxBsYxsFTrxZf3Dv1R+auElak+n4M5JTLij9L4kIy
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] kernel.py: replace os.popen with subprocess.Popen
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
X-List-Received-Date: Mon, 11 Jun 2012 17:54:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 1, 2012 at 1:51 AM, Robert Yang <liezhi.yang@windriver.com> wro=
te:
> Note: This is only for yocto, not for oe-core, since oe-core doesn't
> have scripts/lib/bsp/kernel.py.
>
> // Robert
>
> The following changes since commit de4cdfd6bc1280ac7ac0559b87734d26294ef7=
73:
>
> =A0documentation/kernel-manual/kernel-how-to.xml: Updated to kernel 3.4 (=
2012-05-31 21:16:55 +0100)
>
> are available in the git repository at:
> =A0git://git.pokylinux.org/poky-contrib robert/kernel_py
> =A0http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Drobert/kernel_=
py
>
> Robert Yang (1):
> =A0kernel.py: replace os.popen with subprocess.Popen
>
> =A0scripts/lib/bsp/kernel.py | =A0 =A05 +++--
> =A01 files changed, 3 insertions(+), 2 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


Merged into Poky

Thanks

-b


--=20
Elizabeth Flanagan
Yocto Project
Build and Release

