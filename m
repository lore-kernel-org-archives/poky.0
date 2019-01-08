Return-Path: <dpfrey@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36C90E00CAD; Tue,  8 Jan 2019 09:14:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dpfrey[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBBE0E008CE
	for <poky@yoctoproject.org>; Tue,  8 Jan 2019 09:14:48 -0800 (PST)
Received: by mail-pl1-f196.google.com with SMTP id t13so2169320ply.13
	for <poky@yoctoproject.org>; Tue, 08 Jan 2019 09:14:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=9HgH6CitDnESms0TG5fF1l7Eta3N/se2vB6wV3IBDRo=;
	b=EKOLN5vVJz7e7YFOs3VXBCI2nJLRyPxGyW29fmg3ergcA8AMmoMFqr8/1iRi140TxG
	Rz8JslNwR2//Iuk6jkEU0BmxMxBRJJdP9sYg2JtSKVOg3B+EBIbehmvPczg37wIpWrxm
	YIv1Zc9O7tUC8S8ovyq/GYF7Te7vmzuZZQjjhJFt5v3fOu0Eia+cnPqseYnOfpezCLLU
	g5u1SgwEzfe0CuMIKpFzhhflwbBL5yjluHJ72bcYFvko5EMzEYt91DF7//kGGWPkNYBi
	gcWufQiOW7+RsA+lHIVaCFNwPVPUCZEEoq6ypI7DaUemVeATZhOBnnkoGtOGgKghBpX5
	/Z4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=9HgH6CitDnESms0TG5fF1l7Eta3N/se2vB6wV3IBDRo=;
	b=N0PGU13dwAas/TbbzHzexEEVhRkrnpYgrpYLzq/a0aLgcJZa5SZeNuI0H46kHwQAbC
	ghxtuF0ELunAECNndCKYd4yHpo/MlJ/97+oULddqNuAvcIPxaIYgZzUzNZUz9UoN6aAA
	B+k+GjuCVpuLIK3Etr6LbzeW21Xgsj++kb6EZY/Vdet3ZIVl9rHV3mho4UD3VIwzQVuq
	IwcNmOFId9iiw5OuDfUZ7AKC9FD/5+9rmbk7gx/UsRSdEx6mweoiITurT7QQ6bMtI7+G
	GEEJATXojavYlEp6lBWLEWjKpFggeEVf3pcDL6TrhGSv/BHJdgoWfDkPovHZKxbysTdq
	gOeA==
X-Gm-Message-State: AJcUukdG5Fcdz+mMjNW/DV6aWg81dL19CL/S7L+teHR25NondAXr9vt3
	Dd63Qn9ZwtBYe+ITjB5ReYh1V1ix
X-Google-Smtp-Source: ALg8bN62v6+lqmzDsolqiGTWS6YJwOLYUOwU2kIZrrDi7EKrHoG13U6II4U6hgX/w2FfzmCt9FPUQg==
X-Received: by 2002:a17:902:aa0a:: with SMTP id
	be10mr2532926plb.266.1546967687411; 
	Tue, 08 Jan 2019 09:14:47 -0800 (PST)
Received: from [10.1.70.13] (carmd-fwm01.sierrawireless.com. [208.81.120.1])
	by smtp.gmail.com with ESMTPSA id
	64sm90780819pff.101.2019.01.08.09.14.46 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Jan 2019 09:14:46 -0800 (PST)
To: poky@yoctoproject.org
References: <20181227154759.32610-1-dpfrey@gmail.com>
From: David Frey <dpfrey@gmail.com>
Message-ID: <4f826e16-a109-dd36-039d-50950c580168@gmail.com>
Date: Tue, 8 Jan 2019 09:14:45 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20181227154759.32610-1-dpfrey@gmail.com>
Subject: Re: [PATCH] bluez5: Fix status subcommand of init script
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
X-List-Received-Date: Tue, 08 Jan 2019 17:14:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

This is my first time submitting a patch to this mailing list.  It has
been 12 days and I haven't received any response or acknowledgement.  If
there is a problem with the patch that I submitted, please let me know.

Thanks,
David

