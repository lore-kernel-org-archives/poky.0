Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFE01E00CB7; Fri,  1 Sep 2017 15:03:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f47.google.com (mail-pg0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BFB6E00349
	for <poky@yoctoproject.org>; Fri,  1 Sep 2017 15:03:14 -0700 (PDT)
Received: by mail-pg0-f47.google.com with SMTP id t193so3969157pgc.1
	for <poky@yoctoproject.org>; Fri, 01 Sep 2017 15:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=SECmUvrUQkmDL1IwLkfNQLiF4nzccL7ugoMmwNnA3fE=;
	b=R39b7izgxf2SEiXGZ0TwgSruqSRSICEIjgdFdA8mW1V3yp6FBMSJRcc81lOxufye3h
	v9oZeN9JJ8g9PT18vtSOPd7DoLmrbkHgWRrK6sfhzgwSzS4YPxo4e1HHR1wdqfJDAxEa
	wcrR+/1A4bb6TypaeTIBRxdnN0WXZjbt7XjOtZQSiVrBUpTub39/FxqE8lFzagldDChO
	nMdZoYR992U2Vt6xZBu9C8W3o4Xf1x7M1pW6c7WRwG4JEWYcY+qDxvfS10OD1Y3T6w61
	aqH2f9vOjYJnbUoChoIB46XTUb2uclKKUJkGG7gz1h/ITx7Bpp9Qe0IXA/Q5B8mh/X6M
	uvoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=SECmUvrUQkmDL1IwLkfNQLiF4nzccL7ugoMmwNnA3fE=;
	b=YskfrjeU57kW3g9Rigvzitmjpd1jpWcunUrSrXB5IRnxUmy6jtN4TM/9Ae07Md6961
	rnRd8Jbx0qhiKFn19DWihQII4Y7Uuo1cbCuzTNkp3gVJIFgRstWxxAc0AKQ+kYkCcmS1
	zOOeg+ER6b2nq9AVRtjnoh8VeIstIZ/jSFRjHuWsYa6k9++M/gz7gTwrsWSgjOmT35Js
	mKw6tqDX5Cz0ef7X0TuYcWOalNd/MUkheOEfPlD7S8jSPZgWyCRAwRiCHCWaE7NpD3IA
	xmHS3d37VaTI0S8/Cw/nGlUtRfAujsnizs+5okcVrxfMw6CG4W9ZZBRZq60X53KvyKgw
	X7vA==
X-Gm-Message-State: AHPjjUhWV1n+FeTECSvpHzZHLIWOy9+1yE/QX6xkn+vxq9O1fNGWLBwJ
	b9tBxQkRUp650Bnk
X-Google-Smtp-Source: ADKCNb576ZnXG0uy146DX/J2OT0uktNxWdeNh6O4PxoYMrmMMBh9BDI79B7NLIlqVa/b2PAjpnMN1A==
X-Received: by 10.99.120.137 with SMTP id t131mr4033935pgc.147.1504303394192; 
	Fri, 01 Sep 2017 15:03:14 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:c400:6ad5:9d97:9621?
	([2601:202:4001:9ea0:c400:6ad5:9d97:9621])
	by smtp.gmail.com with ESMTPSA id j7sm1437541pfb.30.2017.09.01.15.03.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Sep 2017 15:03:13 -0700 (PDT)
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
	Fred Lamer <fred@rogue-research.com>,
	"bitbake-devel@lists.openembedded.org"
	<bitbake-devel@lists.openembedded.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <e380fe57-2ad0-787d-1ea0-b02411480121@rogue-research.com>
	<4ef85854c4b44bc48a381838801fd2c2@XBOX02.axis.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <1c531eb1-e787-74a3-2020-f487ddd95a57@gmail.com>
Date: Fri, 1 Sep 2017 15:03:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <4ef85854c4b44bc48a381838801fd2c2@XBOX02.axis.com>
Subject: Re: [bitbake-devel] CVS support on Yocto 2.3 (Pyro) and bitbake 1.34
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
X-List-Received-Date: Fri, 01 Sep 2017 22:03:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 09/01/2017 08:44 AM, Peter Kjellerstedt wrote:
>> -----Original Message-----
>> From: bitbake-devel-bounces@lists.openembedded.org [mailto:bitbake-
>> devel-bounces@lists.openembedded.org] On Behalf Of Fred Lamer
>> Sent: den 4 augusti 2017 16:00
>> To: bitbake-devel@lists.openembedded.org; poky@yoctoproject.org
>> Subject: [bitbake-devel] CVS support on Yocto 2.3 (Pyro) and bitbake
>> 1.34
>>
>> Hi,
>>
>> I'm trying to bring a project from Yocto 2.1 (Krogoth) to 2.3 (Pyro). I
>> have a problem with one of my recipe that tries to fetch from a cvs
>> repository. The recipe work perfectly on Yocto 2.1 (using bitbake
>> 1.30),
>> but not on Yocto 2.3 (using bitbake 1.34).
>>
>> It seems like 'cvs' is not installed on the host system? I get the
>> following error:
>>
>> ***********************************************************************
>>
>> Fetcher failure: Fetch command export
>> PATH="/media/yocto/yocto-vetrobot-next.git/build/tmp/sysroots-
>> uninative/x86_64-linux/usr/bin:/media/yocto/yocto-vetrobot-
>> next.git/poky/scripts:/media/yocto/yocto-vetrobot-
>> next.git/build/tmp/work/corei7-64-poky-linux/libev/4.15-r0/recipe-
>> sysroot-native/usr/bin/x86_64-poky-linux:/media/yocto/yocto-vetrobot-
>> next.git/build/tmp/work/corei7-64-poky-linux/libev/4.15-r0/recipe-
>> sysroot/usr/bin/crossscripts:/media/yocto/yocto-vetrobot-
>> next.git/build/tmp/work/corei7-64-poky-linux/libev/4.15-r0/recipe-
>> sysroot-native/usr/sbin:/media/yocto/yocto-vetrobot-
>> next.git/build/tmp/work/corei7-64-poky-linux/libev/4.15-r0/recipe-
>> sysroot-native/usr/bin:/media/yocto/yocto-vetrobot-
>> next.git/build/tmp/work/corei7-64-poky-linux/libev/4.15-r0/recipe-
>> sysroot-native/sbin:/media/yocto/yocto-vetrobot-
>> next.git/build/tmp/work/corei7-64-poky-linux/libev/4.15-r0/recipe-
>> sysroot-native/bin:/media/yocto/yocto-vetrobot-
>> next.git/poky/bitbake/bin:/media/yocto/yocto-vetrobot-
>> next.git/build/tmp/hosttools";
>> export HOME="/home/fred"; /usr/bin/env cvs
>> '-d:pserver:anonymous@cvs.schmorp.de:/schmorpforge' co -r rel-4_15
>> libev
>> failed with exit code 127, output:
>>
>> /usr/bin/env: ‘cvs’: No such file or directory
>>
>> ***********************************************************************
>>
>> So, it seems like cvs is either not installed or not in the PATH.
>> Anyone ever had this problem?
>>
>> Note that this if I copy/paste this command outside of the bitbake
>> environnement:
>>
>> ***********************************************************************
>>
>> /usr/bin/env cvs '-d:pserver:anonymous@cvs.schmorp.de:/schmorpforge' co -r rel-4_15 libev
>>
>> ***********************************************************************
>>
>> it works perfectly (so it's not a fetch error from the repo).
>>
>> Thanks
>>
>> Fred
> This is due to the introduction of the HOSTTOOLS and HOSTTOOLS_NONFATAL
> variables in Pyro. Only executables included in these variables will be
> available from the host environment when bitbake is running. The
> executables in HOSTTOOLS must exist or bitbake will abort. The executables
> in HOSTTOOLS_NONFATAL will be available if they exist.
Is this supported in Master? I could not find it for a backport 
consideration.
- armin
>
> So if you add cvs to HOSTTOOLS_NONFATAL, using cvs to fetch a repository
> should start to work again.
>
> //Peter
>


