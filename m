Return-Path: <wmills@ti.com>
Received: from bear.ext.ti.com (bear.ext.ti.com [192.94.94.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A05B6E00307
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 13:57:05 -0800 (PST)
Received: from dlep33.itg.ti.com ([157.170.170.112])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id pAGLv2QD017108
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 16 Nov 2011 15:57:02 -0600
Received: from dlep26.itg.ti.com (smtp-le.itg.ti.com [157.170.170.27])
	by dlep33.itg.ti.com (8.13.7/8.13.8) with ESMTP id pAGLv10n000337;
	Wed, 16 Nov 2011 15:57:01 -0600 (CST)
Received: from DLEE74.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id pAGLv19g010377;
	Wed, 16 Nov 2011 15:57:01 -0600 (CST)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by DLEE74.ent.ti.com
	(157.170.170.8) with Microsoft SMTP Server id 14.1.323.3;
	Wed, 16 Nov 2011 15:57:01 -0600
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.100.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	pAGLv1bl024213;	Wed, 16 Nov 2011 15:57:01 -0600
Message-ID: <4EC431AC.2010207@ti.com>
Date: Wed, 16 Nov 2011 16:57:00 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <5c7672eb-ff1d-4bc7-bdf8-81f467051e8d@zimbra33-e6.priv.proxad.net>
	<4EC42C07.7010409@windriver.com>
In-Reply-To: <4EC42C07.7010409@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: Qt should be linked to openssl at compilation
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
X-List-Received-Date: Wed, 16 Nov 2011 21:57:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 11/16/2011 04:32 PM, Mark Hatle wrote:
> On 11/16/11 3:20 PM, Francois Dupoux wrote:
>> ----- Original Message -----
>> From: "Mark Hatle"<mark.hatle@windriver.com>
>> To: poky@yoctoproject.org
>> Sent: Wednesday, 16 November, 2011 8:57:14 PM
>> Subject: Re: [poky] Qt should be linked to openssl at compilation
>>
>>> So it would be great to just link Qt with openssl so that all SSL 
>>> related classes can work.
>>>
>>> We just need to add "-openssl-linked" to QT_CONFIG_FLAGS in 
>>> recipes-qt/qt4.
>>
>> Slightly off topic perhaps, but are you using the RPM packaging 
>> back-end?
>>
>> This should have identified the usage of the openssl library and 
>> added it to the
>> dependency set.  If it didn't I'm interested to know why it failed to 
>> detect it.
>>
>> This is an outstanding enhancement request to add that same level of 
>> dependency
>> detection to deb and ipkg.  Until then, if you want to use deb or 
>> ipkg you will
>> likely need to add an RDEPENDS to openssl to get the dynamic version.
>>
>> Hi Mark,
>>
>> Yes, I am using RPM packages, with the latest stable version (poky-6.0)

Francois,  are you building your application using bitbake or 
externally?  Are you adding it to your board using an RPM package or 
just coping it there?

If your building it externally and just copying it, all the magic others 
are talking about won't happen.  However you can just add the openssl 
packages to you target.  You can do this by building them and using RPM 
or you can create a custom image/task recipie and add the needed 
packages.  You could even use HOB if you want an easy way to create a 
custom image.

If your building your app in bitbake, then ignore me and continue your 
conversation with Mark.




