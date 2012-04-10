Return-Path: <kpa_info@yahoo.fr>
Received: from nm18-vm0.bullet.mail.ird.yahoo.com
	(nm18-vm0.bullet.mail.ird.yahoo.com [77.238.189.215])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 461AAE0030B
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 08:56:09 -0700 (PDT)
Received: from [77.238.189.234] by nm18.bullet.mail.ird.yahoo.com with NNFMP;
	10 Apr 2012 15:56:08 -0000
Received: from [217.146.189.105] by tm15.bullet.mail.ird.yahoo.com with NNFMP;
	10 Apr 2012 15:56:08 -0000
Received: from [127.0.0.1] by smtp121.mail.ird.yahoo.com with NNFMP;
	10 Apr 2012 15:56:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1334073368; bh=vt+6I0j0YgsY7+4WMIr5BvpzTZpNde2Wh6smb+lWU7o=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=WuQNvFWuzaa/GXpazZuuIGvbSyVKigTnC1pECnOXg+zfhXhXYhiR8ntTJV+xrJe8vLsijPatRSLNxdlYrx0vLr8LZZpO5HWds5VoHOi6X1XeN+CsLwDqqyxKqcr5wOZpI2jWU9tOwZHnC740ZpK3bGzq1PKO0ZEO7GtNncCzsag=
X-Yahoo-Newman-Id: 139068.226.bm@smtp121.mail.ird.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: MOQy3EIVM1lZSKEe5ZBPWcJbF4HTxEPnUEU5ffnCBf9MfYY
	tvRoNbu612cTQXJw6I2u7KAG98fYrNn7XGdyawbwwMxAZ7fohpFtNU8brw_V
	dViopqJrXIJ4QNlCsa2DPeBngJJ3U039jBxLfoxe7JErDChYGpfXgU2GbE3U
	8oZ.jHCtVBp8RB_nYMNkj85wC3K0PyOGfb5hrEOM6LuGjI9EFkpQoTyG5JBB
	WegkmNUxaEyR.IaIVrTdWMD3yYvWO79X6Sdmc5LF7ab80BH15C.cjMoUG3TF
	qai2yyKVtrSlIP0f2R6YZDpU1g7T15Gm6VQ4gbnHFUOd2gsfWIMeeCdV0umT
	.G2yme9kGMJEZfzOJGNXjYV1uUXyE.ePG7urlX.Rrex1zHbDTZTjkib2HW04
	YyIAZNlLopQ--
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [192.168.2.63] (kpa_info@213.193.97.58 with plain)
	by smtp121.mail.ird.yahoo.com with SMTP; 10 Apr 2012 08:56:08 -0700 PDT
Message-ID: <4F845816.4090701@yahoo.fr>
Date: Tue, 10 Apr 2012 17:56:06 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.28) Gecko/20120313 Lightning/1.0b2 Thunderbird/3.1.20
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4F845371.9040903@yahoo.fr> <6449891.F5szdKCE2k@helios>
In-Reply-To: <6449891.F5szdKCE2k@helios>
Cc: poky@yoctoproject.org
Subject: Re: Qt4 minimal subset
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
X-List-Received-Date: Tue, 10 Apr 2012 15:56:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/10/2012 05:43 PM, Paul Eggleton wrote:
> On Tuesday 10 April 2012 17:36:17 Patrick wrote:
>> I am working with yocto 1.1.1, poky 6.0.1. Until now I have build an
>> embedded systems without display. Now I would like to add support for a
>> small screen with Qt.
>>
>> I have added to my image the qt4-x11-free recipes. This include so many
>> things that I don't need as I am building an embedded system: Demos,
>> example, docs, dev tools, ...
>>
>> Which recipes could I use to include a working subset of Qt with X11
>> that include only base libraries and eventually some additional elements.
>
> When we package Qt, it is split into a number of packages for individual
> components; however if you install the qt4-x11-free *package* in your image,
> this pulls in everything. What you probably want to do is have a look at the
> packages it does produce and only include those that you need in your image
> rather than the qt4-x11-free package.
>
> One way to get a list of the packages produced is to look in tmp/work/*/qt4-
> x11-free*/packages-split/.
>
> Cheers,
> Paul
>

Thanks Paul for your quick answers.

I was wondering if a "meta" package like qt4-x11-free was available with 
a smaller subset, including the most used package of Qt.

On aditional question; is it possible to build Qt with directFB instead 
X11 ? If yes how should I do ?

Thanks again for your help

Patrick

