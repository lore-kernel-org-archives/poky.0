Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 188C9E00BAF; Wed, 30 May 2018 03:36:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77F2CE00A75
	for <poky@yoctoproject.org>; Wed, 30 May 2018 03:36:06 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs52.server.lan (via HTTP); Wed, 30 May 2018 12:36:01 +0200
MIME-Version: 1.0
Message-ID: <trinity-73b027c2-91c3-4a99-8e50-bce065e4fdbc-1527676561060@3c-app-gmx-bs52>
From: star@gmx.li
To: "Arno Steffens" <star@gmx.li>
Date: Wed, 30 May 2018 12:36:01 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <trinity-a02404fb-0f4a-4265-9053-ce0b93aa8797-1527674498967@3c-app-gmx-bs52>
References: <trinity-f65d3236-5771-46ac-b0bf-c6d5bbacdd40-1527590486561@3c-app-gmx-bs25>
	<54cf3e3f-42e8-bbb9-ff6a-6ab76ff4e497@windriver.com>
	<trinity-a02404fb-0f4a-4265-9053-ce0b93aa8797-1527674498967@3c-app-gmx-bs52>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:ArpXzFgQvv3ZnFz99Ku7iQ2YNrpTEZyQbJXDBIMRJOC
	v+WOBD8/LTreRSPgljC0lTyMEBzD+g8/Ds096/Uvqc9VzNbFm/
	ek1zdOHdriaZ/RPA/J8C7mmUwLyCsorVWFw8Zy/gRS4eziUVL4
	6gj+nUnnKjWlWyvxOJEcXKpelTOZSJFkyx4W1EK0H64gF6y/Eh
	+aCnNMVP1L6OFu/B3QcGa3ZEM1ckOegB6f/Ua0znv6Hw0sqHIb
	PMxum1477D8NM9GkF27GHP2rq5iF6b414s6hO1/NZgQSrRsi2C EyyzTk=
X-UI-Out-Filterresults: notjunk:1;V01:K0:VL9kPYbDUBA=:vKKuFBPAXz1Ekb6DFCcyCy
	BZTp3E35KZBl1xLjEg7E+/8Tz0vxjbCWUyYOVfdFeShqlLkhpQJb+b2ajRdSaLw2QYJ5iKoB2
	Q5wUnm3l0GrY/hS36sSxtc+DikQjcUnm+2wsFnpWJzjMtcKTs49Q/k+mWdRh4eOisU0e8i7wj
	QrQXAItEE3wOw77H63F605f7ZW+J2Qi/T9iZHJky9n+6jLhF9XjmtMPP9vcsk6+Z/nr8gP0HD
	RIOXpnXB7XcgLkr7Ms2OOPFXp8tlapydYnDn66c70wivrn0wl/TsRIcinUxl8s2dI3b+yNQOk
	xnsMoD+Tlf+F5ruwhXazK9UFBuBLrRDrPXVElRWk/fu+FCPe8pEAeEp94MJoC2SKSUc+FHBb9
	dtxEUvdSoSs8+ZpU+M9w1qaQVCSMrzD1fucMhDqCsacxCFD5LR8f1k6d9q0lAaiOiYXInBMvi
	kZFEr1VjhouQJAUWkMZ/xqsJuM43QLdI6fDR2GIyiILUahpCujPu
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
X-List-Received-Date: Wed, 30 May 2018 10:36:08 -0000
Content-Type: text/plain; charset=UTF-8

> Gesendet: Mittwoch, 30. Mai 2018 um 12:01 Uhr
> Von: "Arno Steffens" <star@gmx.li>
> An: ChenQi <Qi.Chen@windriver.com>
> Cc: "pokyyoctoproject.org" <poky@yoctoproject.org>
> Betreff: Re: [poky] Give others users than "root" access to GPIO (or commands)
>
> 
> 
> > Gesendet: Mittwoch, 30. Mai 2018 um 08:03 Uhr
> > Von: ChenQi <Qi.Chen@windriver.com>
> > An: "Arno Steffens" <star@gmx.li>, "pokyyoctoproject.org" <poky@yoctoproject.org>
> > Betreff: Re: [poky] Give others users than "root" access to GPIO (or commands)
> >
> > On 05/29/2018 06:41 PM, Arno Steffens wrote:
> > > I have to add a user other than root to start a program which operates with i2c, spi, gpio.
> > > For this I added an init-script /etc/rc5.d to make it /dev/* r/w for "others".
> > > That works for i2c and spi but not for GPIO. As most of the files the user has to access will only created after the exporting the GPIOs (more or less doing echo xxx > /sys/class/gpio/export).
> > > But this new created /sys/class/gpio/xxx is not writable by user.
> > >
> > > Maybe I am doing it completely wrong, but how can I achieve this to become possible?
> > > I checked the mega-manual, but there is not much mentioned about groups (27.36. extrausers.bbclass).
> > > Best regards
> > > Arno
> > >
> > > Maybe I also have to give this user the permission to reboot, which is right now only possible for root
> > 
> > 
> > Not sure about your environment. But if you want normal user to do some 
> > operation requiring root privilege, consider using a SETUID program.
> > 
> > 1) Create a progrem to do the actual work that require root privilege.
> > 2)  If your only want your program to be run by some specific user, do 
> > the user checking in the program.
> > 3) Install your program to be SETUID. `chmod +s xxx'
> > 
> > You can check dbus-daemon-launch-helper in dbus for a reference.
> > 
> > Best Regards,
> > Chen Qi
> 
> Thanks Chen,
> sounds easy but I get to my surprise a problem with a shared library (cannot open shared object file: No such file or directory) - althought the LD_LIBRARY_PATH is set (/opt/lib) and the file available?
> Best regards
> Arno
> 

Ok, got it.
Althoug ldd xxx shows my lib I couldn't use it. Adding this path /opt/lib to ld.so.conf solved this.

