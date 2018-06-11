Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41104E021FD; Mon, 11 Jun 2018 15:49:49 -0700 (PDT)
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
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F4139E01C59
	for <poky@yoctoproject.org>; Mon, 11 Jun 2018 15:49:38 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id c9-v6so10459714pgf.5
	for <poky@yoctoproject.org>; Mon, 11 Jun 2018 15:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=COp0V1976hozep9NJk1vyEJ3uRGEz9ERSX2i9dg+wHM=;
	b=KxguS0ACkPL6qRNyrc/oHvWyh53lNJKD0qEl9kRt/wCo8aKCEF8G1ZHZd7G/ml5Si8
	cANz5NGa+2yqz5uSQnVdwpQW0rolRGwKYF+cPT4D4rqWCr68+N6B96gv7jtjvY039ox/
	EicD05nEZGH82ILybxEgCOdQFugYw/8uVkJ13lyt9JpvoxDec4c8raGjvHmQVpM0dfoH
	wUWRp8HHh4YNvh7bU8JA2jTsW+NB0GgpDFkVSM4voKFXfq45tPsEcple5Xxz4qMFjXlg
	eB1HK7gsacOaq2oqlPoC+5fkGOwiubyYLQt78qUYm+pwsje6d/kLIou5xSK4oy905d73
	Jp5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=COp0V1976hozep9NJk1vyEJ3uRGEz9ERSX2i9dg+wHM=;
	b=K1IEv/kQATbEGV5c/m0A7NpFLbZ+OcrbbE8iZUlZcDJHiSTuFpItYDrn6K8lx4zZUv
	RCtiHDfV0EPMfmwTSGbbaW2ckBt88BGjGENrMiyFP5WM4Jft8ugWzyNh8X+alnr7P2Uk
	mWIt737IJ7m9tT0HAho/tTDavWWEvr7vQ1dLnz7O/egjMPFhIF1UjkRm8zccFvzCmlLv
	ZtFQ6uQUX27JyOLsLatIn3THqdwL6RiVZWMhBRDYPWSoVpYZXhZyIqK24NmyZqLqEsPU
	1iz+fvd3rVSFW5zhKiW/G6M5WupMsqTJLnyZF+68NpUW9ncEMFB5vfbKcZC/g99+j9uu
	jliQ==
X-Gm-Message-State: APt69E1c+q8WNKAeVuG+gc8BYPQBdirEbxir96uxqlok87ZDG+3EXLOH
	6uLZ6x4Rf28FyaedZfjLi6HT9Sjk
X-Google-Smtp-Source: ADUXVKJF9UfPK0BwNLQkP7mVSvEikA7QQWh4ck+UOyVAAhBTVE4SkmCjMN5uLlk0bgn+vqr/NGWNGQ==
X-Received: by 2002:a63:203:: with SMTP id 3-v6mr883962pgc.133.1528757378101; 
	Mon, 11 Jun 2018 15:49:38 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:8876:e80:c7fd:8b89])
	by smtp.gmail.com with ESMTPSA id
	z16-v6sm78567610pge.90.2018.06.11.15.49.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Jun 2018 15:49:37 -0700 (PDT)
To: Kevin Hao <kexin.hao@windriver.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
References: <20180610070626.84093-1-kexin.hao@windriver.com>
	<ff42bd76317a54117d93f5375007c1019eb2bd8b.camel@linuxfoundation.org>
	<de4969f9ba3f5bfa7d15b367ce88949587b5481f.camel@linuxfoundation.org>
	<20180611102101.GC29182@pek-khao-d2>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <84c56a36-657e-d483-2fdf-1abcefdc7213@gmail.com>
Date: Mon, 11 Jun 2018 15:49:17 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <20180611102101.GC29182@pek-khao-d2>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
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
X-List-Received-Date: Mon, 11 Jun 2018 22:49:49 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 6/11/18 3:21 AM, Kevin Hao wrote:
> On Mon, Jun 11, 2018 at 08:35:17AM +0100, Richard Purdie wrote:
>> On Mon, 2018-06-11 at 08:08 +0100, Richard Purdie wrote:
>>> On Sun, 2018-06-10 at 15:06 +0800, Kevin Hao wrote:
>>>> Bump to the latest stable kernel for 4.12, 4.14 and 4.15.
>>>>
>>>> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
>>>
>>> Thanks for this. This addresses some of the failures we saw but not
>>> for
>>> edgerouter:
>>>
>>> https://autobuilder.yocto.io/builders/nightly-mips-lsb/builds/1046/st
>>> eps/BuildImages_1/logs/stdio
>>> https://autobuilder.yocto.io/builders/nightly-mips/builds/1050/steps/
>>> BuildImages_1/logs/stdio
>>>
>>> Any idea why that is contiuing to fail on 4.14 and 4.15? Were the
>>> patches for gcc8 not merged into that branch?
>>
>> Perhaps we need https://git.kernel.org/pub/scm/linux/kernel/git/torvald
>> s/linux.git/commit/?id=2479bfc9bc600dcce7f932d52dcfa8d677c41f93
>> converted for mips?
> 
> No. The CFLAGS which is set to workaround the gcc 8 warning has been override
> when some kernel options are enabled. I composed a patch [1] to fix this.
> 
> [1] https://lists.yoctoproject.org/pipermail/linux-yocto/2018-June/007140.html
> 

this looks good for upstreaming as well.

> Thanks,
> Kevin
> 
>>
>> Also https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>> /commit/?id=415520373975d2eba565c256d2cad875ed4e9243
>>
>> This looks like the upstream version of Khem's ppc fix.
>>
>> Cheers,
>>
>> Richard
>>

