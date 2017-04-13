Return-Path: <gernot.hillier@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6CAEE009A5; Thu, 13 Apr 2017 00:40:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from david.siemens.de (david.siemens.de [192.35.17.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63793E00992
	for <poky@yoctoproject.org>; Thu, 13 Apr 2017 00:40:01 -0700 (PDT)
Received: from mail2.sbs.de (mail2.sbs.de [192.129.41.66])
	by david.siemens.de (8.15.2/8.15.2) with ESMTPS id v3D7dupJ005658
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Thu, 13 Apr 2017 09:39:56 +0200
Received: from linux-mf4q.internal.hillier.de ([139.22.32.72])
	by mail2.sbs.de (8.15.2/8.15.2) with ESMTP id v3D7dtqB009740;
	Thu, 13 Apr 2017 09:39:55 +0200
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@yoctoproject.org
References: <961524b3-5800-c72e-13a7-9038f99efc1c@siemens.com>
	<1492031783.26846.9.camel@linuxfoundation.org>
From: Gernot Hillier <gernot.hillier@siemens.com>
Message-ID: <ae41dd13-2d4d-f6a3-0abc-179d5d83bbd1@siemens.com>
Date: Thu, 13 Apr 2017 09:39:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1492031783.26846.9.camel@linuxfoundation.org>
Subject: Re: [PATCH] [RFC] tcf-agent: Re-enable default features
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
X-List-Received-Date: Thu, 13 Apr 2017 07:40:05 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 12.04.2017 23:16, Richard Purdie wrote:
> On Wed, 2017-04-12 at 16:44 +0200, Gernot Hillier wrote:
>> A number of features were disabled due to historic problems on ARM
>> dating back
>> to tcf-agent 0.0+svnr1855 (from 2011). For us, these features do not
>> only
>> compile perfectly for cortexa9hf, but are required for target
>> debugging with
>> CDT in Xilinx Vivado SDK 2016.4.
>>
>> Signed-off-by: Gernot Hillier <gernot.hillier@siemens.com>
>> ---
>>  meta/recipes-devtools/tcf-agent/tcf-agent_git.bb | 6 ------
>>  1 file changed, 6 deletions(-)
> 
> Needs to be sent to the OE-Core list and breaks the build at least on
> mips:
> 
> https://autobuilder.yocto.io/builders/nightly-mips-lsb/builds/229/steps/BuildImages/logs/stdio

Thx for instructions & feeding this into your autobuilder!! I'll check
and fix for main architectures and come back to oe-core when ready.

-- 
Gernot
Siemens AG, Corporate Competence Center Embedded Linux


