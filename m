Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id ADC734C805A8
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 10:00:17 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 3A736166018C; Fri, 18 Mar 2011 09:00:11 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id BDB7716603E9;
	Fri, 18 Mar 2011 08:59:46 -0600 (MDT)
Message-ID: <4D837362.6050405@mlbassoc.com>
Date: Fri, 18 Mar 2011 08:59:46 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Gerard van den Bosch <gerard@de-haardt.com>
References: <4D83700C.1000402@de-haardt.com>
In-Reply-To: <4D83700C.1000402@de-haardt.com>
Cc: poky@yoctoproject.org
Subject: Re: problem with serial interface laverne
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
X-List-Received-Date: Fri, 18 Mar 2011 15:00:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/18/2011 08:45 AM, Gerard van den Bosch wrote:
> Hello,
>
> I have changed from green to laverne release.
> But now I have a problem with the serial interface.
> The booting process goes good but when asked for the login name I can enter root and press enter.
> Then I am presented with the shell but can't type anything anymore, only some enters seem to get through.
> Is there changed anything concerning the serial interface and or settings for this in the laverne release?
>
> I have kept my machine settings and kernel the same.

Do you have X running?

Note: updating to a newer release might be prudent.  Lucerne is now pretty old...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

