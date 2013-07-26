Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0026EE014E4
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 22:44:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r6Q5iCIF023350
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 22:44:12 -0700 (PDT)
Received: from [128.224.162.233] (128.224.162.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Thu, 25 Jul 2013 22:44:11 -0700
Message-ID: <51F20CAB.30504@windriver.com>
Date: Fri, 26 Jul 2013 13:44:11 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <91586D499ADFD74FBCFB8425266A5DE40153AD9774C7@pluto.melinkcorp.local>
	<14175503.PQSq1zm65A@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153AD9775E1@pluto.melinkcorp.local>
	<1925526.xFDIqGSNAm@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153AD977600@pluto.melinkcorp.local>
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153AD977600@pluto.melinkcorp.local>
X-Originating-IP: [128.224.162.233]
Subject: Re: Default root password without 'debug-tweaks'?
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
X-List-Received-Date: Fri, 26 Jul 2013 05:44:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/25/2013 08:28 PM, Bryan Evenson wrote:
> Paul,
>
> >From looking at the patch series Chen Qi recently posted about the
> EXTRA_USER_PARAMS, one could do the following in your local.conf:
>
> require conf/distro/include/security_flags.inc
The above line is not needed for this feature.

> INHERIT += "extrausers"
> EXTRA_USERS_PARAMS = "\
>      usermod -p 'encrypted_password' root; \
> "
>
> If I understand correctly, that should change the root password
> to the listed encrypted password.  But that still leaves the problem
> of getting the encrypted root password.  Changing the password on
> the hardware and then viewing the encrypted password under
> /etc/shadow is a little messy,
That's the way I used when testing this feature. As we're creating an 
image, this method is acceptable for me.

>   but I'm at a loss for a better
> solution that is guaranteed to work.  You could use crypt or
> mcrypt to encrypt a file containing the password in plaintext on
> the host, but you have to know the encryption algorithm used on
> the target filesystem.
If you find one, please let me know. Thanks.

> If anyone knows of a better way to create the encrypted password
> that would be used by the target, I'm open to suggestions.
>
> Thanks,
> Bryan
Just to be clear, use the way of copying files is not acceptable, as 
there are some directories related to user setting such as the user's 
home directory and mail directory. And these files should also be 
handled correctly.

Best Regards,
Chen Qi

>
>> -----Original Message-----
>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>> Sent: Thursday, July 25, 2013 8:01 AM
>> To: Bryan Evenson
>> Cc: poky@yoctoproject.org
>> Subject: Re: [poky] Default root password without 'debug-tweaks'?
>>
>> On Thursday 25 July 2013 07:53:20 Bryan Evenson wrote:
>>> Thank you for the explanation.  And just earlier this morning, I
>> found
>>> this description of how to change the root password for an image:
>>> http://bec-systems.com/site/967/setting-the-root-password-in-an-
>> openem
>>> bedded
>>> -image.
>>>
>>> If this would be a suggested method of performing the task, I could
>>> write a patch for the documentation to add the details about the root
>>> account being locked and the suggested method for modifying the root
>>> password.  If you could point me to a good place to add this detail,
>>> I'll send out a patch.
>> Hmm, that method does seem a bit messy though. Ideally there would be a
>> simple method available that didn't require you to boot the target
>> system. Presumably it wouldn't be too hard to do it using tools on the
>> host.
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>


