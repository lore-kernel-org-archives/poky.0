Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81888E00CE6; Tue,  5 Mar 2019 09:45:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97D91E0090C
	for <poky@yoctoproject.org>; Tue,  5 Mar 2019 09:45:31 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44DPS85Pjtz4T;
	Tue,  5 Mar 2019 18:45:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1551807929;
	bh=aUPRyy6KBC6ETz3V85Yr4XjtOS5u1oXi0riLnJKpMjU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=crcTc+xFjJCU4tTb+u9GUJJfeP3EGMtJEFBwKpS/+Mm9oiHMQaeIDcsAPglqD1iui
	/WBP5/omAdARxPS7P1n2W2vCZ6lYpWwmt41fXro8FrSE0JDdapa/GA5v62z1lWCU93
	JTFmjvEXFVRi21/aDCZ6VYlWyH24phGewwblVErYw2OXr2sLu2tZGBOrVDcGt0ggDw
	7uEiDrKgWzkcIZiFOfbS6p6hyY3aQTRk7HDGfOVcVmpSuO5SfYa1/FXE/lzSA7bbbx
	bF5GfUd+kUqzITt6pZeVkIx+iaOcjHMBGnw/wuzfGDxx0OsLAby2hRyjZbb1iqgLja
	fyM8ktx8OJkPeoJ2Ex14qTGZyuAz+SQhI2+vPkJhHJZIwxqXOYFDqyhDwDwLmFApqc
	7Af1dorVTGJdOj559/KYdzKs4jxxSdWE4dcF6NPyZoXVHepybCxVpybbyN3hNBT2Oj
	sHK86Kyfq0wZb8QX1yKM7mbGUEVP3u9QRkcKsVOlnk/kZMrsAHYUdK90mJ+i5fFi9H
	Oo9PEcKOsJ5sp55+dE3KQ6IN8B3Dh+LxpTJ87BQHeHLAcCvpR5h7zWuK5/sPMpJRMz
	REoMLUHVYaS2XQSaTv2zoco0sKa5o0zHDVuHdJ9wHx1nu7yKyfSXlRmC0NLYmCIQGu
	h2Q5pN9QzlPCfcAYMC1gFr18=
Date: Tue, 5 Mar 2019 19:45:26 +0200
From: Adrian Bunk <bunk@stusta.de>
To: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Message-ID: <20190305174526.GA1486@localhost>
References: <D67743D4-7A14-4AB5-AAC4-CC5E4999EB6D@gmail.com>
	<20190304185937.GC1170@localhost>
	<9DD11444-CE07-4C32-BA50-E20C733A7AE4@gmail.com>
	<6BA75DB5-679A-4D21-A3E9-5482522AD410@gmail.com>
MIME-Version: 1.0
In-Reply-To: <6BA75DB5-679A-4D21-A3E9-5482522AD410@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: paul.eggleton@linux.intel.com, Poky Project <poky@yoctoproject.org>
Subject: Re: /usr/include/libnl3 or /usr/include
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
X-List-Received-Date: Tue, 05 Mar 2019 17:45:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue, Mar 05, 2019 at 10:38:06AM -0500, Jean-Francois Dagenais wrote:
>...
> I still don't get why wpa-supplicant_%.bb works without this.

http://w1.fi/cgit/hostap/tree/src/drivers/drivers.mak#n183

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


