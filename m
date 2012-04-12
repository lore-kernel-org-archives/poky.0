Return-Path: <kpa_info@yahoo.fr>
Received: from nm7.bullet.mail.ird.yahoo.com (nm7.bullet.mail.ird.yahoo.com
	[77.238.189.21])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 969AAE00746
	for <poky@yoctoproject.org>; Thu, 12 Apr 2012 05:05:01 -0700 (PDT)
Received: from [77.238.189.49] by nm7.bullet.mail.ird.yahoo.com with NNFMP;
	12 Apr 2012 12:05:00 -0000
Received: from [217.146.189.97] by tm2.bullet.mail.ird.yahoo.com with NNFMP;
	12 Apr 2012 12:05:00 -0000
Received: from [127.0.0.1] by smtp113.mail.ird.yahoo.com with NNFMP;
	12 Apr 2012 12:05:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1334232300; bh=PgbHxZQq6mV/muD9T5s9UIVWL9ioE408v78aRZVdc/o=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=wRkXTk+z52UV4BtdAoudBe1WlldAAqa8f1jyWXVrX2KsW7PTqNsIttTPcmVwQ0Sp4vxRMqplyVjp3f9zRk4ydnzLMJYY4We7rG6oyZXF0ZPslesjXssHMpMg8WQ1dzG3u9FCxkVIIPNH1wORMXlYKT7VgSNVanuWvMYtm4XM19w=
X-Yahoo-Newman-Id: 397040.48431.bm@smtp113.mail.ird.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: OwT2gGkVM1lozah7Y13lAZTeQh.xS4sDCWfTbdNWBBPkAa3
	OuWopYJppnseyoIHdv6wY1z9rYfDrnQ4dVHP9_Qd6i4ZiAGkd2bRRvbPN7ss
	mne0os99VIYjyNb0kxAtBq4SGjFcUcSam6xJVpzddDzPeVzw2v3Yd.N0oqle
	SE8ge5jcxZgNY8CxojOexBjwWPL3DdqSnCe_H4a5SHQnsd2VWEqppjCmipK6
	DD20usCgQ3vz.mkRE2Lqcy.csBRsW_4kJDwuCnMEkqND_AtKsJg_mzG_6rzd
	PcZTuElfcgB_OiJ9ij0aVU9OJ5votlneB._FcPVB260XEyILE69fUzoNPV4r
	MHxqOGUJO5D7ZVAH6lDyvot5dQpNINRHrWSX4bydWeBrinCrzsxULYeowY9r
	TEQAKoGQXel.i6hr71w28Eir87ocSnTXEjzECO8Eq0Uppvxo4CNbqPb8Rv0Q
	umbfzGgymVGEM7MEgKmKaWbROyH1rFnpLYEpzSGmNb3ZEJPa4Do6.yffY
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [192.168.2.63] (kpa_info@213.193.97.58 with plain)
	by smtp113.mail.ird.yahoo.com with SMTP; 12 Apr 2012 05:05:00 -0700 PDT
Message-ID: <4F86C4EB.4010207@yahoo.fr>
Date: Thu, 12 Apr 2012 14:04:59 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.28) Gecko/20120313 Lightning/1.0b2 Thunderbird/3.1.20
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4F845371.9040903@yahoo.fr> <1704553.ee0Gysgyqc@helios>
	<4F853846.60409@yahoo.fr> <1389871.AkcVuV051j@helios>
In-Reply-To: <1389871.AkcVuV051j@helios>
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
X-List-Received-Date: Thu, 12 Apr 2012 12:05:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/11/2012 11:08 AM, Paul Eggleton wrote:
> On Wednesday 11 April 2012 09:52:38 Patrick wrote:
>> Thanks again for your answer. I have rebuild qt with DirectFB using
>> qt4-embedded. I could start a Qt application on my board using QWS (test
>> -qws). Is that right to start DirectFB or should I use another way ?
>> I just would like to be sure that DirectFB is used and not simply the
>> Linux framebuffer.
>
> At this point I'd have to refer you to the Qt documentation, particularly the
> first link:
>
> http://qt-project.org/doc/qt-4.8/qt-embedded-displaymanagement.html
> http://qt-project.org/doc/qt-4.8/qt-embeddedlinux-directfb.html
>
> Cheers,
> Paul
>

One more question about Qt with poky;

Qt embedded work now on my target and I could easily compile some 
application based on it using bitbake.

I would like now to add the possibility to compile Qt based application 
from the "SDK". I have added the different -dev version of Qt to the 
"SDK" but qmake is missing. How could I add a working "cross" version of 
qmake ?

Thanks in advance for your help

Patrick

