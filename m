Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CAE7E007EE; Fri, 28 Apr 2017 03:06:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.44 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED915E00724
	for <poky@yoctoproject.org>; Fri, 28 Apr 2017 03:06:15 -0700 (PDT)
Received: by mail-lf0-f44.google.com with SMTP id c80so31212130lfh.3
	for <poky@yoctoproject.org>; Fri, 28 Apr 2017 03:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=95E1kAlvIKmbgWILt4AjnliUF8OdOWqDClVA6C2nk24=;
	b=evohQ1ig37qh1p+fnTqJtpGEg8YV8glmL8EbKT0/N8VP6mMuZXPKlat/NQWy2I1szC
	qUxNkEJB+Jm2catMMcW149vgK+Nc1VQe8Knz9m7dQn74zMn1KjbF2xJu1ZDJ0UppRE41
	YRRudv2AgDmAVJUCXERIEM7zD1PUrg+vDF3AvQw3vKI41E5MqHHJmx8SsrNiPwiVrZg2
	J8nIf2+KE81xPARVXNuBWy19oaB0L+hg2DB5KqXczOZHrtJx09pCxZYmjxhXX/UeviST
	p34DXgMOZA8LQusDskVnsucresf6N/L8IYF9wnQooANWB+MSxuni9m6WtT+xVovrVo7e
	B68Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=95E1kAlvIKmbgWILt4AjnliUF8OdOWqDClVA6C2nk24=;
	b=EPIPJhH51tP2mzKRBSZSpEonY9z0HfjXMdaibzHljHprJgKuIZZvdvixRv6qc4eSlK
	ndiGADpRKQKfZItHsn1XfXvTEL5SpCgFeMsBB08j6rezWAlRifcPVrenBGdFoUtZnMgV
	rJze4eizMompMF2XeuYEVimO403GCVnernd1g7L/1sbHFeK10wMdENmsTbtOvN5R2o2q
	pYwQgarU30kfXu4/fztAQFXQYTn6gMe7eNt6qVsUxplpnTKJuJmCGCBVE7rANVE4LWcB
	fNDOCvtrwq5X3Ln8ymPrUct+BL20HOufJDwc7I6+mkWrfSjZSvfSSpAC1oqsDPd2JVdF
	2plQ==
X-Gm-Message-State: AN3rC/5XLCsxqSv+hOEEPjP6w0AVXfzrrIgxa7Wgo7ot/AGd/tE3thfc
	Jv8swAa4EjI19eoBru0=
X-Received: by 10.25.17.19 with SMTP id g19mr3555872lfi.146.1493373974129;
	Fri, 28 Apr 2017 03:06:14 -0700 (PDT)
Received: from ad.chargestorm.se (194-237-220-218.customer.telia.com.
	[194.237.220.218])
	by smtp.gmail.com with ESMTPSA id o27sm974949lfg.3.2017.04.28.03.06.12
	for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 28 Apr 2017 03:06:12 -0700 (PDT)
Date: Fri, 28 Apr 2017 12:06:11 +0200
From: Anders Darander <anders@chargestorm.se>
To: poky@yoctoproject.org
Message-ID: <20170428100611.vbxxcuplrjoovei7@ad.chargestorm.se>
Mail-Followup-To: poky@yoctoproject.org
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
	<29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
	<trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>
	<d69a7c4a-03e0-7447-c956-231244fda704@linux.intel.com>
	<trinity-0305ba43-e510-46b7-a11d-a31e69a15283-1493211120829@3capp-gmx-bs77>
	<26682ce6-84e6-8477-4323-ab0979afe89d@linux.intel.com>
	<trinity-847348e3-eb40-41b0-8cf4-a93cdd046688-1493364663957@3capp-gmx-bs03>
MIME-Version: 1.0
In-Reply-To: <trinity-847348e3-eb40-41b0-8cf4-a93cdd046688-1493364663957@3capp-gmx-bs03>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: Re: gnupg strip down
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
X-List-Received-Date: Fri, 28 Apr 2017 10:06:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

* Arno Steffens <star@gmx.li> [170428 09:35]:

> I did as advised, created a bbappend for gnupg, like that:

> do_install_append() {
>	rm ${D}${bindir}/gpgv
>	rm ${D}${bindir}/gpgsm
>	rm ${D}${bindir}/gpg-connect-agent
>	rm ${D}${bindir}/dirmngr-client
>	rm ${D}${bindir}/gpgscm
>	rm ${D}${bindir}/watchgnupg
>	rm ${D}${bindir}/gpgparsemail
>	rm ${D}${bindir}/gpgconf
>	rm ${D}${bindir}/dirmngr
>	rm ${D}${bindir}/gpgtar
>	rm ${D}${bindir}/gpgv2
>	rm ${D}${bindir}/gpg-agent
>	rm ${D}${bindir}/kbxutil
>	rm ${D}/usr/sbin/*
>	rmdir ${D}/usr/sbin
>	rm ${D}/usr/share/gnupg/help*
>	rm ${D}/usr/libexec/gpg-*
>	rm ${D}/usr/libexec/scdaemon
>	rmdir ${D}/usr/libexec
> }

> I am aware that this is a custom embedded solution, where just the ability to verify signed files is needed.

Have you looked at gpgv? It's already packages separately and supports
verification of signed files. It might very well fulfill all your
requirements.

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

