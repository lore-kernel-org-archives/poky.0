Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC9094C81021
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 06:46:20 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9CkI2w006771;
	Thu, 9 Dec 2010 12:46:18 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06269-09; Thu,  9 Dec 2010 12:46:14 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9CkAQY006765
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Dec 2010 12:46:10 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A314F30F3@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
	<1291804222.1554.256.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2BAE@shsmsx501.ccr.corp.intel.com>
	<1291819067.1554.606.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2E1C@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D515D10E7@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F3004@shsmsx501.ccr.corp.intel.com>
	<1291893846.1554.793.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F30F3@shsmsx501.ccr.corp.intel.com>
Date: Thu, 09 Dec 2010 12:45:58 +0000
Message-ID: <1291898758.1554.819.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: About the operator "??="
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
X-List-Received-Date: Thu, 09 Dec 2010 12:46:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-09 at 20:13 +0800, Xu, Dongxiao wrote:
> w/ patch:
> time bitbake -p
> 
> real    0m26.189s
> user    0m25.480s
> sys     0m0.420s
> 
> w/o patch:
> time bitbake -p
> 
> real    0m30.940s
> user    0m30.230s
> sys     0m0.460s

Thanks, thats 5/31 so about 15% which is nice and a confirmed speedup.
Sometimes the profiling can distort things slightly so this is a good
sanity check.

Can you see what the impact is to parsing if we do all the work we do in
setVar in setVarFlag too?

I'm definitely in favour of the patch, just a few details to make sure
of :)

Cheers,

Richard



