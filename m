Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DB9EE00930; Thu,  2 Apr 2015 01:47:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86731E008DC
	for <poky@yoctoproject.org>; Thu,  2 Apr 2015 01:47:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t328lFCa011249
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 2 Apr 2015 01:47:15 -0700 (PDT)
Received: from [128.224.162.236] (128.224.162.236) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Thu, 2 Apr 2015 01:47:14 -0700
Message-ID: <551D0213.2080507@windriver.com>
Date: Thu, 2 Apr 2015 16:47:15 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1427962523.git.Qi.Chen@windriver.com>	
	<51f203078603de36def6af7d6aa44415332add48.1427962523.git.Qi.Chen@windriver.com>
	<1427963772.14020.391.camel@linuxfoundation.org>
In-Reply-To: <1427963772.14020.391.camel@linuxfoundation.org>
X-Originating-IP: [128.224.162.236]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-yocto-bsp: add "core" to LAYERDEPENDS
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
X-List-Received-Date: Thu, 02 Apr 2015 08:47:19 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 04/02/2015 04:36 PM, Richard Purdie wrote:
> On Thu, 2015-04-02 at 16:16 +0800, Chen Qi wrote:
>> Add "core" to LAYERDEPENDS for 'yoctobsp' layer.
> Surely everything has this as an implied dependency?
>
> Cheers,
>
> Richard
>
>
>

I just think it's better to make this dependency explicit.
I see other layers like meta-yocto, meta-networking, etc., explicitly 
add "core" to LAYERDEPENDS in their layer.conf file.

Regards,
Chen Qi

