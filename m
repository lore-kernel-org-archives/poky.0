Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA8CAE009DB; Fri, 13 Apr 2018 17:39:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84DE1E00529
	for <poky@yoctoproject.org>; Fri, 13 Apr 2018 17:39:32 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id o16so7206857pfk.9
	for <poky@yoctoproject.org>; Fri, 13 Apr 2018 17:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=OIkWpxj7i5Zkn7/Lm+fCR7KTPSaWazjyYOu7cKTWUjM=;
	b=cxHGQSeYa3TRxahh2c+lSZtJgLDSK12JmKy9OxEj0s+Zy3v9uc37SKlbO5zpVT5Dwf
	sfxgo1GZEPQhzceMvYSbwVqxkLJ+LAIAQGLtPnkse9JrQi4EW6RxPMfAZogNZ7hv3L4v
	c5wPAQF4zn84MtMQbnrT2qpYpCeiX/Ibz9IHFndsV/6kIPUiJg4e3tFrlfHbY4FoK15M
	TYzB5J0z7puafWVe3eTyRQ/qvP7ZoYRZu8w+ogEXpT24QbA9JzCIqe+B5E+COJiRtH4Z
	U7rT8W7PbMo20mm+bNzZQlK0N4JRKPjThy2uUhfD5UWTmcobgjboxtxmSKAXs2/wSBli
	FqPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=OIkWpxj7i5Zkn7/Lm+fCR7KTPSaWazjyYOu7cKTWUjM=;
	b=tQ6FaRGBp4GSlY4+vyEtFR+VUC9wTOFSidVDXOxyE4QL+H+6izm/76IjQ0uYd7eLfy
	BMLONy0ZqUJJa1s1kR1DA3PFVA9LSbi53iBApUtpyF+GdXRu1Tet2irgEtucuuW414zg
	ioPsjzTit+69hkWFTIn8wntnYJDbQik3EilfgXER5PjLEJPZCFvn7JDe3s4M+WxVEDmc
	dqvTdg6oTIMF5TOf/mY90KXdfj+T6KexNKgoYNuKA2ub4eqDLlSpwTspUvxWxLnQpQ5a
	eVbsHDsEZChG93snHqfl6IdWeMtxokQXRFOHwQ91WQlzaq3gGSAhXr/aI808p0AUFCQ5
	2zAQ==
X-Gm-Message-State: ALQs6tB9ysVm0USuKKvlreLgv8FUg27CF4MyNZ0rngg1qPcbibdT9FuB
	MBu54OkuZD9KZRM6DrkIeO1Omfad
X-Google-Smtp-Source: AIpwx4+ERP4dtDZaDC1Ns7TVOtTXuE4s/yoj//PBDhHdV7IDM80CwKlc2fDuWBkvBONYHsc9RQsnGw==
X-Received: by 10.98.209.92 with SMTP id t28mr5459171pfl.249.1523666371606;
	Fri, 13 Apr 2018 17:39:31 -0700 (PDT)
Received: from hermes.local ([2601:646:8880:466c:4caf:c486:61ac:d2f7])
	by smtp.gmail.com with ESMTPSA id
	k70sm13446579pga.72.2018.04.13.17.39.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Apr 2018 17:39:30 -0700 (PDT)
To: Nisha Parrakat <Nisha.Parrakat@kpit.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <MA1PR01MB093884598A66E22A48969213EEBC0@MA1PR01MB0938.INDPRD01.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <dfd6d897-ceca-e5ec-7608-641e7e59453a@gmail.com>
Date: Fri, 13 Apr 2018 17:39:30 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <MA1PR01MB093884598A66E22A48969213EEBC0@MA1PR01MB0938.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: how to get mount verion >=2.30 for latest systemd
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
X-List-Received-Date: Sat, 14 Apr 2018 00:39:32 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 4/12/18 1:51 PM, Nisha Parrakat wrote:
> Hi Poky team,
> 
> I am using poky from master of sha ***0a0d01addd. *
> 
> The systemd checks for a dependency of mount version >=2.30 but the 
> util-linux(*util-linux_2.31.bb*) of in the same version of poky installs 
> mount of earlier version 2.27.0.
> 
> Please advice on  how to get mount version 2.30 ?

you should share more information e.g. your local changes, build 
configuration etc. which can help to understand the underlying issue

