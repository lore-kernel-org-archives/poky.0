Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B08E2E013A7
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 02:53:02 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id w15so341973vbf.35
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 02:53:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=XB64a8RSqIFl+FvxBFtBGjXeG4JF3EH/vOYyYHVllyQ=;
	b=C4rHe/k9zZVtHJO4VrfahJ88EATb5WOjIfH+GOwlp7AQ8pfSOwsCVcWqVtJvCazrgS
	zsopQBXkkVQi8yMs5A6TsjRjaMjjDScw4CRcBflP/RWAE368QZsfHFXOek0/h383THjA
	XZN0g3bjvNVnh+85XiNqAhkgFTIkGVpL1cTw9jPITWBCF505KkA3AWNrkB+PjKTRjyJ3
	Y9Qw54shCVfXC5CccL1kFWrn6IgreB/jDz15LQjw8PewN/xnuYw6evSjMJUecQTrO1DH
	8C9Cr4QFRZ0POUSh3tyuMu24ZmQNodYn0FjPQX+I24lS2qhaqj6l/l+fZVWt7A+1njlk
	Eryw==
X-Received: by 10.59.0.131 with SMTP id ay3mr16885960ved.78.1374745982390;
	Thu, 25 Jul 2013 02:53:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.30.15 with HTTP; Thu, 25 Jul 2013 02:52:42 -0700 (PDT)
In-Reply-To: <1374746109-10816-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
References: <1374746109-10816-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 25 Jul 2013 10:52:42 +0100
Message-ID: <CAJTo0LZW0zM4=CfzLeeuMy23UDs5KGkitLPqnKS1Raoo2PXw9Q@mail.gmail.com>
To: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
X-Gm-Message-State: ALoCoQnIL2po9Za6CK5NLJdFeb8CK0R8zhKioEvN2IuQi5BXY0/HU1DcvM4pNJzEYsWulYDtKA/3
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v3] package_regex.inc: Add/Update REGEX and PRSPV variable
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
X-List-Received-Date: Thu, 25 Jul 2013 09:53:03 -0000
Content-Type: text/plain; charset=UTF-8

On 25 July 2013 10:55, Emilia Ciobanu
<emilia.maria.silvia.ciobanu@intel.com> wrote:
> The PRSPV variable is used for the packages:
>         * zip
>         * unzip
>         * docbook-sgml-dtd-3.1-native
>         * docbook-sgml-dtd-4.1-native
>
> The REGEX variable has been added/changed for the following packages:
>         * btrfs-tools
>         * bjam-native
>         * build-appliance-image
>         * mpeg2dec
>         * mpfr-native
>         * nativesdk-mpfr
>         * xf86-video-omap
>         * remake
>
> Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>

Looks good to me.

Ross

