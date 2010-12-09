Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DB534C80039
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 08:40:33 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9EeVcE008115;
	Thu, 9 Dec 2010 14:40:31 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07945-04; Thu,  9 Dec 2010 14:40:27 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9EePV0008102
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Dec 2010 14:40:25 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A314F2A72@shsmsx501.ccr.corp.intel.com>
References: <cover.1290405852.git.dongxiao.xu@intel.com>
	<1290954465.27143.226.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A30346BE1@shsmsx501.ccr.corp.intel.com>
	<1291034516.14277.966.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2A72@shsmsx501.ccr.corp.intel.com>
Date: Thu, 09 Dec 2010 14:40:14 +0000
Message-ID: <1291905614.1554.868.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1][RFC] Optimize file parsing speed
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
X-List-Received-Date: Thu, 09 Dec 2010 14:40:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-08 at 14:53 +0800, Xu, Dongxiao wrote:
> Xu, Dongxiao wrote:
> > Richard Purdie wrote:
> >> On Mon, 2010-11-29 at 13:45 +0800, Xu, Dongxiao wrote:
> >>> Richard Purdie wrote:
> > Like the whole d.keys(), exported variables are also different among
> > recipes, since recipe may export or unset certain variables for
> > itself. So to implement this, we need to keep a common list, and then
> > handle recipe specific export/unset variables.  
> > 
> > Does my understanding correct?
> 
> Here I mean even the exported variables may be different among
> different recipes, since each recipe may export or unset certain
> variables for itself. So is it possible for us to keep a common
> exported variable list?

The reason these functions are slow is that our dictionary is huge and
d.keys() takes time to construct and then iterate over.

Instead, if we make a cache in setVarFlag of anything with an export
flag set, we then have a pregenerated list.

Yes, the list is different between recipes but that doesn't mean we
can't prebuild the list when parsing.

Cheers,

Richard


