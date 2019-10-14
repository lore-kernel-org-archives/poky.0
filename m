Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13D3EE00D7E; Mon, 14 Oct 2019 03:09:43 -0700 (PDT)
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
	*      [209.85.128.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E57AE0049C
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 03:09:38 -0700 (PDT)
Received: by mail-wm1-f66.google.com with SMTP id v17so16117664wml.4
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 03:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=s5qXV0pEX2luYFjNrWunfP+6lYicyZIAktqIzsnwogc=;
	b=RS2ZROZNOXHf5GTNP1Ppb+ZGtTivk3xMPjc0BSJEtsHt1Gw/KOEa301l0KhaG/wpA+
	HIyBFHsrDgAqN9lejqxIgt0yKXt3h0vTrZft05sfZJaEPHZWKTha9vueNIbd/fEFqQRA
	j5iCKsozdheoMBQMau5vsN/b3BHr2CKmv7ah8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=s5qXV0pEX2luYFjNrWunfP+6lYicyZIAktqIzsnwogc=;
	b=CzEGBNVRvn3Hm1e9LVeiG3WrfvN2n+dUMxCcq3fKTpI58EjoXDmqbGpWBUXuQxrosO
	sPM3IFjCslvg6U5n27dqG4f36brBOmnyvi4CeNB5UzcFRWE0z0zdpExS1o49wEcjKTmq
	TuuS9vf8qSA1xu4jthpdpc38bQwbINaOrbFYs67V/j7BMbLgx/Eh1YJwHJ1JVLNdP2a3
	gZINnHXcP3FHCzgbUgxcLkbeEq+IUu95LJbHBrVMkvGAuWSKN/S7bal4wJLLOKu2vL+h
	OeVZrNr0t3EdHs0eaMGQ9Ld0dAi2muqpDK9wjHNYQtOq4Fh/P2/0za552V/TN17kmiAu
	RGPQ==
X-Gm-Message-State: APjAAAUkCXkldfK0YcqQEcTwWT4QOc6RY8MfsNRDSifALTAtT02jD0O+
	GZ0CoUidzyljZ1eYdpHandbLfA==
X-Google-Smtp-Source: APXvYqydp17nPUdrQZPgUh6zuteLoJU72k0GuZ54k54lYr8mM6KiPCosc4J5ESKgHbYOjQzXmjiz4Q==
X-Received: by 2002:a7b:cd04:: with SMTP id f4mr14213416wmj.91.1571047777383; 
	Mon, 14 Oct 2019 03:09:37 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	x2sm21872581wrn.81.2019.10.14.03.09.36
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 14 Oct 2019 03:09:36 -0700 (PDT)
Message-ID: <eb81f66bdaa3604bb555d0416ae83b8df61d0f13.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Mon, 14 Oct 2019 11:09:35 +0100
In-Reply-To: <CAOe0dAX_G6aV3=Mn9+KeMDTfXqogLj7R16pkmy7Bfhvh7KuFzg@mail.gmail.com>
References: <CAOe0dAW_-NRUPdVk-1Fb4v3PQpA3h0um-CwvjD2pkskQfd4G+w@mail.gmail.com>
	<CAOe0dAUCXc0zF---SitaCZkVr3i=mc6YZUWuT8tL0UdYopKy-A@mail.gmail.com>
	<CAOe0dAWMfbuS9=E2Vx5zrd+KuAs1-Wm7n3EWykC0ETjeFyT9dQ@mail.gmail.com>
	<CAOe0dAVhYOMbonHS_TMPAh3WtSXGvNaRjECU1faMm8N4gFbmNw@mail.gmail.com>
	<fb55cc695965290bf6767a8ab0aeb0a2aee396f0.camel@linuxfoundation.org>
	<CAOe0dAX_G6aV3=Mn9+KeMDTfXqogLj7R16pkmy7Bfhvh7KuFzg@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Poky build failure with "Could not invoke dnf" error message.
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
X-List-Received-Date: Mon, 14 Oct 2019 10:09:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-10-14 at 15:24 +0530, AshishKumar Mishra wrote:
> Thanks for replying back Richard. 
> 
> I can see the RPM generated at "tmp/deploy/rpm/core2_32" . 
> 
> [15:14:38]:~/Documents/linux-foundation-projects/yocto/build-armour : find tmp/* -name 'eth0*' | grep rpm
> tmp/deploy/rpm/core2_32/eth0-dev-0.1-r0.core2_32.rpm
> tmp/deploy/rpm/core2_32/eth0-dbg-0.1-r0.core2_32.rpm
> tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo/rpm/core2_32/eth0-dev-0.1-r0.core2_32.rpm
> tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo/rpm/core2_32/eth0-dbg-0.1-r0.core2_32.rpm
> tmp/work/core2-32-poky-linux/eth0/0.1-r0/deploy-rpms/core2_32/eth0-dev-0.1-r0.core2_32.rpm
> tmp/work/core2-32-poky-linux/eth0/0.1-r0/deploy-rpms/core2_32/eth0-dbg-0.1-r0.core2_32.rpm
> 
> This is my folder skeleton & attached is the recipe 
> ~/Documents/linux-foundation-projects/yocto/meta-mechanic/recipes-
> armour (master) : ls
> armour  eth0-0.1  images
> ~/Documents/linux-foundation-projects/yocto/meta-mechanic/recipes-
> armour (master) : ls eth0-0.1/*
> eth0-0.1/eth0_0.1.bb
> 
> eth0-0.1/eth0-0.1:
> eth0.service
> 
> Is there any specific dependency which i am missing or if i am doing
> any thing wrong here . 

In the list above I see "eth0-dev" and "eth0-dbg" but no "eth0"
package.

The error is therefore correct in that no "eth0" package exists. Why, I
don't know but you need to look at the recipe and figure out why the
expected package isn't generated.

Cheers,

Richard


