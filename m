Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 739EF4C811F6
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 04:30:38 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8AUZHY018789;
	Wed, 8 Dec 2010 10:30:35 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18605-03; Wed,  8 Dec 2010 10:30:31 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8AUUd3018783
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 8 Dec 2010 10:30:30 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
Date: Wed, 08 Dec 2010 10:30:22 +0000
Message-ID: <1291804222.1554.256.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 08 Dec 2010 10:30:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Dongxiao,

On Wed, 2010-12-01 at 09:57 +0800, Xu, Dongxiao wrote:
> Recently when investigating the file parsing speed, I found the
> implementation of "??=" is another hot spot. This operator will not
> apply the default assignment until the end of the parse, which is
> different from "?=". According to current poky, the users for "??=" is
> mostly the scm revisions stored in poky-default-revisions.inc.
> 
> Currently the final assignment logic for "??=" is added in finalize(),
> which costs about 20% parsing time.

Can I take a look at the graph showing that? I'm a little surprised it
takes 20% of the time, that is a rather scary amount!

> The differences between "??=" and "?=" are straight forward, however I
> don't fully understand in which senario the "??=" should be used. Or
> in other word, why those scm revisions should use "??=". Could you
> help to clarify a bit? Thanks so much!

You would use ??= when you are assigning a value but you want any other
definition anywhere to be able to override it regardless of
include/inherit ordering constraints.

We created the operator to solve some problems we had with the SRCREV
variables and its use hasn't grown into other areas but there is no
reason it shouldn't be used in other places, it probably just didn't
exist when other code was written.

> BTW, I noticed that openembedded doesn't use this operator.

Their loss ;-)

Cheers,

Richard


