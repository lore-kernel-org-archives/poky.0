Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF135E01538
	for <poky@yoctoproject.org>; Thu,  1 Aug 2013 19:34:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r722YbSS016510
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Aug 2013 19:34:38 -0700 (PDT)
Received: from [128.224.162.233] (128.224.162.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Thu, 1 Aug 2013 19:34:38 -0700
Message-ID: <51FB1AC7.50109@windriver.com>
Date: Fri, 2 Aug 2013 10:34:47 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Bryan Evenson <bevenson@melinkcorp.com>
References: <91586D499ADFD74FBCFB8425266A5DE40153AD9774C7@pluto.melinkcorp.local>
	<14175503.PQSq1zm65A@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153AD9775E1@pluto.melinkcorp.local>
	<1925526.xFDIqGSNAm@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153AD977600@pluto.melinkcorp.local>
	<51F20CAB.30504@windriver.com>
	<91586D499ADFD74FBCFB8425266A5DE40153ADA9D39B@pluto.melinkcorp.local>
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153ADA9D39B@pluto.melinkcorp.local>
X-Originating-IP: [128.224.162.233]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Fri, 02 Aug 2013 02:34:44 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 08/01/2013 11:27 PM, Bryan Evenson wrote:
> All,
>
> I'm having some issues with setting the root password.  My image is based off of core-image-minimal, which uses TinyLogin for password management.  First, I tried getting the encrypted password by setting root's password and seeing what it looked like in /etc/shadow.  However, it looks like more information than what is shown in /etc/shadow is used to encrypt the password, because the encrypted password is different each time.
>
> For example, I have a new image that created with 'debug-tweaks' on, so root has a blank password.  From /etc/shadow:
>
> root::15918:0:99999:7:::
>
> showing root has no password.  If I change root's password to "password", I get:
>
> root:bZMfmHD5uJ3l6:15918:0:99999:7:::
>
> If I change root's password to "password" again, I get:
>
> root:CiwTL1eJx70ps:15918:0:99999:7:::
>
> So at this time I do not know how to get the encrypted password.  And also related to the password, it looks like TinyLogin limits the password to 8 characters.  You can type something more than 8 characters for your password, but it will only use the first 8 characters.  I'd like to be able to use a slightly stronger password.  So my questions are:
>
> * Is there a different password manager package that I can use that doesn't have the 8 character limit?  I see that Busybox has password management, but I don't yet know if it has the same limitation.
Tinylogin has been deprecated and officially removed from Yocto. We now 
use busybox as a replacement. It doesn't have 8-char limitation, as far 
as I know.
> * If there is another one to use, how do I ensure TinyLogin is not installed?
If you're using Dylan, perhaps you need to backport relevant patches ...

http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=ChenQi/busybox-fixes
(9 patches)
http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=ChenQi/busybox-on-device-upgrade
(1 patch)

> * With the other password manager, how do I get the encrypted password to insert in the EXTRA_USER_PARAMS feature?
The user interface remains all the same with tinylogin.

Best Regards,
Chen Qi

> * The TinyLogin package is using the source code that was last updated in 2003, and the TinyLogin web page as directed from the package script states: "TinyLogin was merged into BusyBox, current sources can thus be checked out via BusyBox."  Should the TinyLogin package be removed from core-image-minimal and BusyBox password management turned on to use more recent sources?
>
> Regards,
> Bryan
>
>> -----Original Message-----
>> From: poky-bounces@yoctoproject.org [mailto:poky-
>> bounces@yoctoproject.org] On Behalf Of ChenQi
>> Sent: Friday, July 26, 2013 1:44 AM
>> To: poky@yoctoproject.org
>> Subject: Re: [poky] Default root password without 'debug-tweaks'?
>>
>> On 07/25/2013 08:28 PM, Bryan Evenson wrote:
>>> Paul,
>>>
>>> >From looking at the patch series Chen Qi recently posted about the
>>> EXTRA_USER_PARAMS, one could do the following in your local.conf:
>>>
>>> require conf/distro/include/security_flags.inc
>> The above line is not needed for this feature.
>>
>>> INHERIT += "extrausers"
>>> EXTRA_USERS_PARAMS = "\
>>>       usermod -p 'encrypted_password' root; \ "
>>>
>>> If I understand correctly, that should change the root password to
>> the
>>> listed encrypted password.  But that still leaves the problem of
>>> getting the encrypted root password.  Changing the password on the
>>> hardware and then viewing the encrypted password under /etc/shadow is
>>> a little messy,
>> That's the way I used when testing this feature. As we're creating an
>> image, this method is acceptable for me.
>>
>>>    but I'm at a loss for a better
>>> solution that is guaranteed to work.  You could use crypt or mcrypt
>> to
>>> encrypt a file containing the password in plaintext on the host, but
>>> you have to know the encryption algorithm used on the target
>>> filesystem.
>> If you find one, please let me know. Thanks.
>>
>>> If anyone knows of a better way to create the encrypted password that
>>> would be used by the target, I'm open to suggestions.
>>>
>>> Thanks,
>>> Bryan
>> Just to be clear, use the way of copying files is not acceptable, as
>> there are some directories related to user setting such as the user's
>> home directory and mail directory. And these files should also be
>> handled correctly.
>>
>> Best Regards,
>> Chen Qi
>>
>>>> -----Original Message-----
>>>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>>>> Sent: Thursday, July 25, 2013 8:01 AM
>>>> To: Bryan Evenson
>>>> Cc: poky@yoctoproject.org
>>>> Subject: Re: [poky] Default root password without 'debug-tweaks'?
>>>>
>>>> On Thursday 25 July 2013 07:53:20 Bryan Evenson wrote:
>>>>> Thank you for the explanation.  And just earlier this morning, I
>>>> found
>>>>> this description of how to change the root password for an image:
>>>>> http://bec-systems.com/site/967/setting-the-root-password-in-an-
>>>> openem
>>>>> bedded
>>>>> -image.
>>>>>
>>>>> If this would be a suggested method of performing the task, I could
>>>>> write a patch for the documentation to add the details about the
>>>>> root account being locked and the suggested method for modifying
>> the
>>>>> root password.  If you could point me to a good place to add this
>>>>> detail, I'll send out a patch.
>>>> Hmm, that method does seem a bit messy though. Ideally there would
>> be
>>>> a simple method available that didn't require you to boot the target
>>>> system. Presumably it wouldn't be too hard to do it using tools on
>>>> the host.
>>>>
>>>> Cheers,
>>>> Paul
>>>>
>>>> --
>>>>
>>>> Paul Eggleton
>>>> Intel Open Source Technology Centre
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>>
>>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>


