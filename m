Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3642E005B3
	for <poky@yoctoproject.org>; Fri, 14 Jun 2013 05:54:12 -0700 (PDT)
Received: by mail-vc0-f171.google.com with SMTP id gd11so397758vcb.16
	for <poky@yoctoproject.org>; Fri, 14 Jun 2013 05:54:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=wHaaKEypsohcViRbkjAeQmioW0uq8n5sGVmkFTQf8X0=;
	b=NuEGlbLfJFwQrGTR9jxmEUylvTtK5e8esqM+zuTTMkAQAhTOuTdFArwcccbM7C9SLo
	lyjbjXnzTa/0xQR7ZnL+YOIVjMMsOo5Y+2WvAVhF4D5KR43Ioy3atnb3EyuTP1yy9BPT
	97hFe6XeQbJt4YUsOKJRLJgmYFDfSt2Ef5kwI2ZW9yiPEXK2QDGV1fouItYKrYsXHhLP
	rMaWS2iNkdT84E6t8Dd4E1tCoLe3wdkjq8P+cZk/S8P8yhGF4754Oy0B5dv/0AcT0jAv
	a/kPmaxAq91IaYmF3ZSXrTT36o80ZqSug0LVn0KZjTFj9ISYTHMSXnLhb4z/zP84wNXP
	JB6Q==
X-Received: by 10.52.97.71 with SMTP id dy7mr745052vdb.40.1371214451598; Fri,
	14 Jun 2013 05:54:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Fri, 14 Jun 2013 05:53:51 -0700 (PDT)
In-Reply-To: <1370107459-26958-1-git-send-email-dimasadutra@gmail.com>
References: <1370107459-26958-1-git-send-email-dimasadutra@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Jun 2013 13:53:51 +0100
Message-ID: <CAJTo0LbcA8zu0spoWW=zn2JGQM-O+xCTb0yjG7gwL6wP-JHTZQ@mail.gmail.com>
To: Dimas Abreu Dutra <dimasadutra@gmail.com>
X-Gm-Message-State: ALoCoQk0MmUtUfE/qwgL47iPIopFwzLeskOnud2Izp6fI1EYCdUkobCRDFAV4hSH0AO8xjS7MkRW
Cc: poky@yoctoproject.org, Lukas Bulwahn <lukas.bulwahn@oss.bmw-carit.de>
Subject: Re: [danny] [PATCH] site/common: deactivate a python cross-compilation runtime check
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
X-List-Received-Date: Fri, 14 Jun 2013 12:54:14 -0000
Content-Type: text/plain; charset=UTF-8

On 1 June 2013 18:24, Dimas Abreu Dutra <dimasadutra@gmail.com> wrote:
> From: Lukas Bulwahn <lukas.bulwahn@oss.bmw-carit.de>
>
> In configure there is a runtime check to determine buggy getaddrinfo and as we
> are cross-compiling this check goes wrong. If ipv6 is enabled in python, the
> failed test is reported as fatal error with the message
> Fatal: You must get working getaddrinfo() function.
>
> Setting ac_cv_buggy_getaddrinfo=no deactivates the runtime check and allows to
> compile python with ipv6 enabled.

Merged into danny-next.

Ross

