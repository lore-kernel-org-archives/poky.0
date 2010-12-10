Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 522864C80050
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 17:42:32 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBANgTG3000849;
	Fri, 10 Dec 2010 23:42:29 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 00445-07; Fri, 10 Dec 2010 23:42:25 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBANgKvf000843
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 10 Dec 2010 23:42:21 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A314F313A@shsmsx501.ccr.corp.intel.com>
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
	<1291898758.1554.819.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F313A@shsmsx501.ccr.corp.intel.com>
Date: Fri, 10 Dec 2010 23:42:01 +0000
Message-ID: <1292024521.14420.99.camel@rex>
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
X-List-Received-Date: Fri, 10 Dec 2010 23:42:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-09 at 22:44 +0800, Xu, Dongxiao wrote:
> I made the following patch (setVarFlag.patch) to move everything in
> setVar to setVarFlag, please help to review it.
> 
> Please note one place that I modified, see the indent of
> "self._seen_overrides[override].add( var )", I thought it was a bug in
> original code.

No, its not. Its making sure [override] exists before trying to add var
to it. It could also be:

if override not in self._seen_overrides:
    self._seen_overrides[override] = set(var)
else:
    self._seen_overrides[override].add( var )

> After adding this, the "two lines" in original "??=" optimization
> patch are no longer needed.
> 
> +            if bb.data.getVarFlag(key, "content", data) is None:
> +                bb.data.setVar(key, None, data)
> 
> I rerun "time bitbake -p" with the two patches (see below, one is
> setVarFlag.patch, another is the "??=" optimization patch)
> The result is:
> 
> real    0m27.049s
> user    0m26.340s
> sys     0m0.440s
> 
> The parsing time is a bit longer ( < 1 sec) than without the following
> "setVarFlag.patch".

Patches look good to me other than the above. I also talked to Chris on
irc on #oe earlier today and we agreed this is a good move for setVar
bringing both into line although the whole way the datastore works could
still be better.

Could you send these patches through a pull request please and lets get
them merged.

Cheers,

Richard




