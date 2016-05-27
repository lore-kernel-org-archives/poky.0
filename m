Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DAF6E00E29; Fri, 27 May 2016 01:26:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4A90E00DEE
	for <poky@yoctoproject.org>; Fri, 27 May 2016 01:26:29 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id q62so12579561wmg.3
	for <poky@yoctoproject.org>; Fri, 27 May 2016 01:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=feLf0F22XriU7x8FViAsXBxwjDrOirrwmMApBtzY/mo=;
	b=Bn5OpJK0hDfcIiDwmmldCpedFdvrWOcJjXMivop00kg3z3JmG0xGtWTBk6wRIyp53p
	b6FmEm+K3XA4R97POsdWjG5JYBEtLXAOeS+28DJYmD1O4otnoK66IaOmiXm/pj4sMe2d
	YdkufsT3u7gYvw1EiPU5rM9s+OsHs3NtIrjZWVgHiiEb31sRN2VYqrHEv6H2WIsGxbt7
	UaKWeKtTjoB5PUKRm3lXBtqPIs7+pJTk88dGf1Feca1rdPKz7h36J3j8oVCGkCmoeUsu
	M07fPDQY+x9PDW1VjqazQd0RwTxaeaHrvmy3EPJM77KwPKn0ISKBnJxzz6H99ux+HuQu
	vvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=feLf0F22XriU7x8FViAsXBxwjDrOirrwmMApBtzY/mo=;
	b=dNdXOouSGgv0RZgkeovTVEwY70dcXwb5RRxSE8BYvHDVrlkUnAG8RPel4p1VwLQyg4
	T+5/BjoTML0Tz2K9nhv54JzK2wP4pGXdBtOdPoH/05Wr0z2Qi7MsH6W7XZHobC8vnjbv
	Des1paSGamvNdyc3XPxB1OYnFpZRGz5lyRdfC4BdshWr3LWQnYI0fquW0jlMbyvsIgL0
	hCRHZsRd4aEA/n0F4Ismb5yPuU5jszvfX3r07KZtPFT+e0+vvM9HXPLMw6OY/8r7WEKU
	vnnLGx00Cqxc7fFWLqV9X2MpKHl3C32WiIfpll3D3TkUoWTw2NkRXn1+uloyLkEr2bgb
	4FJg==
X-Gm-Message-State: ALyK8tLVIIdT9VQtQFGrd/PstZYbAIBS+8YWQgm4MNyO8SCWxtBhaN2mdHo4jcxQKHw7yg==
X-Received: by 10.28.19.210 with SMTP id 201mr7064806wmt.49.1464337588223;
	Fri, 27 May 2016 01:26:28 -0700 (PDT)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id 63sm7442149wmz.5.2016.05.27.01.26.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 May 2016 01:26:27 -0700 (PDT)
Date: Fri, 27 May 2016 10:26:25 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: star@gmx.li
Message-ID: <20160527082625.GP9848@resin.home>
References: <trinity-c97069ff-4043-4992-a7b5-01692cfa5eac-1464326605415@3capp-gmx-bs48>
MIME-Version: 1.0
In-Reply-To: <trinity-c97069ff-4043-4992-a7b5-01692cfa5eac-1464326605415@3capp-gmx-bs48>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: poky@yoctoproject.org
Subject: Re: lib-sdl issue with qemu
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
X-List-Received-Date: Fri, 27 May 2016 08:26:31 -0000
X-Groupsio-MsgNum: 10447
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ftQmbtOmUf2cr8rB"
Content-Disposition: inline

--ftQmbtOmUf2cr8rB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 27, 2016 at 07:23:25AM +0200, star@gmx.li wrote:
> Tried a "bitbake core-image-minimal" with included xilinx meta-layer and machine "qemuzynq".
> I get the above mentioned error on an Ubuntu 1604, but with already installed libsdl.
>
> See below:
>
> ...
> | ERROR: User requested feature sdl
> |        configure was not able to find it.
> |        Install SDL devel
> |
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at /home/user/yocto_qemu/tmp/work/x86_64-linux/qemu-native/2.4.0-r1/temp/log.do_configure.3236)
> ERROR: Task 72 (virtual:native:/home/user/yocto/poky/meta/recipes-devtools/qemu/qemu_2.4.0.bb, do_configure) failed with exit code '1'
>
>
> sudo apt-get install libsdl1.2-dev
> ...
> libsdl1.2-dev is already the newest version (1.2.15+dfsg1-3).
> 0 upgraded, 0 newly installed, 0 to remove and 95 not upgraded.
>

I hit this issue last week too. What is your host operating system?

--
Andrei Gherzan

--ftQmbtOmUf2cr8rB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXSASxAAoJEHO76Gt+erfPAIkP/1yqH5xW6A2L+jllg+kNt7aB
NpbAeBqFFN+mR6RQc8jk2D8xzH6Lx5oILUp3oFTDMTs+XLh3W9sRxRLcsAwIL5Z2
3Ko9zksYRS3mrRTf+c3MmFj1g/6k6AIq8WKIf1/xztZ+NgO9fD9enhV8C+Zod1L/
+ZDM3acpO5B2q9m/FLiYGRnGGZJXGOI7odypXWjbwSFeQHfZrrPwkSyRcutzPIpF
IHgCepxuuGb2romI+PCpIb59PSKB+kjhHobINhBRiuAwBAeFqOoEUJ+qDWFmaOps
CUYirjw/7cNwkzLmFhXkNF2l1MvtcYLOx1YQP7kRkvZcFxDwCT1bcqm3xuvVT/kU
8kzTwzTCdBPuQBbPJkoSOjRSjHXOdJsQZtt5Li/qOQqDpkLqQ8y21AYSn+xafbd9
/hjRrlTS8AGOgzaykYR+77e/PCa1suGO+gNEyhTUEA9Gyxg7gV8Y+Mgi4EeQIRF6
J5LLdIMmqg+GRIl83lu3BBzGqU09wNlKumXAE5il3UcbWKnjqYQ8nK+kMK0KoCNI
xNKebJ85+Mw8fJ6W23Mx6S1oZgWzMHyq8LPTsNDvxefDs6ZFuRvAIqfJYJlpK/hx
3H0RDckY9WnEk4mE7mA61f1Cnttxgx6gbOG7Zn+fdSzwG/JvWApT4pVjmZAIfrNj
+FeXqRzPfGWT+DpFwcWP
=SDBB
-----END PGP SIGNATURE-----

--ftQmbtOmUf2cr8rB--
