Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2A99E00992; Wed, 12 Apr 2017 14:22:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 381 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Apr 2017 14:22:50 PDT
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6280E00961
	for <poky@yoctoproject.org>; Wed, 12 Apr 2017 14:22:50 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v3CLGN7K026058
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Wed, 12 Apr 2017 22:16:24 +0100
Message-ID: <1492031783.26846.9.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gernot Hillier <gernot.hillier@siemens.com>, poky@yoctoproject.org
Date: Wed, 12 Apr 2017 22:16:23 +0100
In-Reply-To: <961524b3-5800-c72e-13a7-9038f99efc1c@siemens.com>
References: <961524b3-5800-c72e-13a7-9038f99efc1c@siemens.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.1 
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.11
	(dan.rpsys.net [192.168.3.1]);
	Wed, 12 Apr 2017 22:16:24 +0100 (BST)
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
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
X-List-Received-Date: Wed, 12 Apr 2017 21:22:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-04-12 at 16:44 +0200, Gernot Hillier wrote:
> A number of features were disabled due to historic problems on ARM
> dating back
> to tcf-agent 0.0+svnr1855 (from 2011). For us, these features do not
> only
> compile perfectly for cortexa9hf, but are required for target
> debugging with
> CDT in Xilinx Vivado SDK 2016.4.
> 
> Signed-off-by: Gernot Hillier <gernot.hillier@siemens.com>
> ---
>  meta/recipes-devtools/tcf-agent/tcf-agent_git.bb | 6 ------
>  1 file changed, 6 deletions(-)

Needs to be sent to the OE-Core list and breaks the build at least on
mips:

https://autobuilder.yocto.io/builders/nightly-mips-lsb/builds/229/steps/BuildImages/logs/stdio

Cheers,

Richard

