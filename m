Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC8EA4C80263
	for <poky@yoctoproject.org>; Fri,  6 May 2011 23:05:05 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p47452ZH000431
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 6 May 2011 21:05:02 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.19.114) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Fri, 6 May 2011 21:05:01 -0700
Message-ID: <4DC4C4EA.8050507@windriver.com>
Date: Sat, 7 May 2011 00:04:58 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <BANLkTikX3sP7yTAkH0F70i2DAabrU9u+bw@mail.gmail.com>
	<1304740882.2592.39.camel@elmorro>
In-Reply-To: <1304740882.2592.39.camel@elmorro>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: bitbake error in master ?
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
X-List-Received-Date: Sat, 07 May 2011 04:05:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-05-07 12:01 AM, Tom Zanussi wrote:
> On Fri, 2011-05-06 at 20:56 -0700, Bruce Ashfield wrote:
>> Am I the only one seeing:
>>
>> Traceback (most recent call last):
>>    File "/home/bruce/poky/bitbake/bin//bitbake", line 34, in<module>
>>      import bb
>>    File "/home/bruce/poky/bitbake/lib/bb/__init__.py", line 74, in<module>
>>      from bb import fetch2 as fetch
>>    File "/home/bruce/poky/bitbake/lib/bb/fetch2/__init__.py", line 31,
>> in<module>
>>      import bb.data, bb.persist_data, bb.utils
>>    File "/home/bruce/poky/bitbake/lib/bb/persist_data.py", line 29, in<module>
>>      from bb.compat import total_ordering
>> ImportError: No module named compat
>>
>> Which appears to be triggered by:
>>
>> commit 754d1c69839982b7cdd49839a398e688c0ad9a9b
>> Author: Chris Larson<chris_larson@mentor.com>
>> Date:   Mon Apr 4 09:36:45 2011 -0700
>>
>>      persist_data: implement comparison, same as dict
>>
>>      (Bitbake rev: 1190406c526c7bb7cf415867be83e0403812a7dd)
>>
>>      Signed-off-by: Chris Larson<chris_larson@mentor.com>
>>      Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
>>
>> -----
>>
>> Since I haven't heard anyone else mention this, and it seems to be pretty
>> fundamental .. I tend to suspect myself. But looking at the poky git
>> repos for master shows me what I have on disk here.
>>
>> I'll look at this again tomorrow, but just thought I'd ping the list, since
>> this is stopping me from testing pretty much anything at the moment.
>>
>
> I just saw this too, for now backed up to the last known good commit for
> me, 72875493b8bbb5d6793380ee71c6bca4f438ca04, in case you need one...

Thanks Tom,

Saves me a little bisection fun.

Bruce

>
> Tom
>
>> Cheers,
>>
>> Bruce
>>
>>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


