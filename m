Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D51FAE0144E
	for <poky@yoctoproject.org>; Sun,  4 Aug 2013 18:27:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r751RndI023406
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 4 Aug 2013 18:27:50 -0700 (PDT)
Received: from [128.224.162.233] (128.224.162.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Sun, 4 Aug 2013 18:27:49 -0700
Message-ID: <51FEFFA6.9000502@windriver.com>
Date: Mon, 5 Aug 2013 09:28:06 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1375430111.git.Qi.Chen@windriver.com>
	<0ee3aefc08bd6bcddd7132c00ecf3b3ec8ea654b.1375430111.git.Qi.Chen@windriver.com>
	<1375452334.978.2.camel@dvhart-mobl1.amr.corp.intel.com>
In-Reply-To: <1375452334.978.2.camel@dvhart-mobl1.amr.corp.intel.com>
X-Originating-IP: [128.224.162.233]
Cc: poky@yoctoproject.org, Zhangle.Yang@windriver.com
Subject: Re: [PATCH 1/1] tiny-init: fix bashism
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 05 Aug 2013 01:27:52 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 08/02/2013 10:05 PM, Darren Hart wrote:
> On Fri, 2013-08-02 at 15:56 +0800, Qi.Chen@windriver.com wrote:
>> From: Chen Qi <Qi.Chen@windriver.com>
> I understand this is a simple fix, but please provide a commit log. In
> this case, something like the following would suffice:
>
> "source" is a bashism, replace it with the posix shell compliant "."
Thanks.
Comment added and V2 sent.

Best Regards,
Chen Qi

>> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> Acked-by: Darren Hart <dvhart@linux.intel.com>
>
>
>> ---
>>   meta-yocto/recipes-core/tiny-init/files/init |    2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta-yocto/recipes-core/tiny-init/files/init b/meta-yocto/recipes-core/tiny-init/files/init
>> index 4b78f01..9140e95 100644
>> --- a/meta-yocto/recipes-core/tiny-init/files/init
>> +++ b/meta-yocto/recipes-core/tiny-init/files/init
>> @@ -15,7 +15,7 @@ ifup lo
>>   
>>   # Allow for distro or local customizations
>>   if [ -f /etc/rc.local ] ; then
>> -	source /etc/rc.local
>> +	. /etc/rc.local
>>   fi
>>   
>>   # Become session leader and try to find a real tty (e.g. ttyS0)


