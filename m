Return-Path: <jonathan.richardson@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23B54E00A39; Thu, 19 Jan 2017 13:42:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.182 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8641E00A37
	for <poky@yoctoproject.org>; Thu, 19 Jan 2017 13:42:41 -0800 (PST)
Received: by mail-pf0-f182.google.com with SMTP id 189so16467220pfu.3
	for <poky@yoctoproject.org>; Thu, 19 Jan 2017 13:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=75ALyWtegonRGDpYHDjLUQ9EGzNKD5jlgR93iNU5xNM=;
	b=JkSP54tZ2jFdekkKdhSZ/6sm8gm6Tm76sPfupET9R4c7fuwcvE5Umv3McV4zKsv/6P
	+66Ytg6fg1tKJAKayDGMmdqjPeoo3mEDsCQpYr9TCn9QmmOsa3QConlZblVgHLUPeGLY
	dx7fV8bgHRQEiAu9l+ypuR63zxZw30/yzyT50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=75ALyWtegonRGDpYHDjLUQ9EGzNKD5jlgR93iNU5xNM=;
	b=d57gu0qFez/5Vcw4q4Qtzd5bNTbke03OICL03JjdcEFU2qO4PUAumuzDSAd7jUUu8N
	bK3zNZWikSQbZ2w7zgtXSt9CAqWwrY/K7wQasr6pkxcYqRb0fTkHJ+Jbjh4A8rMYPcWn
	kVYzRKJXNY+ucK5lEVJRJOGHJCDJ7oK+7Uut9eJDbmf6AxOc0D8x2gRK3hknFzsk+ZZ2
	KwTMJRjG5x6wzmBsTpJSWXpdCezuzEHQG/NHTF8/Bq8Jv7+3Yl62RCx5OQz0aXgwaiCu
	rqHk9xOdsmd2Lf//xU9D1L42PXvD1+xGHs313vx4XXEn6DkBt5MRS1/wgvSRveQQ1Zk7
	35Rw==
X-Gm-Message-State: AIkVDXJRlVQ9tcKA+Lzh9504GTrx0F76ip6YKCs10S0c9Giab+3olmPczZH8wZsNbfm9PFan
X-Received: by 10.99.140.28 with SMTP id m28mr12578977pgd.174.1484862160861;
	Thu, 19 Jan 2017 13:42:40 -0800 (PST)
Received: from [10.0.2.15] ([192.19.224.250]) by smtp.gmail.com with ESMTPSA id
	b67sm10991580pfj.81.2017.01.19.13.42.40 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 Jan 2017 13:42:40 -0800 (PST)
To: poky@yoctoproject.org
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
Message-ID: <3e299d7b-6a39-e76f-0ba1-a495074d6031@broadcom.com>
Date: Thu, 19 Jan 2017 13:40:40 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
Subject: buildhistory with sstate cache
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
X-List-Received-Date: Thu, 19 Jan 2017 21:42:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I'm using buildhistory by inheriting buildhistory in local.conf so that I can generate SRCREV's for all our recipes that use AUTOREV pointing to git repos. If the sstate cache isn't used everything works as expected - running buildhistory-collect-srcrevs returns a list of SRCREV's for all the recipes using autorev. However, when using the sstate cache it rarely returns anything. This looks like a bug, has anyone else seen this?




