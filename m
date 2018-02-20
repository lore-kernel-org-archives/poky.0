Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AAB3E00D6D; Tue, 20 Feb 2018 02:15:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 557D7E00823
	for <poky@yoctoproject.org>; Tue, 20 Feb 2018 02:15:25 -0800 (PST)
Received: by mail-io0-f193.google.com with SMTP id t126so14330918iof.4
	for <poky@yoctoproject.org>; Tue, 20 Feb 2018 02:15:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=B34fYfpRCW1DQGNHJxsWjmSW8h3mp3Izu3tJHNVlDvU=;
	b=QTjBzZ5+S7tJqqpsIWNF0DKogZhi0oniOuX9ippPsWqXfnyiIg0nIvLCnBOn3hPfx1
	sBkaF1b8sKH/5E+wpy+csjBKYOXq+094HqV6+qk/ZsfhN9RDCA9Ug/gJ027fll/gneNN
	3DsheY7fwjtzOpDmwnvNlC9ShpjCBiXFiwS8MUwoebhY8ha5PB0BLAdPH+eho/FXLs85
	MrPg+cPdYsQmbH0loezi9wzgKbEHyhXT61tlQuzhUjVCkObuVx04qmobBQ9yN1MBSYOx
	FkTl4YlyeoZ9+N8CLplgcrAr08zaIdn+ExKgVxzchFXE/SveXRNksZ9Dhpf1F/KeJ/dE
	NsUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=B34fYfpRCW1DQGNHJxsWjmSW8h3mp3Izu3tJHNVlDvU=;
	b=Jb6k7E4L71PelBTSuhOk5dkewKGA1xiN3oDDUjalVOG7bm3OxLdZfRyVuvSgcrsB2a
	+NlI1Cjlf+0wcjST3KcpDKasffzbdmC9OtfSFb0JpkL+e8VTpjV71Gj5hXmZzLfu2PmD
	2uoWgoL/BJyMXMU4EA6PCG4S5oUPuMGPz12gUuSpcJ0fk96OZIzaffxPvDQAcIO7Tj8e
	gtz+iSjfOVfsRE0vChnGsqolHmF4pkPdl+2wkGNndJvUT3IDW+stF3k5m3ksLWi7I018
	+7BzV7kZcZQ2k0hMhJXzF0+VD87eSNcNI9yC7kpttbSp8LYHDMESiaFDbfRWV/Zphx7g
	yG3w==
X-Gm-Message-State: APf1xPCnLOON/wmxsKKA4yeyBipiYU1usdfR4I3y2fxy5YnpKzRXnZdQ
	u+E9TEi5fMBGpVk0XW6alU9mq3id
X-Google-Smtp-Source: AH8x225jrDUzQj4rzi9k43cmWbdLlJv9BkRRTrtYkIFUQWMTDUADylDULcC41Aok20PGRTEnvPAwuw==
X-Received: by 10.107.146.215 with SMTP id u206mr21852953iod.96.1519121725174; 
	Tue, 20 Feb 2018 02:15:25 -0800 (PST)
Received: from hermes.local ([2601:646:8880:466c:a565:c31b:dc80:af0d])
	by smtp.gmail.com with ESMTPSA id
	x186sm21471588itb.6.2018.02.20.02.15.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 20 Feb 2018 02:15:24 -0800 (PST)
To: DI SCHIENA Eric <eric.di-schiena@thalesgroup.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <967D67AEC428424E83B5D1DABFB91AA3863AB01EE3@THSONEA01CMS13P.one.grp>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <df2442a2-19b4-755b-de37-ceab0a33ed0f@gmail.com>
Date: Tue, 20 Feb 2018 02:15:23 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0)
	Gecko/20100101 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <967D67AEC428424E83B5D1DABFB91AA3863AB01EE3@THSONEA01CMS13P.one.grp>
Subject: Re: Build rpi-basic-image Pi3 with kernel-devsrc error : conflicting requests nothing provides /bin/awk needed by kernel-devsrc-1.0-r0.raspberrypi3
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
X-List-Received-Date: Tue, 20 Feb 2018 10:15:27 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 2/20/18 12:03 AM, DI SCHIENA Eric wrote:
> Can someone explain how to implement previous proposition to correct my 
> initial issue ?
> 
> Proposition is based on:
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=8af11c1cdd8fa08217e702b57cf96e9030db52b2
> 

you have to create a patch for kernel recipe with this changes. This 
document here
https://wiki.yoctoproject.org/wiki/TipsAndTricks/Patching_the_source_for_a_recipe

will help you.

> Regards
> 
> 

