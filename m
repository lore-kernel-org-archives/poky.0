Return-Path: <robert21abel@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A8ABE00746
	for <poky@yoctoproject.org>; Fri, 25 May 2012 11:14:24 -0700 (PDT)
Received: by wgbds11 with SMTP id ds11so6849149wgb.5
	for <poky@yoctoproject.org>; Fri, 25 May 2012 11:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:message-id:date:from:reply-to:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=TgmAr4wUMbstJ4tJeslqMpPd73dODSb/j45hoHjtvso=;
	b=YLfH45y7mcLRBJZTGJklpmFEXFnmgvEFeEqqNRnS3PevxSQkQygyjnJPheG8HE9acm
	9MiBCDtPYlNuZGD0tngH/coU4iOsObDbikmG65oFZEVCQuWzJ6yimsEjp3TlEamsTlz/
	qHl3iBRPnTWxzj+3ROfGWX3FsvQ5DVx5aO6OCJ4pqKn7zmzS2bOqRKQpXFPPvoPjuHjn
	AhRvz9u8p6fKq9yIO3b5BVyxsCXLFyQqxZSXQ/RxLAVPbrmo59ls2Yb/REjZEM9nuWZi
	pQHTUU++4l3z8+JPhc0P/kiUhLLGw533ty0Pqs17IGlitYjzoJB8CeF+9lRS1CkCoqYK
	3unQ==
Received: by 10.216.197.4 with SMTP id s4mr2263529wen.181.1337969663309;
	Fri, 25 May 2012 11:14:23 -0700 (PDT)
Received: from 192.168.100.1 (blfd-4d08f477.pool.mediaWays.net. [77.8.244.119])
	by mx.google.com with ESMTPS id r2sm22669102wif.7.2012.05.25.11.14.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 25 May 2012 11:14:22 -0700 (PDT)
Sender: Robert Abel <robert21abel@gmail.com>
Message-ID: <4FBFCBFD.9020207@uni-bielefeld.de>
Date: Fri, 25 May 2012 20:14:21 +0200
From: Robert Abel <abel@uni-bielefeld.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1;
	rv:12.0) Gecko/20120428 Thunderbird/12.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F981E9A.5050704@yahoo.fr> <4F982FA9.8010909@windriver.com>
	<4FBDFDE1.3050505@yahoo.fr> <4FBF7512.5090709@yahoo.fr>
In-Reply-To: <4FBF7512.5090709@yahoo.fr>
Subject: Re: Include already exisiting rpm or .spec
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: abel@uni-bielefeld.de
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 25 May 2012 18:14:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Patrick,

I think your original problem is that

On 05/24/2012 11:22 AM, Patrick wrote:
> We have tried to add one of our package called
> test_libs-v27_v30-1.armv7a.rpm into tmp/deploy/rpm/armv7a directory. 

contains two underscores. Look through the output of bitbake -s and see
if you find test with version libs-v27_v30-1 instead of test_libs.

Also, please make a new thread for each problem. You won't get as many
responses with a misleading thread name.

Regards,

Robert

