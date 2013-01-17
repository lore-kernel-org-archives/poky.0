Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B1B9E00724
	for <poky@yoctoproject.org>; Thu, 17 Jan 2013 03:15:36 -0800 (PST)
Received: from mail-vb0-f70.google.com ([209.85.212.70])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 17 Jan 2013 03:15:35 -0800
Received: by mail-vb0-f70.google.com with SMTP id s24so617855vbi.5
	for <poky@yoctoproject.org>; Thu, 17 Jan 2013 03:15:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=V9k3Oeqb1G/GBkg+HAEc04kP2+LfLut6o83STzeROY0=;
	b=i8KkGv001qgk2otJSIukmp47QhOTDvMx0WLqBfb1yyu+uM9AEpGkSW+y+noXsRysRb
	xYJ5Tyjjq7wzoJumPpFMBQTB2LL5Bz4sPoNaQu0chflWCnHaJrG3ZNOo4lf3bQEyjTJd
	Lj+lOT1uvpJoIlW4ysxg6pUD+chcP0AOW9PrzDXNX1CWy09HJhDrBL05ifFdzhziiX93
	KKRo5lzzXp/I3f8hRQZu0oZvR4yzXWoeUFPLXh30VrvK40OU1VeYADh0InnGoKvY2HEI
	YFe0o1NPmgmi99AHBJxgFXcjHEtq0TgydoKy/n04OY0FNysu/MSI/cJ75CFiQ+5AtNF0
	pIBA==
X-Received: by 10.220.247.136 with SMTP id mc8mr4822169vcb.44.1358421333668;
	Thu, 17 Jan 2013 03:15:33 -0800 (PST)
X-Received: by 10.220.247.136 with SMTP id mc8mr4822161vcb.44.1358421333469;
	Thu, 17 Jan 2013 03:15:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.103 with HTTP; Thu, 17 Jan 2013 03:15:13 -0800 (PST)
In-Reply-To: <50F7CFDA.6090505@simpleaudio.com>
References: <50F7CFDA.6090505@simpleaudio.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 17 Jan 2013 11:15:13 +0000
Message-ID: <CAJTo0Lay83xOxnhUAUmb8bS+igk=woeMCboXR+S+VeTHYY61Fg@mail.gmail.com>
To: Wayne Tams <wayne.tams@simpleaudio.com>
X-Gm-Message-State: ALoCoQluNzcgQ/rroB81kix8jmTmc7Gv5Moby94IoHOxY/wsh0u3om+nP8KyZiVKCpN9Hl9zpqJ2N6L+lci/qD3lk/xfYQ2lQqcYuw+JSbAxa1dwfnxzQSE4g+98n5eu+SJ7OGgta5OggJuqfHtQQJNv+wrGrTpr9Q==
Cc: poky@yoctoproject.org
Subject: Re: gst-rtsp not building
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
X-List-Received-Date: Thu, 17 Jan 2013 11:15:36 -0000
Content-Type: text/plain; charset=UTF-8

On 17 January 2013 10:18, Wayne Tams <wayne.tams@simpleaudio.com> wrote:
> DESTDIR=/home/wayne/source/y/yoctoProject/raspberryPiBuild/tmp/work/armv6-vfp-poky-linux-gnueabi/gst-rtsp/0.10.8-r0/image
> install
> | make: *** No rule to make target `install'.  Stop.
>
> Could anyone suggest what could be causing this error and what I could do to
> fix it.

To be honest that's probably why that recipe is in a branch (my
branch) and not in meta-oe...

Do the do_configure and do_build logs actually look like they worked?
Sometimes "install" will fail because configure failed without an
error, so build does nothing, and then install actually errors out.

Ross

