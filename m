Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6644BE00746
	for <poky@yoctoproject.org>; Thu, 22 Mar 2012 03:47:48 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C10E0F81259; Thu, 22 Mar 2012 04:47:47 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 84663F81255;
	Thu, 22 Mar 2012 04:47:42 -0600 (MDT)
Message-ID: <4F6B034E.3060603@mlbassoc.com>
Date: Thu, 22 Mar 2012 04:47:42 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <857BE142E5399E46B20FD45B9DB8A7BC0FD04E6E@SHSMSX102.ccr.corp.intel.com>
	<7E29EF69110C17499E6B3A9844CD4FD91341F82E@szxeml526-mbs.china.huawei.com>
In-Reply-To: <7E29EF69110C17499E6B3A9844CD4FD91341F82E@szxeml526-mbs.china.huawei.com>
Subject: =?UTF-8?B?UmU6IOetlOWkjTogW3F1ZXN0aW9uXWhvdyB0byBkZWZpbmVkIG15IG93biBkaXN0cm8=?=
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
X-List-Received-Date: Thu, 22 Mar 2012 10:47:48 -0000
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: 8bit

On 2012-03-22 04:21, Wangdawei (Sivan) wrote:
> Is there some method to use the command line to finish this work ?not the GUI ?

You could try DISTRO="poky-tiny" and core-image-minimal

> -----邮件原件-----
> 发件人: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] 代表 Lu, Lianhao
> 发送时间: 2012年3月22日 18:10
> 收件人: poky@yoctoproject.org
> 主题: Re: [poky] [question]how to defined my own distro
> 
> Wangdawei (Sivan) wrote on 2012-03-22:
>> Yes ,I have checked this , but I just can find how to add a package , I don’t find how to reduce the packages ,I don’t need so much packages
>> like it in core-image .Do I need to change the core-image.bbclass ? or there is another configure file can finish this work ?
>>
> 
> Maybe you could try hob, the gtk based GUI frontend to customize image content.
> 
> Best Regards,
> Lianhao
> 
>>
>> 发件人: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] 代表 Jack Mitchell
>> 发送时间: 2012年3月22日 17:28
>> 收件人: poky@yoctoproject.org
>> 主题: Re: [poky] [question]how to defined my own distro
>>
>>
>>
>> On 22/03/12 07:27, Wangdawei (Sivan) wrote:
>>
>>
>>
>> Hi guys,
>>
>>
>>
>>           I want to build a rootfs , that I can decide which package I will build into the image . is there some config file to do this ?I can’t
>> find the config file in poky . Is there any way to complete this ?for example I just want to build busybox and glibc for my image ,how can I
>> config this ?
>>
>>
>>
>> Best Regards
>>
>>
>>
>> kyle sivan
>>
>> Huawei Technologies Co., Ltd.
>>
>> cell phone: +86-18665326540
>>
>> (Office) 755-28384495
>>
>> sivan.wang@huawei.com<mailto:sivan.wang@huawei.com>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> _______________________________________________ poky mailing list
>> poky@yoctoproject.org https://lists.yoctoproject.org/listinfo/poky
>>
>>
>> Hi Kyle,
>>
>> There are reams of documentation that people have worked very hard on, which are be located here:
>> http://www.yoctoproject.org/documentation. One of them covers adding packages to your build.
>>
>> Regards,
>> Jack.
>>
>>
>>
>>
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

