Return-Path: <dpfrey@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECC7BE00C5F; Tue,  8 Jan 2019 10:39:51 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.176 listed in list.dnswl.org]
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEDF5E00B77
	for <poky@yoctoproject.org>; Tue,  8 Jan 2019 10:39:50 -0800 (PST)
Received: by mail-pl1-f176.google.com with SMTP id z23so2315272plo.0
	for <poky@yoctoproject.org>; Tue, 08 Jan 2019 10:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=rjvINJmVQo+x1wRSoSauTICEihGwUSQK2NCdEu4CNTA=;
	b=fdpxM45/ect9nATNJI/uswOUC9VvE2Rd7b9teLzCr0wBtEVnvwRvjDXlZHD6Fa4K2E
	HtNoHuySqspPWyudQOILh9gdT9vyQjPQ5UNOavhP3G6rInz97L1La0PaY15LT1XuB27R
	xct5u5TjXlub2C5a7NpzZe4y2xziBtRvAMWNA6Qpi7rh28mQkw1iUdYsTBbKMro1cSkv
	JC7ezXFgpMzF58TdzE5BnCeIeGcmDkSOe0l2qjYbXycmhEKUX8BPxHAif02K1LyC0e4v
	8cP1GrXDIkxpqN4M+q3CE0yCAgab1tJ9xqJAwHC0a3Kf/yxBxnVvvsjrrAM8MgY+3Xly
	OA5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=rjvINJmVQo+x1wRSoSauTICEihGwUSQK2NCdEu4CNTA=;
	b=dUOr9HHDeKhgfBhaFwCh1F5OGNIVsG6SBmqgQ3p3PQpU+9YIIksnxgx/MODrOVkzn5
	Zqy4r7Blf0qaV+iEnESbbxs2x8+WZ0MxrpqO3SFWrhxljOuFfB5WzRD85QxvBUXYM44j
	zmBEIDa6t7YI2Sk4Ls4Hnd191p3ZPdjmDdinCEV7E4eOzla7WhnA4My/oGhSdlaaferQ
	gzb1vEHzJPJykikLp1xMwwPRryustQDmFrFg/grEgu7JmfamB8dhzX1c+7E3FGsjV1Zg
	YMhBooTL6FfpxaFtZ3xCHmKxRahLp3CxkYW2WDW9r2w6NIJVzf1ZE+1bLR3f9aLLkqab
	5l3A==
X-Gm-Message-State: AJcUukdnfaht1qNbLaCI4A1aqwLo4AM6YzYeuD7ZHqDIbkFK2pzp7/nC
	ZJiTjtme5DWYEOrRs8tDOp8nSKw3
X-Google-Smtp-Source: ALg8bN4DqXpcbJFDY9OMFjI6uHsxGHmAIBSeGy0BrMVWq0fQbeeQBZGNWmZ2WRr3ey2kVtqLf2gyIA==
X-Received: by 2002:a17:902:365:: with SMTP id
	92mr1159022pld.327.1546972789696; 
	Tue, 08 Jan 2019 10:39:49 -0800 (PST)
Received: from [10.1.70.13] (carmd-fwm01.sierrawireless.com. [208.81.120.1])
	by smtp.gmail.com with ESMTPSA id
	j197sm108212517pgc.76.2019.01.08.10.39.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Jan 2019 10:39:48 -0800 (PST)
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: <20181227154759.32610-1-dpfrey@gmail.com>
	<4f826e16-a109-dd36-039d-50950c580168@gmail.com>
	<CANNYZj8xnWUJ_sQmqCAPgWixj1inebE6V-+OzddCbQyJTNStGw@mail.gmail.com>
From: David Frey <dpfrey@gmail.com>
Message-ID: <9038e9b0-0f68-a04d-1777-d0f93203636b@gmail.com>
Date: Tue, 8 Jan 2019 10:39:47 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj8xnWUJ_sQmqCAPgWixj1inebE6V-+OzddCbQyJTNStGw@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Tue, 08 Jan 2019 18:39:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Thanks Alex.  I will submit the patch to openembedded-core.

On 1/8/2019 9:32 AM, Alexander Kanavin wrote:
> The patch should be sent to openembedded-core list.
> 
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
> 
> Alex
> 
> On Tue, 8 Jan 2019 at 18:15, David Frey <dpfrey@gmail.com> wrote:
>>
>> Hi,
>>
>> This is my first time submitting a patch to this mailing list.  It has
>> been 12 days and I haven't received any response or acknowledgement.  If
>> there is a problem with the patch that I submitted, please let me know.
>>
>> Thanks,
>> David
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky


