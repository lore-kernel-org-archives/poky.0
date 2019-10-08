Return-Path: <jay@systech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91741E00C25; Tue,  8 Oct 2019 16:45:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 301 seconds by postgrey-1.32 at yocto-www;
	Tue, 08 Oct 2019 16:45:17 PDT
Received: from rcloudmail.hostconnection.net (rcloudmail.hostconnection.net
	[38.96.19.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F4236E003E1
	for <poky@yoctoproject.org>; Tue,  8 Oct 2019 16:45:17 -0700 (PDT)
X-SmarterMail-Authenticated-As: jay.foster@systech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systech.com; s=key;
	h=content-language:content-transfer-encoding:content-type
	:mime-version:user-agent:date:message-id:organization:subject
	:from:to:reply-to:received;
	bh=DQwPDqJOLS+www3LGbvn/f+PX+rElSoYuxKlXVIWpzE=;
	b=Kfy52IZWxR9MvdrFASnydIIj5FVx+byh8g/2iGWwG9n6rx4FGqmBOa/myNXLB44oS
	KD5kXkNGtrJO4ulOtMql2oilQPJR6TOKx/MiWFllPGhWC3iKtrKhAztLajw+ogcWO
	5+iDBxX5a1cFEq3UFFYUIUnkKOKv1wqDHeEuY06eg=
Received: from [172.16.4.182] (wsip-70-167-11-34.sd.sd.cox.net [70.167.11.34])
	by rcloudmail.hostconnection.net with SMTP (version=Tls12
	cipher=Aes256 bits=256); Tue, 8 Oct 2019 16:39:46 -0700
To: poky@yoctoproject.org
From: Jay Foster <jay@systech.com>
Organization: Systech Corporation
Message-ID: <6ecfafaa-5501-1dcb-902b-18c66d5f6edb@systech.com>
Date: Tue, 8 Oct 2019 16:40:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
X-Exim-Id: 6ecfafaa-5501-1dcb-902b-18c66d5f6edb
Subject: Opkg Dependency Resolving Issue
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: jay@systech.com
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 08 Oct 2019 23:45:18 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

I am new to yocto and am working with the rocko release.  It has opkg 
version 0.3.5 .  I have encountered a package dependency issue that 
seems like a bug to me, but I would like to know what others with more 
opkg experience might know.

I have a package, a, which provides package b.
I have another package, c, which depends on b.

I install package a.
When I try to install package c, it complains that it cannot find 
package b upon which it depends.  I would expect opkg to see that 
package a (already installed) provides b and satisfies package c's 
dependency.  That does not happen.

If I use the command 'opkg whatprovides b' it replies with package a.  
So opkg does know that package a provides package b, but it seems to not 
use this information when resolving package installation dependencies.  
This seems like a bug to me.

Any help is welcome.



