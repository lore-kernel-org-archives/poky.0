Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E796AE00C74; Fri,  1 Jun 2018 04:18:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DB72E007D4
	for <poky@yoctoproject.org>; Fri,  1 Jun 2018 04:18:54 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs34.server.lan (via HTTP); Fri, 1 Jun 2018 13:18:47 +0200
MIME-Version: 1.0
Message-ID: <trinity-c9ee44a9-0324-42fe-8678-cf1e7ffaf238-1527851927233@3c-app-gmx-bs34>
From: "Arno Steffens" <star@gmx.li>
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>
Date: Fri, 1 Jun 2018 13:18:47 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <1527675512.16911.130.camel@linuxfoundation.org>
References: <trinity-f65d3236-5771-46ac-b0bf-c6d5bbacdd40-1527590486561@3c-app-gmx-bs25>
	<54cf3e3f-42e8-bbb9-ff6a-6ab76ff4e497@windriver.com>
	<trinity-a02404fb-0f4a-4265-9053-ce0b93aa8797-1527674498967@3c-app-gmx-bs52>
	<1527675512.16911.130.camel@linuxfoundation.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:YfFKr+GFmK3kcF77nsYJSPS/F1A/t+zJqxVqhTIDU8h
	TW4efphYIqLfkUOkMmC354+USSa9N/Mr7nEM70eoVzPHKm3cfI
	e8kXsnIlUGdeNtF4CJg0lyvqg4xCmTitEvvlzi5dyIbdE8S1Tg
	FNb7SGSYeuYAzGhh4eZxe5QqKVobZI9cWJoQI7r6k49h/M3k3O
	5TLMSXFgG1J2lTsiiBRmZx/g1pIvGA7QPYJt2q8mw90ZcopmZm
	1m+RJWVq9ln6e872OF9jWcUgTEzRsFpfbqPmyaD9IToUHcD8nw IVi3m8=
X-UI-Out-Filterresults: notjunk:1;V01:K0:XATemux15gw=:A4u60bF3rmpT9UwG7P021O
	UdM+y3jPJwoQj2HzzzZ+QiD40FgQnuMs+/DSlQLjqq4IBX2Aph9Jk1952TVKh5iQUI1UQJLpn
	7+5cEkIqN9oqrru70FfJngPNG+sZNo7wkD8yCGEDBCm+p7RBHkwA9fkBAYO4cLGPVG2uVV0mY
	k7/pBd8x6/g6QNo7DYkeqmVHrw+eD654VydbSxKXSuWDm+utMWLafGYuQ7oyJw/vCd2bZMqbo
	20zf2V57izWXiO8VRGo4jILZ70u6EYLN7lzqa5nlqpqFYDhdYtfizgpwwK3UHarUAbK2DOntd
	4bU13MkwbfBxcHxzLOEH7sH6SnWvNJJQ2qNWylR6Q808CNFOaOekA/EzwGe8RszMs7m2BUwfx
	ka1xdQv+P80Daq1gAt4xBpG42eZqr42D5tZ4DB52mywctQrI5gtndZeu647ixQ+RWJvNXymKc
	IYqd8XzyDFsWOOC/vvXJF4PZPdsbHECFQplhuQc18Q3CjIsVEJTE
Cc: "pokyyoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Give others users than "root" access to GPIO (or commands)
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
X-List-Received-Date: Fri, 01 Jun 2018 11:18:56 -0000
Content-Type: text/plain; charset=UTF-8



> Gesendet: Mittwoch, 30. Mai 2018 um 12:18 Uhr
> Von: "Richard Purdie" <richard.purdie@linuxfoundation.org>
> An: "Arno Steffens" <star@gmx.li>, ChenQi <Qi.Chen@windriver.com>
> Cc: "pokyyoctoproject.org" <poky@yoctoproject.org>
> Betreff: Re: [poky] Give others users than "root" access to GPIO (or commands)
>
> On Wed, 2018-05-30 at 12:01 +0200, Arno Steffens wrote:
> > Thanks Chen,
> > sounds easy but I get to my surprise a problem with a shared library
> > (cannot open shared object file: No such file or directory) -
> > althought the LD_LIBRARY_PATH is set (/opt/lib) and the file
> > available?
> 
> setuid will clear LD_LIBRARY_PATH and other environmental variables for
> security reasons. Try adding an RPATH to the binary directly using
> chrpath or patchelf?
> 
> Cheers,
> 
> Richard

In case others will be search for that too:

I tried both ways. For solution I (setuid) I could solve the missing lib error with:
add via glibc_%.bbappend:
do_install_append () {
  echo "/opt/lib" >> ${D}${sysconfdir}/ld.so.conf 
}
(although compiler option -rpath should work too).

With udev rules I created:
KERNEL=="i2c-[0-7]", MODE="0666"
KERNEL=="spi*", MODE="0666"
KERNEL=="gpiochip0", MODE="0666", PROGRAM="/bin/sh -c 'chmod -R 0777 /sys/class/gpio'"

That works find for i2c and spi, but not for GPIO.
After exporting the gpio, the direction and value keep just writeable for the owner.
So even adding GPIO to a group will now help. The only option I found was to execute a longer script exporting all pins and than change permissions. Not really sophisticated.

Thanks
Arno


