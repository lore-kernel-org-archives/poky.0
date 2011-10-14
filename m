Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A726BE01244
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 09:07:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p9EG6xvT009996
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 09:06:59 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 14 Oct 2011 09:06:59 -0700
Message-ID: <4E985E22.1080008@windriver.com>
Date: Fri, 14 Oct 2011 11:06:58 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4E984ACB.1080901@mlbassoc.com>
In-Reply-To: <4E984ACB.1080901@mlbassoc.com>
Subject: Re: Poky SDK as an external toolchain
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
X-List-Received-Date: Fri, 14 Oct 2011 16:07:02 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 10/14/11 9:44 AM, Gary Thomas wrote:
> Premise: I'm happy with the toolchain that builds with Poky/Yocto
> Problem: I'm not happy rebuilding said toolchain all the time, nor
> having my customers have to rebuild it.
> 
> Solution? I'd like to build the meta-toolchain and then be able to
> use that as an external toolchain for subsequent builds.  That way,
> I can create the tools and reuse them internally as well as pass
> them to my customers.
> 
> How can I make this happen?  The last time I tried anything like
> this, I spent many days in the attempt only to find out that it
> was never going to work...

We have a similar need for our commercial products.  We allow/enable our
customers to rebuild the toolchains (and use the results), but we only provide
official support for our binary versions.  There are simply too many variations
possible to try to support the toolchains in source format.  (Toolchains =
bintuils, gcc, stock eglibc and a stock uclibc configurations...)

Our intention is simply to create custom recipes that extract our binaries and
use them instead of doing a by-source build.  If there is an easier way that
would be nice.  (And I agree, using the results of the meta-toolchain build is
the right approach for anything standard.)

I'd suggest this get added as an enhancement request to the bugzilla.  We're
currently working on feature planning for 1.2 so this would be a good time to
add it into the bucket of possible work items.

--Mark

> Note: sstate is *not* the answer.  Not only is it HUGE (well over
> 1GB for a typical setup), but it doesn't work reliably - see
> bug #1536
> 
> Ideas/hints?
> 
> Thanks
> 


