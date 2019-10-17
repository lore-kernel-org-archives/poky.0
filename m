Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E323CE00D9E; Thu, 17 Oct 2019 01:23:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC3FEE00BE2
	for <poky@yoctoproject.org>; Thu, 17 Oct 2019 01:23:21 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id j11so1274243wrp.1
	for <poky@yoctoproject.org>; Thu, 17 Oct 2019 01:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=TFK/sZPXmGNOzDmVi4ojdK5zNJpu3CsXe1I+EdjkDns=;
	b=g7oLrJ/JjIZ3Ulpb1N+M7PYJ80hBivQCMjgxlaGij2Z6Wi3/DyOC5KtYBsYtmNRAK8
	cFH3KxSGyWzTBGUnfhOoHEfUOwGqKlJO9uQ7ATAe+Fx/hl2O1fCMuqGyg1jX1ZEjRKL3
	CdSmT4XfWDJ+wHQ5mG8MjpgFpdOIAeMDpMm/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=TFK/sZPXmGNOzDmVi4ojdK5zNJpu3CsXe1I+EdjkDns=;
	b=lG94P02jbHh1/FU6TSed6G4/G+HK8WhAqqB7D5h6etyQPz4lzHMwxSMuC+mlrgyddt
	k9eFxDSg2NH3xNGTO+7H/BVPGYDj/xBZp8yLGR52nDTcwAic086Pmw1DNG2u81ibjBBX
	7I0v0Gcs38UDFy3bN7yAuoQTmnDqQosUtBrzBTjh5lwc1HbUF8mbb7psnHm1FLoK980f
	XJFEfEvEV90uPxWkPAPVNSaP6tMkzlH1PFq0qunjaoS2o9RF6JGjFJuemIznXPoi1zHg
	408bchDZJer+c0zU6taViq6NzNjv1HSB9DU8b1l8B6X0FLOkcGf4b807S8e3TjfOK1fU
	VphA==
X-Gm-Message-State: APjAAAXdkVjNvSoMn931enMARfV8n5HxzXuy/cFAPa2TcDO9A8EI9Apt
	+gm01EvH0utikoIkm3DX7Vv0jg==
X-Google-Smtp-Source: APXvYqzmB/Avre8d8WPLJjTSovOdzcErfJ/l3U05Z3b7/wt3TVC2B2/ammxgUcSUPg5ZdTyVk52BwA==
X-Received: by 2002:adf:e74b:: with SMTP id c11mr1801626wrn.250.1571300600745; 
	Thu, 17 Oct 2019 01:23:20 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	b22sm1547167wmj.36.2019.10.17.01.23.19
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 17 Oct 2019 01:23:20 -0700 (PDT)
Message-ID: <5c67c3fb7ba0c15a70eb4ab9266604f8a90be214.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Sean Nyekjaer <sean@geanix.com>, Quentin Schulz
	<quentin.schulz@streamunlimited.com>, poky@yoctoproject.org, akuster808
	<akuster808@gmail.com>
Date: Thu, 17 Oct 2019 09:23:18 +0100
In-Reply-To: <9981ded9-6f85-64e5-d6fb-a774f255c5e8@geanix.com>
References: <20190611144648.30886-1-quentin.schulz@streamunlimited.com>
	<9981ded9-6f85-64e5-d6fb-a774f255c5e8@geanix.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Cc: andriy.danylovskyy@streamunlimited.com
Subject: Re: [thud] [PATCH 0/2] opkg and BAD_RECOMMENDATIONS in thud 2.6.2
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
X-List-Received-Date: Thu, 17 Oct 2019 08:23:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-10-16 at 10:27 +0200, Sean Nyekjaer wrote:
> 
> On 11/06/2019 16.46, Quentin Schulz wrote:
> > Hi all,
> > 
> > I've been hit with a rather unsettling bug when building an image
> > with
> > PACKAGE_CLASSES = "ipk" in Thud 2.6.2.
> > 
> > The error message is the following:
> > ERROR: meh-1.0-r0 do_rootfs: Unable to install packages. Command
> > '/tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/recipe-sysroot-
> > native/usr/bin/opkg --volatile-cache -f
> > /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/opkg.conf -t
> > /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/temp/ipktemp/ -o
> > /tmp/yocto/temp/work/machine-poky-linux/meh/1.0-r0/rootfs  
> > --force_postinstall --prefer-arch-to-version   --force-maintainer
> > --force-overwrite install packagegroup-base-extended packagegroup-
> > core-boot plop run-postinsts' returned 2:
> > Collected errors:
> >   * Solver encountered 2 problem(s):
> >   * Problem 1/2:
> >   *   - nothing provides bluez5 needed by plop-1.0-r0.aarch64
> >   *
> >   * Solution 1:
> >   *   - do not ask to install a package providing plop
> > 
> >   * Problem 2/2:
> >   *   - nothing provides bluez5 needed by packagegroup-base-
> > bluetooth-1.0-r83.stream1832prime
> >   *
> >   * Solution 1:
> >   *   - do not ask to install a package providing packagegroup-
> > base-extended
> 
> Hi all,
> 
> After this series was applied to thud, our BAD_RECOMMENDATIONS is 
> included in our rootfs :(
> 
> We have in our distro conf:
> BAD_RECOMMENDATIONS_append = " udev-hwdb"
> 
> If I revert this series on current thud HEAD, we are back to what is 
> expected :) An image without udev-hwdb

Would someone be able to confirm which patches we need to revert
please? It may also help narrow down the problem if we could figure out
which patches specifically need to be reverted to fix it.

It'd be easier if someone who can reproduce the issue easily could do
that...

Thanks,

Richard



