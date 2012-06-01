Return-Path: <yocto@mindchasers.com>
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E024DE013D1
	for <poky@yoctoproject.org>; Fri,  1 Jun 2012 11:05:57 -0700 (PDT)
Received: from [192.168.1.3] (pool-108-25-202-159.atclnj.east.verizon.net
	[108.25.202.159])
	by smtp.webfaction.com (Postfix) with ESMTP id 4DE0C208E84B
	for <poky@yoctoproject.org>; Fri,  1 Jun 2012 13:05:57 -0500 (CDT)
Message-ID: <4FC90484.6010007@mindchasers.com>
Date: Fri, 01 Jun 2012 14:05:56 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: best way to purge stale packages?
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Jun 2012 18:05:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

Inside my work directory, I have three versions of openssl: 
openssl-1.0.0i-r15.2, openssl-1.0.0i-r0.1, and openssl-1.0.0h-r15.1, 
with the latter two being stale.  I also have artifacts from these stale 
packages in tmp/stamps.

I haven't come along a bitbake option or ancillary script to remove 
stale packages as my recipes bump.  Is there one?

Thanks,

Bob





