Return-Path: <fw@javox-solutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4722EE00B57; Wed, 25 Apr 2018 05:50:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.67.18.29 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtprelay06.ispgateway.de (smtprelay06.ispgateway.de
	[80.67.18.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EA7CE00B01
	for <poky@yoctoproject.org>; Wed, 25 Apr 2018 05:50:07 -0700 (PDT)
Received: from [89.0.112.67] (helo=[192.168.178.95])
	by smtprelay06.ispgateway.de with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
	(envelope-from <fw@javox-solutions.com>) id 1fBJs6-0006tp-6V
	for poky@yoctoproject.org; Wed, 25 Apr 2018 14:50:06 +0200
From: Florian Wickert <fw@javox-solutions.com>
To: poky@yoctoproject.org
References: <de1e86a6-55bf-a53c-1b72-ac701e7ba7a3@javox-solutions.com>
Organization: Javox Solutions GmbH
Message-ID: <441e976f-9beb-15d2-b497-46afed786705@javox-solutions.com>
Date: Wed, 25 Apr 2018 14:50:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <de1e86a6-55bf-a53c-1b72-ac701e7ba7a3@javox-solutions.com>
X-Df-Sender: ZndAamF2b3gtc29sdXRpb25zLmNvbQ==
Subject: Re: binutils-cross-x86_64 does not build anymore with icecc enabled
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
X-List-Received-Date: Wed, 25 Apr 2018 12:50:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

This seems to happen for other *-cross-x86_64 recipes as well.


On 04/25/2018 02:21 PM, Florian Wickert wrote:
> I just switched from rocko to sumo/master and now 
> binutils-cross-x86_64 does not build anymore on a build server which 
> is using icecc.
> The do_configure Logfile has these additional lines when icecc is 
> enabled:
>
> patchelf is required
> /var/lib/jenkins/workspace/mayah_javelin/build_gemini_security_dev/tmp-glibc/work/x86_64-linux/binutils-cross-x86_64/2.30-r0/temp/run.do_configure.3337: 
> 192: [: wait_for_file: unexpected operator
> NOTE: Using icecc
>
> The compile step then fails because -fPIC is not set, so linking fails.
>
> A simple workaround is to lacklist binutils for icecc: 
> ICECC_USER_PACKAGE_BL = "binutils-cross-x86_64"
>
> Regards,
> Florian
>

-- 
Florian Wickert, M.Sc.
Javox Solutions GmbH
Gallierstr. 33, 52074 Aachen
Germany

Phone: +49 241 99034569
Web:www.javox-solutions.com


