Return-Path: <kpa_info@yahoo.fr>
Received: from nm13.bullet.mail.ird.yahoo.com (nm13.bullet.mail.ird.yahoo.com
	[77.238.189.66])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 5F244E013A8
	for <poky@yoctoproject.org>; Wed, 11 Apr 2012 00:52:41 -0700 (PDT)
Received: from [77.238.189.54] by nm13.bullet.mail.ird.yahoo.com with NNFMP;
	11 Apr 2012 07:52:40 -0000
Received: from [217.146.189.71] by tm7.bullet.mail.ird.yahoo.com with NNFMP;
	11 Apr 2012 07:52:39 -0000
Received: from [127.0.0.1] by smtp151.mail.ird.yahoo.com with NNFMP;
	11 Apr 2012 07:52:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1334130759; bh=T9JCrnFn5vMFJEG5l7xUScluwFYc+5qqhIursJqlrdA=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=3oSEpcLHcinkNZNbSVlsywr8EFd+pxz+K1e+/BtBfwxA48PFuwSFltxj9lvwgNSriXeb32bnEYlk8CJzPJp0H+/5LgTbv80EkyGpdheny13Sb3wzvNqy3FBeSj1dqPTkgKEu1AT3OE4/A5mE2GBYG6Fwm8r7NoTzd0tTUMGnZH4=
X-Yahoo-Newman-Id: 981166.26029.bm@smtp151.mail.ird.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: 9JQ26NYVM1mOHgAkxc.G8HVWpNuG8hyVjzf17rkM.0p6xF1
	lWJeG9xx4MyD_jCvDayUXCGmXNMniT_B.EMBuf3XsOwburLSRIehqZP9BbhO
	jrfWWliuvNpLz7SR0LjpaItx3d08G6kGm51tm6sqAMWovx5uxYlkpIXtp4y0
	sIeyjx7lhBivUJMdLeRmc18KuKieJnfcoA_yB43bd5B1ma88u3CFUT.ktmpb
	Vv2tGYhXJRtbsBopSwM_T_8ijVWjGUzoy4wj.Bwx9BAIaCS6nSmrOBdH9HJg
	Rl_MFmVlCbQzF4DNwvR8abAqM53z5a6PIn4a6FTDSFce6nl4j27pLTxI.rMQ
	TwL_5DgTzxc3YAyi_dXSvuj.g_mata5hltEjEfYDvhre8w7.pOS2fzsOs9A- -
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [192.168.2.63] (kpa_info@213.193.97.58 with plain)
	by smtp151.mail.ird.yahoo.com with SMTP; 11 Apr 2012 00:52:39 -0700 PDT
Message-ID: <4F853846.60409@yahoo.fr>
Date: Wed, 11 Apr 2012 09:52:38 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.28) Gecko/20120313 Lightning/1.0b2 Thunderbird/3.1.20
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4F845371.9040903@yahoo.fr> <6449891.F5szdKCE2k@helios>
	<4F845816.4090701@yahoo.fr> <1704553.ee0Gysgyqc@helios>
In-Reply-To: <1704553.ee0Gysgyqc@helios>
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
X-List-Received-Date: Wed, 11 Apr 2012 07:52:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/10/2012 06:05 PM, Paul Eggleton wrote:
> On Tuesday 10 April 2012 17:56:06 Patrick wrote:
>> I was wondering if a "meta" package like qt4-x11-free was available with
>> a smaller subset, including the most used package of Qt.
>
> Well, "most used" is somewhat subjective - it depends on what you're doing. We
> don't have any smaller package group for Qt - perhaps we should look at adding
> some additional package groupings in future though.
>
>> On aditional question; is it possible to build Qt with directFB instead
>> X11 ? If yes how should I do ?
>
> Yes, to do this, bitbake qt4-embedded instead of qt4-x11-free. Your
> application recipes (if you have any) should "inherit qt4e" rather than
> "inherit qt4x11" in this case, as the library names are different.
>
> Cheers,
> Paul
>

Thanks again for your answer. I have rebuild qt with DirectFB using 
qt4-embedded. I could start a Qt application on my board using QWS (test 
-qws). Is that right to start DirectFB or should I use another way ?
I just would like to be sure that DirectFB is used and not simply the 
Linux framebuffer.

Thanks for your help

Patrick

