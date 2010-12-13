Return-Path: <scott.a.garman@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 68C0C4C80048
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 10:24:32 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2010 08:24:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="635845685"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2010 08:24:32 -0800
Received: from [10.255.14.24] (10.255.14.24) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Mon, 13 Dec 2010 09:24:31 -0700
Message-ID: <4D0648BA.7040005@intel.com>
Date: Mon, 13 Dec 2010 08:24:26 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>	<1291804222.1554.256.camel@rex>	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2BAE@shsmsx501.ccr.corp.intel.com>	<1291819067.1554.606.camel@rex>	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2E1C@shsmsx501.ccr.corp.intel.com>	<625BA99ED14B2D499DC4E29D8138F1504D515D10E7@shsmsx502.ccr.corp.intel.com>	<D5AB6E638E5A3E4B8F4406B113A5A19A314F3004@shsmsx501.ccr.corp.intel.com>	<1291893846.1554.793.camel@rex>	<D5AB6E638E5A3E4B8F4406B113A5A19A314F30F3@shsmsx501.ccr.corp.intel.com>	<1291898758.1554.819.camel@rex>	<D5AB6E638E5A3E4B8F4406B113A5A19A314F313A@shsmsx501.ccr.corp.intel.com>	<1292024521.14420.99.camel@rex>
	<AANLkTikVWrJd3CCtFOokTh=B2HQRO1v0qZRVGdBr_52O@mail.gmail.com>
In-Reply-To: <AANLkTikVWrJd3CCtFOokTh=B2HQRO1v0qZRVGdBr_52O@mail.gmail.com>
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
X-List-Received-Date: Mon, 13 Dec 2010 16:24:32 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/10/2010 03:58 PM, Chris Larson wrote:
> On Fri, Dec 10, 2010 at 4:42 PM, Richard Purdie<rpurdie@linux.intel.com>  wrote:
>> On Thu, 2010-12-09 at 22:44 +0800, Xu, Dongxiao wrote:
>>> I made the following patch (setVarFlag.patch) to move everything in
>>> setVar to setVarFlag, please help to review it.
>>>
>>> Please note one place that I modified, see the indent of
>>> "self._seen_overrides[override].add( var )", I thought it was a bug in
>>> original code.
>>
>> No, its not. Its making sure [override] exists before trying to add var
>> to it. It could also be:
>>
>> if override not in self._seen_overrides:
>>     self._seen_overrides[override] = set(var)
>> else:
>>     self._seen_overrides[override].add( var )
>>
>
> For master, we can use defaultdict for that sort of thing.  What's
> poky's current python version requirement?

2.6, so using defaultdict should be fine.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

