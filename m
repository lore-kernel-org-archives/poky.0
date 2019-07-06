Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32EE8E00D90; Sat,  6 Jul 2019 05:31:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AC9CE00B6C
	for <poky@yoctoproject.org>; Sat,  6 Jul 2019 05:31:39 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id r1so6068463wrl.7
	for <poky@yoctoproject.org>; Sat, 06 Jul 2019 05:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=lw85wHEZGFFFlvkDnja6f8j+M83LBi28/xcSGZlHa7Q=;
	b=YCAO5aDCKP0sdDB6gfExX8q4KI3gsHmDS2Mbzwbja4LtAU1SC+L0cyYOCyeU3Un1XL
	WCrTiU7161p3HYvoeVlGpL9ViiXYqzM2ufYNeC6sDfiZ84cdmLbXnB9TtJEo6x56KyVe
	YEkiYB1wDzxH0ycShwPdjTQypD8FtkGHFAPuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=lw85wHEZGFFFlvkDnja6f8j+M83LBi28/xcSGZlHa7Q=;
	b=epViAc9Id8DKUSSByQCmBhblDkbpJrm/7tn+Vq8/MGgtalA8rKX/MzODeyCYByTXi9
	MkfzPaKVB8LYoFDDBaTMWKJzuKGr7blogKrhhFjW04smC1RHbiEBE/xUJZmzXV/hxcr+
	SN+tlNIwzgVluk5QPnNbESGlzEM+c4cQVjVNLiLYFnwu6tcc+sbUn8qwxr7qty1IozjW
	8IuwlaMkoF9ddSrrigvSGwNawrHFfOMEXrM6pB8WIGMexzeCzzsFvygWCldXWXZAf/4L
	/AWbn6almzd7BSIme5crsbIthKVZe/iQU1HePE1ohsZT3XCaGYxMv7omwyxKvSn8OHfz
	9Gzg==
X-Gm-Message-State: APjAAAXig5CyaLX9DgdEPGqOMgOWvb3a5HYpgcejVuxq4fb2i19hVg5O
	i1Hj/FwRqRQI+bypEO2MS1L61k8eP8g=
X-Google-Smtp-Source: APXvYqwkENbS9Mzchz8P69h0D1cHxy3NuR3TtifCO7t59+brz8MYkIqawLzrNC5stlAq61B/65LFCg==
X-Received: by 2002:a5d:4c86:: with SMTP id z6mr3624746wrs.330.1562416298696; 
	Sat, 06 Jul 2019 05:31:38 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	g14sm11205102wro.11.2019.07.06.05.31.37
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sat, 06 Jul 2019 05:31:38 -0700 (PDT)
Message-ID: <637f10ea8804f01bcde302ad0c418a362f257b69.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Adrian Bunk <bunk@stusta.de>, kai.kang@windriver.com
Date: Sat, 06 Jul 2019 13:31:36 +0100
In-Reply-To: <20190706095328.GA1877@localhost>
References: <20190704134520.16320-1-kai.kang@windriver.com>
	<20190704134520.16320-2-kai.kang@windriver.com>
	<20190706095328.GA1877@localhost>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [oe-core][PATCH 1/2] defaultsetup.conf: enable select init manager
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
X-List-Received-Date: Sat, 06 Jul 2019 12:31:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2019-07-06 at 12:53 +0300, Adrian Bunk wrote:
> On Thu, Jul 04, 2019 at 09:45:19PM +0800, kai.kang@windriver.com
> wrote:
> > From: Kai Kang <kai.kang@windriver.com>
> > 
> > Introduce a new variable INIT_MANAGER and create 3 init-manager-
> > *.inc
> > files to configure init manager settings. Available values of
> > INIT_MANAGER are sysvinit, systemd and mdev-busybox. 'sysvinit' is
> > set
> > by default for compatibility.
> > ...
> > --- a/meta/conf/distro/defaultsetup.conf
> > +++ b/meta/conf/distro/defaultsetup.conf
> > @@ -23,3 +23,6 @@ PACKAGE_CLASSES ?= "package_ipk"
> >  INHERIT_BLACKLIST = "blacklist"
> >  INHERIT_DISTRO ?= "debian devshell sstate license remove-libtool"
> >  INHERIT += "${PACKAGE_CLASSES} ${USER_CLASSES} ${INHERIT_DISTRO}
> > ${INHERIT_BLACKLIST}"
> > +
> > +INIT_MANAGER ??= "sysvinit"
> > +require conf/distro/include/init-manager-${INIT_MANAGER}.inc
> > ...
> > --- /dev/null
> > +++ b/meta/conf/distro/include/init-manager-sysvinit.inc
> > @@ -0,0 +1,6 @@
> > +# Use sysvinit for system initialization
> > +DISTRO_FEATURES_append = " sysvinit"
> > +DISTRO_FEATURES_BACKFILL_CONSIDERED_append = " systemd"
> > +VIRTUAL-RUNTIME_init_manager = "sysvinit"
> > +VIRTUAL-RUNTIME_initscripts = "initscripts"
> > +VIRTUAL-RUNTIME_login_manager = "busybox"
> 
> I am not sure whether this can be fixed better, but this does break 
> existing configurations that use a non-default init system.
> 
> I just ran into a build issue with
>   VIRTUAL-RUNTIME_init_manager = "systemd"
> since this now resulted in both sysvinit and systemd being attempted
> to 
> be installed to the image.
> 
> This was fixable in my configuration with
>   -VIRTUAL-RUNTIME_init_manager = "systemd"
>   +INIT_MANAGER = "systemd"
> 
> This at least needs to be properly documented as a breaking change.

This change also didn't quite work out for some of our selftests. I've
a patch in master-next which tried to improve things and that fixed the
selftests.

The only other way we could do this is to default INIT_MANAGER to say
"unset" and have an empty file for that. That will of course break my
patch and need the defaults adding back into the recipe. Unless we put
those defaults into the unset version.

Not sure quite what we should do here...

Cheers,

Richard



