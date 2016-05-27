Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73F19E00E3A; Fri, 27 May 2016 06:34:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02F15E00D04
	for <poky@yoctoproject.org>; Fri, 27 May 2016 06:34:39 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs01.server.lan (via HTTP);
	Fri, 27 May 2016 15:34:38 +0200
MIME-Version: 1.0
Message-ID: <trinity-b58460ba-fdde-4100-9f24-d517f3e44645-1464356078063@3capp-gmx-bs01>
From: star@gmx.li
To: "Andrei Gherzan" <andrei@gherzan.ro>
Date: Fri, 27 May 2016 15:34:38 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20160527082625.GP9848@resin.home>
References: <trinity-c97069ff-4043-4992-a7b5-01692cfa5eac-1464326605415@3capp-gmx-bs48>,
	<20160527082625.GP9848@resin.home>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K0:LaUnW2acqEpxHtYLuGo4vYhpFDE6yNnDnTnq+8OmQz2
	9vRNc3jnzXXedGpGFGxnVuV/7l5qOtfZrxLpTYjbyNGr7a/G6I
	LbKRPwneYzJaT70pG2mdJ4n3WpjsTphsONhtkzmcW5F08ZQ5hh
	S0cv96c269Qw2D4MJ2AwckPln7PaLFIilmQHK0SN803LwEj1LQ
	FUJL0a1DiJdlFqa6wCJPYg5ceWqbDWHq0LPJsnPnW0k5puzhuQ
	HOZU4skSmdcjlDi5FHnRLUUn/FPr7alTM/fJGsv/GpbrylLfDB nvNNvg=
X-UI-Out-Filterresults: notjunk:1;V01:K0:mb8HWggrt/U=:5nATb+zxob5BdgdUS2Ucfj
	s4zz0pfV8ifh/Cw0yMjA924/oiFTxdN5Xeq6y80zrcrkKPVrTEFcWZYfP9ElH7x5lqTRu+wum
	CNJ2eCkQvY4r11Xr0QC+HcZy87k+mMESWTwiOsk7nV6jyCSkx1iq/1b+Maw8KKT9phxe2kgZt
	2o42DZLh9BhtDmE9KnB0SxIDNpJKxlCMXNdP5xwYVRMWa1cbC/p8zOjbnXGvALJ2aptZuLhRU
	vP2teV2Cq0bsmp8/gxSMwK6h0bsMaBQWQu0fweV28RedD2uDpn+Hhw50ZJcY2CjDs+LEs56cm
	sCVVrRuioAn5EJvKiqvZgsA28jQEQAfNcofiDPpHSMgWQn7zRrx/9EC+Gi5580mXG86doTvjH
	BQ/2p8qFGsaOAi1ik82U6/41aH8ZELjBmPy2FuDaW8Ote+mQJv2I7Ftlz/ymV2LNXPAUwx4pl
	qpNpq6zCeg==
Cc: poky@yoctoproject.org
Subject: Re: lib-sdl issue with qemu
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
X-List-Received-Date: Fri, 27 May 2016 13:34:44 -0000
Content-Type: text/plain; charset=UTF-8



> Gesendet: Freitag, 27. Mai 2016 um 10:26 Uhr
> Von: "Andrei Gherzan" <andrei@gherzan.ro>
> An: star@gmx.li
> Cc: poky@yoctoproject.org
> Betreff: Re: [poky] [POKY] lib-sdl issue with qemu
>
> On Fri, May 27, 2016 at 07:23:25AM +0200, star@gmx.li wrote:
> > Tried a "bitbake core-image-minimal" with included xilinx meta-layer and machine "qemuzynq".
> > I get the above mentioned error on an Ubuntu 1604, but with already installed libsdl.
> >
> > See below:
> >
> > ...
> > | ERROR: User requested feature sdl
> > |        configure was not able to find it.
> > |        Install SDL devel
> > |
> > | WARNING: exit code 1 from a shell command.
> > | ERROR: Function failed: do_configure (log file is located at /home/user/yocto_qemu/tmp/work/x86_64-linux/qemu-native/2.4.0-r1/temp/log.do_configure.3236)
> > ERROR: Task 72 (virtual:native:/home/user/yocto/poky/meta/recipes-devtools/qemu/qemu_2.4.0.bb, do_configure) failed with exit code '1'
> >
> >
> > sudo apt-get install libsdl1.2-dev
> > ...
> > libsdl1.2-dev is already the newest version (1.2.15+dfsg1-3).
> > 0 upgraded, 0 newly installed, 0 to remove and 95 not upgraded.
> >
> 
> I hit this issue last week too. What is your host operating system?
> 
> --
> Andrei Gherzan
> 

As mentioned: host is an Ubuntu 1604, more exactly the mate edition running in VBOX on Win7.

Arno

