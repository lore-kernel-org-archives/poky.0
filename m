Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.10135.1594881887242661925
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Jul 2020 23:44:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AN5xd+/3;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB92EE01E8C; Wed, 15 Jul 2020 23:44:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C23E1E01E8A
	for <poky@yoctoproject.org>; Wed, 15 Jul 2020 23:44:44 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id a6so5808618wrm.4
        for <poky@yoctoproject.org>; Wed, 15 Jul 2020 23:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=Yn9poJ77sAejsE1U5DbTrPwc7a+WEO7sxrbK0j4OeGE=;
        b=AN5xd+/3rdm5JlvcypTAJyZmYCIZp6MVegWlT9yzStQmKrwZvKAayuAR/CxjoVjuWH
         jLEOlNP0raB23r1ZfwYX22LEV1UQ2lAeTCcXp9hAlaJ/cVJzjFtjuSBVoAm7RMCiZQS3
         dg2yPySgWVN+Nf5sHfq2Oe0e0adHDz0F+JrJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Yn9poJ77sAejsE1U5DbTrPwc7a+WEO7sxrbK0j4OeGE=;
        b=HuNbJErZUz533hnkMPc7mgZVUz04OMv4hc61q8rqvf/XUnq+roKCkuA2X+nV9NGj4z
         5MhiTQGy9l/o7D5RrpjKgZ5zapOazkfrcZ0/jAlGXPnwK2/Kn+p8qy6Edw2H1KEH0Bt0
         tCu+FXuMTwaHjZHszyEXoNs8gwhHhjdNWUVVt21RnQYWTQnLyfmSA9SYfojrHoTphRut
         azCUWO6Odgtxy3vRH0vexzjBIopnJclGOBF+aViWQmvp7j4FXLhdrXXTtaMReVw1e81z
         gpeWFYuvKiIAmGSP3T5LNBixfUhQEhzhW2VNSP4IDXa+icm1pa+bLlMMztX3qF1iWTDg
         AGgg==
X-Gm-Message-State: AOAM533Snu6rfmoih1t8nKRJ/9inDeuKAumUCTPUcfJbSCweFtPGzI5L
	7KR7GjfViJjHk4NSXbCThsUtiA==
X-Google-Smtp-Source: ABdhPJxB8l7SqDw/ZZr2H2pfyeMHN9XfvfWiMD85v/02pvLNn1mQfo+QsJNnq6ASCU3UU/tPRhPLrA==
X-Received: by 2002:adf:80c7:: with SMTP id 65mr3615081wrl.246.1594881883363;
        Wed, 15 Jul 2020 23:44:43 -0700 (PDT)
Received: from f.c.4.9.c.e.0.f.2.5.c.9.7.3.d.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (f.c.4.9.c.e.0.f.2.5.c.9.7.3.d.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:1d37:9c52:f0ec:94cf])
        by smtp.gmail.com with ESMTPSA id p4sm7001427wrx.63.2020.07.15.23.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2020 23:44:42 -0700 (PDT)
Message-ID: <14e9e6f37e9bc9478772f3d67ebb50642eb83625.camel@linuxfoundation.org>
Subject: Re: [poky] do_image_wic failed with exit code '1', Codepage 850
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Roelof <rberg@berg-solutions.de>, poky@yoctoproject.org
Date: Thu, 16 Jul 2020 07:44:39 +0100
In-Reply-To: <4C5E3FDA-E32C-40CB-81CC-D647E53DB9D7@berg-solutions.de>
References: <4C5E3FDA-E32C-40CB-81CC-D647E53DB9D7@berg-solutions.de>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-07-16 at 08:39 +0200, Roelof wrote:
> Error in do_image_wic when building in an openSUSE based docker image
> (the customers IT only allows SUSE). Any ideas where this might be
> coming from ? Thanks a lot.
> 
> mcopy outputs
>  output: Error converting to codepage 850 Invalid argument
>  Cannot initialize '::'
>  Bad target ::/
> 
> Log:
> > DEBUG: Python function extend_recipe_sysroot finished
> > DEBUG: Executing shell function do_image_wic
> > INFO: Creating image(s)...
> > 
> > ERROR: _exec_cmd: export
> > PATH=/remux/yocto/build/tmp/work/phyboard_mira_imx6_14-phytec-
> > linux-gnueabi/remux-headless-image/1.0-r0/recipe-sysroot-
> > native/sbin:/remux/yocto/build/tmp/work/phyboard_mira_imx6_14-
> > phytec-linux-gnueabi/remux-headless-image/1.0-r0/recipe-sysroot-
> > native/usr/sbin:/remux/yocto/build/tmp/work/phyboard_mira_imx6_14-
> > phytec-linux-gnueabi/remux-headless-image/1.0-r0/recipe-sysroot-
> > native/usr/bin:$PATH;mcopy -i
> > /remux/yocto/build/tmp/work/phyboard_mira_imx6_14-phytec-linux-
> > gnueabi/remux-headless-image/1.0-r0/deploy-remux-headless-image-
> > image-complete/remux-headless-image-phyboard-mira-imx6-14-
> > 20200716063506/tmp.wic._f7ek1ol/rootfs_boot.2.vfat -s
> > /remux/yocto/build/tmp/work/phyboard_mira_imx6_14-phytec-linux-
> > gnueabi/remux-headless-image/1.0-r0/deploy-remux-headless-image-
> > image-complete/remux-headless-image-phyboard-mira-imx6-14-
> > 20200716063506/tmp.wic._f7ek1ol/boot.2/* ::/ returned '1' instead
> > of 0
> > output: Error converting to codepage 850 Invalid argument
> > Cannot initialize '::'
> > Bad target ::/
> > 
> > WARNING: /remux/yocto/build/tmp/work/phyboard_mira_imx6_14-phytec-
> > linux-gnueabi/remux-headless-image/1.0-
> > r0/temp/run.do_image_wic.63035:1 exit 1 from
> > 'BUILDDIR="/remux/yocto/build" wic create "$wks" --vars
> > "/remux/yocto/build/tmp/sysroots/phyboard-mira-imx6-14/imgdata/" -e
> > "remux-headless-image" -o "$out/"'
> > ERROR: Function failed: do_image_wic (log file is located at
> > /remux/yocto/build/tmp/work/phyboard_mira_imx6_14-phytec-linux-
> > gnueabi/remux-headless-image/1.0-r0/temp/log.do_image_wic.63035)
> ERROR: Task (/remux/yocto/sources/poky/../meta-remux/recipes-
> images/images/remux-headless-image.bb:do_image_wic) failed with exit
> code '1'
> NOTE: Tasks Summary: Attempted 4765 tasks of which 4552 didn't need
> to be rerun and 1 failed.

Which release of the project is this? Are you using any buildtools
tarball? Is uninative enabled?

It sounds like there is missing codepage/locale data. Whether that is
on the host system or from the project, its hard to say based on the
limited info about the version/configuration.

Cheers,

Richard

