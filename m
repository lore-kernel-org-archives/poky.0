Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB5EAE01715
	for <poky@yoctoproject.org>; Mon, 21 Oct 2013 01:29:11 -0700 (PDT)
Received: by mail-ve0-f178.google.com with SMTP id jy13so3964422veb.9
	for <poky@yoctoproject.org>; Mon, 21 Oct 2013 01:29:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=aRAxaECo5ObKvNFw8wIMzgtLqX0WqiAjZQSgEdLQ3Lg=;
	b=AX4Skpz0VozwitOJ/V/g98qCuPUwBN/mlFc86Aty+zlXgp1j+poDovO1xRw01CNxU0
	Mp58EjOSOLCHy80TqPR34kWjzS5nzLI2+2j6b6J9gPA+qrCTfe/LzP2R+WDdbtFYyEQR
	Rd/VfnmzDXXS8OY+18Ka7ILQmq7oZjHy1fnM6W1cNwBxYRsUszzsmd7jv4eRIKf3NuGO
	gJdrBPziRsMZzhNL584yenp6iLKtZiBxcAUUPWMzQuKTjAnQgotrHtDtI5CtDzJNbBHY
	6cIy3lBkpD00YU3Xz0fVrDqXvKdZ8TppxBPQtLKs/pW865xHcMMU9+iibFMpqH61PT0u
	NoFg==
X-Gm-Message-State: ALoCoQnDuMqYzi+G+T00KeKskIE/bNnIn3ybmAyYtJiACyryGyc4MtDB+Z3CE8KgxEm9ZRRD56HO
X-Received: by 10.58.207.15 with SMTP id ls15mr329194vec.17.1382344150878;
	Mon, 21 Oct 2013 01:29:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 21 Oct 2013 01:28:50 -0700 (PDT)
In-Reply-To: <1382308347.6266.21.camel@dvhart-mobl4.amr.corp.intel.com>
References: <1382308347.6266.21.camel@dvhart-mobl4.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 21 Oct 2013 09:28:50 +0100
Message-ID: <CAJTo0LbGJ6m5q8uot4iLuFe_osVDXSpj7Y4o5X4MtbpoiaPMDw@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: libcheck data file clashes for core-image-sato-sdk on minnow dev
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
X-List-Received-Date: Mon, 21 Oct 2013 08:29:13 -0000
Content-Type: text/plain; charset=UTF-8

On 20 October 2013 23:32, Darren Hart <dvhart@linux.intel.com> wrote:
>  * check_data_file_clashes: Package check wants to install
> file /build/yocto/master/minnow_20131019205134/build/tmp/work/minnow-poky-linux/core-image-sato-sdk/1.0-r0/rootfs/usr/bin/checkmk
> |       But that file is already provided by package  * libcheck

oe-core has a libcheck that doesn't produce a check package. Where is
your "check" package coming from?  It should be deleted and oe-core's
libcheck used.

Ross

