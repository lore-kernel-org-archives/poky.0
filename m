Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E148E0030B
	for <poky@yoctoproject.org>; Mon, 30 Apr 2012 07:36:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Apr 2012 07:36:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="138287071"
Received: from unknown (HELO [10.255.12.182]) ([10.255.12.182])
	by orsmga002.jf.intel.com with ESMTP; 30 Apr 2012 07:36:15 -0700
Message-ID: <4F9EA35F.8070303@linux.intel.com>
Date: Mon, 30 Apr 2012 07:36:15 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Derek Buitenhuis <derek.buitenhuis@gmail.com>
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
	<1327257682-1324-1-git-send-email-derek.buitenhuis@gmail.com>
	<CAMKF1sq0K_uTNLbACaUO=-dQVj8JPkWbjbDxubTZFm6cxRRJPw@mail.gmail.com>
	<4F29F010.5030406@gmail.com>
	<CAMKF1soPhW=-A9z5i7z3Msi4jjE9jB5m3yXKVrn1tRgn_=fwxw@mail.gmail.com>
	<4F9D80B1.8060504@gmail.com>
In-Reply-To: <4F9D80B1.8060504@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2 v2] binutils: Always enable plugins
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
X-List-Received-Date: Mon, 30 Apr 2012 14:36:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/29/2012 10:56 AM, Derek Buitenhuis wrote:
> On 02/02/2012 12:04 AM, Khem Raj wrote:
>> On Wed, Feb 1, 2012 at 6:08 PM, Derek Buitenhuis
>> <derek.buitenhuis@gmail.com>  wrote:
>>> On 22/01/2012 1:57 PM, Khem Raj wrote:
>>>>
>>>> while this patch is ok. It occurs to me that we might have to find an
>>>> easier way to specify common options once for all binutils recipes
>>>
>>>
>>> So uh, I am not clear if this patch will be pushed or if you're
>>> waiting for a refactor of binutils...
>>
>> this is ok to go in. cleanup can happen at later times
>
> Ping! Resurrecting an old thread!
>
> Is this going to be pushed?
>
Any reason to not do the refactor now?  It's early in 1.3, this would be 
good to have, let's do it right once.

Thanks
	Sau!


> - Derek
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

