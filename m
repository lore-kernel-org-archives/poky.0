Return-Path: <kpa_info@yahoo.fr>
Received: from nm24-vm0.bullet.mail.ird.yahoo.com
	(nm24-vm0.bullet.mail.ird.yahoo.com [212.82.109.239])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3E2A2E00746
	for <poky@yoctoproject.org>; Thu, 12 Apr 2012 06:12:27 -0700 (PDT)
Received: from [77.238.189.53] by nm24.bullet.mail.ird.yahoo.com with NNFMP;
	12 Apr 2012 13:12:26 -0000
Received: from [217.146.188.63] by tm6.bullet.mail.ird.yahoo.com with NNFMP;
	12 Apr 2012 13:12:26 -0000
Received: from [127.0.0.1] by smtp105.mail.ird.yahoo.com with NNFMP;
	12 Apr 2012 13:12:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1334236346; bh=S84Og5NKzik6mn6GAFqaFKfKd4y4ynjEY1L0VpKG8sc=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=bQrGR89OjXJ8Um1vsAa/DW89h/LEcis4l1gsgG6urpmiyDEKb1vNSNLLuOECwUO7o8TWj2QqqzM0iYjnCz35fpaWm2kT6WeUXvh10JfdaXVVCfnBIGzXa++gQQ0LktL9AqDbg3zQPxxlzBYJezRyF+zEgxsoKEmWhOZ6RqJI/zE=
X-Yahoo-Newman-Id: 955398.79602.bm@smtp105.mail.ird.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: Z9W4sqAVM1lPQ9SQ3kMgqQ04HmcBU9UKpfBVLS6Xk8HDuHt
	BKRWrKw6Es_4HHOYvnaTxDmYnjVAl2eaJPgLE9QPqfUpHJBPAvijMQSPGuah
	oZoteNhFf7LU6CTjQK5eRB.YgEaW4GBPk3U89GTxPjQYAgE2fFZhkDpKckRo
	2IuoH10S_miyxo5sIMu2laJgODSipLkVtmY1GiSxUDITeYmYQPCwLFcfgYyD
	TkUX_EZ2ZjTelkFsGx0LbXE0Ojgm3SSm2otPyZDDT8Op6xLO3o69t8P6mZE.
	gUrQmdSb5qHwWAeN2BOkfU11rLEv6sWdftsv7g7NLsUAMQb24.OSB9nyfpAE
	mvtcueMZAfpDk8HxLVUsFAirtPpJt9qwVGEpJZ.R.B56bK57E0Qnysj0RHfk
	yi2QhQLWWiyiy80Vu4bTKkVl0EEvdELsaLa4kGnc5INRvc7aDB1bnCWUqz1z
	wW1c1ofbrJEL3fEsY5HJ5SQjrVLYPtmXThjhRPlj.H.BEJ4fhAAPNrV3t
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [192.168.2.63] (kpa_info@213.193.97.58 with plain)
	by smtp105.mail.ird.yahoo.com with SMTP; 12 Apr 2012 06:12:26 -0700 PDT
Message-ID: <4F86D4B9.8060105@yahoo.fr>
Date: Thu, 12 Apr 2012 15:12:25 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.28) Gecko/20120313 Lightning/1.0b2 Thunderbird/3.1.20
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F845371.9040903@yahoo.fr>
	<1704553.ee0Gysgyqc@helios>	<4F853846.60409@yahoo.fr>
	<1389871.AkcVuV051j@helios> <4F86C4EB.4010207@yahoo.fr>
In-Reply-To: <4F86C4EB.4010207@yahoo.fr>
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
X-List-Received-Date: Thu, 12 Apr 2012 13:12:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/12/2012 02:04 PM, Patrick wrote:
> On 04/11/2012 11:08 AM, Paul Eggleton wrote:
>> On Wednesday 11 April 2012 09:52:38 Patrick wrote:
>>> Thanks again for your answer. I have rebuild qt with DirectFB using
>>> qt4-embedded. I could start a Qt application on my board using QWS (test
>>> -qws). Is that right to start DirectFB or should I use another way ?
>>> I just would like to be sure that DirectFB is used and not simply the
>>> Linux framebuffer.
>>
>> At this point I'd have to refer you to the Qt documentation,
>> particularly the
>> first link:
>>
>> http://qt-project.org/doc/qt-4.8/qt-embedded-displaymanagement.html
>> http://qt-project.org/doc/qt-4.8/qt-embeddedlinux-directfb.html
>>
>> Cheers,
>> Paul
>>
>
> One more question about Qt with poky;
>
> Qt embedded work now on my target and I could easily compile some
> application based on it using bitbake.
>
> I would like now to add the possibility to compile Qt based application
> from the "SDK". I have added the different -dev version of Qt to the
> "SDK" but qmake is missing. How could I add a working "cross" version of
> qmake ?
>
> Thanks in advance for your help
>
> Patrick
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

Ok I have found that I have to use the meta-toolchain-qte recipe.

Patrick

