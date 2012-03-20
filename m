Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8268DE013C2
	for <poky@yoctoproject.org>; Tue, 20 Mar 2012 03:04:49 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 12D11F81244; Tue, 20 Mar 2012 04:04:48 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6E869F81235;
	Tue, 20 Mar 2012 04:04:45 -0600 (MDT)
Message-ID: <4F68563D.6030206@mlbassoc.com>
Date: Tue, 20 Mar 2012 04:04:45 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
References: <4F67EA50.7000708@mlbassoc.com>
	<1332210703.1041.86.camel@localhost.localdomain>
	<1332224231.1848.24.camel@dongxiao-osel>
In-Reply-To: <1332224231.1848.24.camel@dongxiao-osel>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: HOB doesn't see my image recipes
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
X-List-Received-Date: Tue, 20 Mar 2012 10:04:49 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-20 00:17, Xu, Dongxiao wrote:
> On Tue, 2012-03-20 at 10:31 +0800, Ni Qingliang wrote:
>> maybe all image recipes should be placed in the directory
>> "meta-xx/images"?
>
> Hob recognizes image whose file name is "xxx-image-xxx", like
> core-image-sato.

Sadly, all of my image recipes are named XXX-image.bb

>>
>> wait expert...
>>
>> On Tue, 2012-03-20 at 10:24 +0800, Gary Thomas wrote:
>>> I have my own distribution, layered over poky (I use meta&  meta-yocto
>>> with my own distribution layers).  HOB doesn't seem to find any of my
>>> [non-yocto] images.
>>>
>>> I thought that this was to be fixed so that any recipe which inherited
>>> 'image.bbclass' (or relied on one that did) would be listed as an image?
>>>
>>> Am I missing something, or is this a bug?
>>>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

