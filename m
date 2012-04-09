Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57F85E0059A
	for <poky@yoctoproject.org>; Mon,  9 Apr 2012 14:53:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q39Lrt9C011019
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 9 Apr 2012 14:53:55 -0700 (PDT)
Received: from msp-dhcp17.wrs.com (172.25.34.17) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 9 Apr 2012 14:53:54 -0700
Message-ID: <4F835A71.9050204@windriver.com>
Date: Mon, 9 Apr 2012 16:53:53 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4F7F2AA5.2010400@linux.intel.com> <4F801898.2060107@freyther.de>
	<4F833F34.5050901@linux.intel.com> <4F834601.6020507@gmail.com>
	<4F8347A1.3050007@linux.intel.com>
In-Reply-To: <4F8347A1.3050007@linux.intel.com>
Subject: Re: Edison Next
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
X-List-Received-Date: Mon, 09 Apr 2012 21:53:55 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/9/12 3:33 PM, Joshua Lock wrote:
>
>
> On 09/04/12 13:26, Derek Buitenhuis wrote:
>> On 09/04/2012 3:57 PM, Joshua Lock wrote:
>>> "Q: What is the overall support plan for the Yocto Project?
>>>
>>> A: Security patches and critical bug fixes are supplied one release
>>> back. No toolchain or kernel changes are allowed for these updates.
>>> Support for longer periods of time can be supplied by commercial OSVs."
>>
>> Random Question:
>>
>> The above FAQ is a tad vague... what if the kernel or toolchain change
>> is a security fix?
>
> That's a reasonable question, but not one I can answer with any
> authority, having not authored the FAQ.
>
> I infer that it means toolchain or kernel *version* changes, as we
> strive to avoid breaking compatibility with any existing layers, etc.
> when providing a stable release update.

Yes, the intention is toolchain/kernel -bug fixes- are allowed.. version and 
more specifically API changes are not allowed.  Feature/ABI stability is the key.

--Mark

> Regards,
> Joshua


