Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D392E00AE0; Tue,  2 May 2017 06:30:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86D38E00985
	for <poky@yoctoproject.org>; Tue,  2 May 2017 06:30:48 -0700 (PDT)
Received: by mail-wr0-f178.google.com with SMTP id z52so80519034wrc.2
	for <poky@yoctoproject.org>; Tue, 02 May 2017 06:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=n1seVnrQO8nGrsIcLE23XIidBAyhhaFXM4b7oIfR15w=;
	b=06+84KpOW3bEUTtxT+kkX+P7io5mUEKwumE4IcFLhc3lMxlSjyzR27IA62aTlGz+p/
	li2xVX8zm39ZDo3nus3cgMJSjrrY9jq0aIzvQ9i9s69+XhJBQlD+GoZkcBXABXJ3XvYg
	//811RtNyYdp8lyZtXf/35MQ/Ku/zD9rPY88sRNCloqgJWsPRGbF3AeozxHfS8JWReoN
	ArBgYWdB429m7K1akxuG5Yz7FYp2DYZw2LRnSQ3KU+37xWK1qBF/cOxAYRygmrMADF/e
	qvPeImlpEMWcboYQIrBJAj1Dw4sumsDOctiBWBPQnNMe34WPhMonPyHTEA6yb9Y8eeFR
	hkGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=n1seVnrQO8nGrsIcLE23XIidBAyhhaFXM4b7oIfR15w=;
	b=rizs1io2gWSw1Pyziq+97x6tgfIu/3i9ZtXTw0421i40vpiX9E0wBGI/8YvOt4GMCf
	udQQD/TxbyyvJ/BJE4S/UsVYgMbTvCFSidGHHXZQFXsjItWHil1lO+Ci9Mph0tTNFScR
	cDAh572r7DiiY8RaBzRdOmefXgQWJ2wuQ12ARuThSNaFTo/6HQV+2zzVyHjCmxr/aF0P
	ag3szAPRKixRVJ+jKwkgeaFYiNn6O5J4cq+bRE45SgPh0ej5zw4DI9vnjCEZfCeXguqS
	JxjOHllCqcadyZih3gjA4FO29zPLFUvf4kYHZYIDVe3IayLmCQr7eKl5Mh7PIULMaJPN
	/F0Q==
X-Gm-Message-State: AN3rC/64woWie4S9mCLxvrRuZyczUo9kEC7jJg1F6o9UPDHzn7Ksq2r7
	y0x6clQmTshamZBGOW0=
X-Received: by 10.46.92.194 with SMTP id q185mr11439322ljb.67.1493731846891;
	Tue, 02 May 2017 06:30:46 -0700 (PDT)
Received: from ad.chargestorm.se (194-237-220-218.customer.telia.com.
	[194.237.220.218]) by smtp.gmail.com with ESMTPSA id
	h17sm3236434ljb.51.2017.05.02.06.30.45 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 02 May 2017 06:30:45 -0700 (PDT)
Date: Tue, 2 May 2017 15:30:44 +0200
From: Anders Darander <anders@chargestorm.se>
To: poky@yoctoproject.org
Message-ID: <20170502133044.ewd5ei7dyiw6ypyo@ad.chargestorm.se>
Mail-Followup-To: poky@yoctoproject.org
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
	<29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
	<trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>
	<d69a7c4a-03e0-7447-c956-231244fda704@linux.intel.com>
	<trinity-0305ba43-e510-46b7-a11d-a31e69a15283-1493211120829@3capp-gmx-bs77>
	<26682ce6-84e6-8477-4323-ab0979afe89d@linux.intel.com>
	<trinity-847348e3-eb40-41b0-8cf4-a93cdd046688-1493364663957@3capp-gmx-bs03>
	<20170428100611.vbxxcuplrjoovei7@ad.chargestorm.se>
	<trinity-01c771c0-cc40-4c0c-8ab5-c118715e11ab-1493719143739@3capp-gmx-bs49>
MIME-Version: 1.0
In-Reply-To: <trinity-01c771c0-cc40-4c0c-8ab5-c118715e11ab-1493719143739@3capp-gmx-bs49>
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
X-List-Received-Date: Tue, 02 May 2017 13:30:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Arno Steffens <star@gmx.li> [170502 11:59]:

> > Gesendet: Freitag, 28. April 2017 um 12:06 Uhr
> > Von: "Anders Darander" <anders@chargestorm.se>
> > An: poky@yoctoproject.org
> > Betreff: Re: [poky] gnupg strip down

> > * Arno Steffens <star@gmx.li> [170428 09:35]:
> > > I am aware that this is a custom embedded solution, where just the
> > > ability to verify signed files is needed.

> > Have you looked at gpgv? It's already packages separately and
> > supports verification of signed files. It might very well fulfill
> > all your requirements.


> Sure, even that might be enough. But as far as I can see this is not
> separated.
> As for example bitbake gpgv returns:
> gnupg RPROVIDES gpgv

>  Is a recipe for just this available in some other layer? I searched,
>  but did not found.

Sure, the gnupg itself. Or rather, the gnupg_1.4.7 does this. It doesn't
seem like the gnupg_2.x series recipe does that any longer... 

So if gpgv2 does work standalone, it might be a good first step to split
that one out again.

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

