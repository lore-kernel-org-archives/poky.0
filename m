Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1397A4C80479
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 21:12:38 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p223CaO8004151
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 1 Mar 2011 19:12:37 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 1 Mar 2011 19:12:36 -0800
Message-ID: <4D6DB5A3.2030404@windriver.com>
Date: Tue, 1 Mar 2011 21:12:35 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <cover.1298961777.git.xiaofeng.yan@windriver.com>	<201103011023.58911.paul.eggleton@linux.intel.com>	<34ADCD70-E17B-459F-88E7-D959B0DB4737@dominion.thruhere.net>	<201103011624.06798.paul.eggleton@linux.intel.com>	<4D6D9E1C.6010104@windriver.com>
	<4D6D9F1F.8020705@windriver.com> <4D6DB396.8020905@intel.com>
In-Reply-To: <4D6DB396.8020905@intel.com>
X-Originating-IP: [172.25.36.227]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Add qt3 to poky
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
X-List-Received-Date: Wed, 02 Mar 2011 03:12:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On 3/1/11 9:03 PM, Saul Wold wrote:
> On 03/01/2011 05:36 PM, Mark Hatle wrote:
>> I think we should be sure to clearly label the Qt3 as only provided for LSB
>> compatibility in the recipe, that way if someone tries to use it, they can
>> understand why it was added/maintained.
>>
> Mark,
> 
> I thought we talked about this before, I did not think we where going 
> for 100% compliant in core yocto, and if needed, this can be part of the 
> WR layer in order to complete compliance.  I don't think we want to 
> carry around a recipe that is purely for compatibility at that level.

What I remember is we were not sure it would go into 1.0.  And we were not yet
sure what we wanted to do with a QT compatibility library, if it would ever go
into "meta", another layer, or...

I think LSB compliance makes sense in the meta layer because of the new
"poky-lsb" distro.  It shouldn't hurt to carry this forward and maintain it for
compatibility sake as part of the poky-lsb work.  (But I won't complain if it
doesn't make it into 1.0, and we delay a final decision on if it goes in at all
until later -- I just want to make sure the code isn't lost though...)

--Mark

> Sau!
> 
>> --Mark
>>
>> On 3/1/11 7:32 PM, Xiaofeng Yan wrote:
>>> On 2011年03月02日 00:24, Paul Eggleton wrote:
>>>> On Tuesday 01 March 2011 10:33:08 you wrote:
>>>>> And since there was never a qtopia for qt3 I highly doubt anyone is using
>>>>> qt3/e.
>>>> Well, you never know what people are doing behind closed doors. There was also
>>>> once a version of SystemRescueCD that was using the then-current version of
>>>> QtParted with Qt/Embedded 3.x to avoid including X.
>>>>
>>>> For our purposes though it's only for LSB at this stage, so embedded appears
>>>> to be superfluous.
>>>>
>>>> Cheers,
>>>> Paul
>>>> _______________________________________________
>>>> poky mailing list
>>>> poky@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/poky
>>>>
>>> Hi All,
>>>
>>> Qt3 could be superfluous because qt4 can include qt3 functions. But the
>>> most important is that our lsb-image must meet LSB's requirement.
>>> Otherwise our yocto can't be permitted to use the LSB Certified
>>> trademark. So qt3 is just for passing LSB test on lsb-image.
>>>
>>> Thanks
>>> Yan
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
> 


