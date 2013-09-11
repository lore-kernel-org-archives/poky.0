Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFBEDE01445
	for <poky@yoctoproject.org>; Wed, 11 Sep 2013 07:07:12 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id db12so6003444veb.28
	for <poky@yoctoproject.org>; Wed, 11 Sep 2013 07:07:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=cj+cbsTZQRDBB0ipRMzXzh5sykjoREg7BavPjvGDKBI=;
	b=nNNg7JwQwiypjkj1e4Lzagru9G3YysahPXdpYx61MWE5U8A067px/JaMzGstEtJSbw
	laXiWlkNw/TpqM/B1yTjiKmCMoPSWKPbj2edm6qYObdntMUjZrGSVC/RnyeZJQ37pMQG
	xKgikjPo5pzBKimYgYUDQKExYrAtP2MtNP93E4Bqk9j1xqAEQdBPh/7xvBu3UYYz5o1o
	BRq3dK93GfDeZv9tup6/fXI8o1a3b9iOT+IkjSKvV4ISlOdtXm/+5x2/FK2yXDRznJPw
	UPqt3zyO+Hi8G5E6B16zHMv+7G/vTHjOounMkvT08D5wgIoOO5zo45JFQS0pRF22iYS+
	9uMA==
X-Gm-Message-State: ALoCoQm4wiSriKGscjXLdgY7/IMyk9DcVGzz8N4dwx6lIfi0l+0av/JpkfoBX1Qs+k3iGYkGzlk2
X-Received: by 10.52.34.109 with SMTP id y13mr1243305vdi.8.1378908432067; Wed,
	11 Sep 2013 07:07:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 11 Sep 2013 07:06:51 -0700 (PDT)
In-Reply-To: <CAOMwXhMuBKMnWXej2VJux7ev-5cZS1hwviOs+a-ra2mq+_a0mg@mail.gmail.com>
References: <1378906988-15025-1-git-send-email-ross.burton@intel.com>
	<CAOMwXhMuBKMnWXej2VJux7ev-5cZS1hwviOs+a-ra2mq+_a0mg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 11 Sep 2013 15:06:51 +0100
Message-ID: <CAJTo0LYcMKuFsw+GKFPfdt6dbgbpRjiOgLPARJGEvV5eJaUhmg@mail.gmail.com>
To: Laszlo Papp <lpapp@kde.org>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] bblayers.conf.sample: use ##OEROOT## instead of ##COREBASE##
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
X-List-Received-Date: Wed, 11 Sep 2013 14:07:14 -0000
Content-Type: text/plain; charset=UTF-8

On 11 September 2013 14:56, Laszlo Papp <lpapp@kde.org> wrote:
> Do you have an url where this change is explained?

commit 70a16efaa662a95646e82c88d3295986e1db416f
Author: Ross Burton <ross.burton@intel.com>
Date:   Mon Aug 12 11:41:49 2013 +0100

    oe-setup-builddir: substitute ##OEROOT## when using templates

    oe-setup-builddir substitutes ##COREBASE## which seems like it
should have the
    same value as the variable ${COREBASE}.  In reality it doesn't as
##COREBASE##
    is substituted with the value of $OEROOT (the location of the
oe-init-build-env
    script), whereas ${COREBASE} is set by oe-core to the parent
directory of meta/.
    If oe-core's meta/ isn't a top-level directory then ##COREBASE##
and ${COREBASE}
    have different values, which can lead to confusion.

    To resolve this, deprecate (but still substitute) ##COREBASE## and
substitute
     ##OEROOT# for $OEROOT.

    (From OE-Core rev: 1890783928dd1c73105fae32fb6c588afc287ff6)

    Signed-off-by: Ross Burton <ross.burton@intel.com>
    Signed-off-by: Saul Wold <sgw@linux.intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

