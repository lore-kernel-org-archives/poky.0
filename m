Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f53.google.com (mail-vb0-f53.google.com
	[209.85.212.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1277E01482
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 07:27:01 -0700 (PDT)
Received: by mail-vb0-f53.google.com with SMTP id i3so1629946vbh.12
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 07:27:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=dIEJiD3Q5bA9mYh0Uu7VmzacXxrPQJnKn+CdIAgdPXY=;
	b=pzi0nMBkrTwd4BbYibFfhv4iIrTX2ZcT0B9xG7fcRFVgt0ZY47QfuKCCRFJaI+yOVG
	krIq3M35E98jb2YBdi8dGimXiBt1rkAdf4Xzns0eL07MNnOM1Bx2n85ywJ99mWwn3KQa
	j/9UzzTxkA+rYoQ12lk5BedB0F/eb9y0yV1+jH4bsQhX7UhinJ8M066VEwUZkx2JwFwu
	YrX08rqk29Yhz5WbGZX+dapTazx08xSLSFjrXh5MG+BbnrH+IRby9LtSsdShBzzFVFqn
	FdU/pqLIxXILa7HrmUar4fLV5wsxSxH5E9qNAs67xhZtZZ/6ZMphITLIZcX7QS/s8xiG
	yt7w==
X-Received: by 10.58.233.8 with SMTP id ts8mr27032564vec.44.1375194420295;
	Tue, 30 Jul 2013 07:27:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Tue, 30 Jul 2013 07:26:40 -0700 (PDT)
In-Reply-To: <cover.1375164937.git.sgw@linux.intel.com>
References: <cover.1375164937.git.sgw@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 30 Jul 2013 15:26:40 +0100
Message-ID: <CAJTo0LZmK+OMYAFhb52JNAX0s6TPZGWV6DN8xxfzHXxos4UJ9A@mail.gmail.com>
To: Saul Wold <sgw@linux.intel.com>
X-Gm-Message-State: ALoCoQkba+EwTX0bIy4hxdprF1gPlGsv29XJtLm+sPMA8avqP95StSnbJUifmiI41uJNxJAinNQr
Cc: paul.eggleton@linux.intel.com, poky@yoctoproject.org
Subject: Re: [CONSOLIDATED PULL (M3 rc1) 0/8] Poky changes
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
X-List-Received-Date: Tue, 30 Jul 2013 14:27:02 -0000
Content-Type: text/plain; charset=UTF-8

On 30 July 2013 07:17, Saul Wold <sgw@linux.intel.com> wrote:
> Emilia Ciobanu (1):
>   package_regex.inc: Add/Update REGEX and PRSPV variable
>
> Laszlo Papp (1):
>   layer.conf: make the yocto layer dependent on oe-core
>
> Ross Burton (5):
>   genericx86: add new BSP
>   local.conf.sample: add genericx86 reference
>   genericx86: add fbdev, modesettings and vesa Xorg drivers
>   genericx86: disable rootless X
>   genericx86: ship all the driver firmware by default
>
> Saul Wold (1):
>   poky-lsb: Enable GCC Security flags by default for LSB builds

Acked-By: Ross Burton <ross.burton@intel.com>

Ross

