Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC4FCE00C97; Mon, 30 May 2016 01:49:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A768E00C75
	for <poky@yoctoproject.org>; Mon, 30 May 2016 01:49:19 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs79.server.lan (via HTTP);
	Mon, 30 May 2016 10:49:14 +0200
MIME-Version: 1.0
Message-ID: <trinity-4d59831f-223e-4a32-badc-e2e4566521f2-1464598154576@3capp-gmx-bs79>
From: Arno <star@gmx.li>
To: "Alexander Kanavin" <alexander.kanavin@linux.intel.com>
Date: Mon, 30 May 2016 10:49:14 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <574852BD.3050200@linux.intel.com>
References: <trinity-200ddab3-0fb2-41ea-8c38-37f5f1195f5e-1464356891340@3capp-gmx-bs01>,
	<574852BD.3050200@linux.intel.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K0:dTPzpnM4QJAQg5+eKRS1iW2GV21rG2CW1G0fd4t+U0O
	1YHpLmIV9ml8/oZ61IC5wuDpwcs0aMirkF35In0Vm5WQuQDL5S
	3B+Sj2R6cOpHzQzsIth12iYyJDalmWUFPjvdXDPQNU8V8fbsfo
	NrkN4HJTbtH/kwjArgEDZkbEa7DKFO27AGm0eWuL6kC8DAuABk
	cAzBrsYRk/IrZS9QK0PYrwVbXjLBG6JKyVbg7UC+1gG8fXIEGk
	bY/OF32Zwv+rwJT9Zdiv8d7QZFg2L1k8Lu70eXMuNHlyFYVoyc U326Cg=
X-UI-Out-Filterresults: notjunk:1;V01:K0:G41VeUuZr24=:TgDFYdI1dgqSneSWxgZR28
	1R8+yh9Dw3iSsM5F96rILdjeMcnLPFdoJd8iF5ZLx3wXYPecS7wZKcPXM343Sk/oefLP9brdB
	ge2C5T14mm9OBS35uoXrx2YEW0Od3C/DJpPfLt5Lz9Vvx7emaqkzpEWQKM3tw3Ilk+DLikxt5
	LA3PxPm82fb/kzdeEeBMzNF9Zg+V/g9dZ9bhKauba6L6Az+vz0Rdf4jn1KeOMwsvZYoRfSwmV
	b9Nq0wTsFyTNxZLQuGZR0igYTjn0ko+rBEh5JkQDsEqIF+jhVnE0I161BSryj8Mif2+v6SQZH
	xmMGd1vyrNuM/TMem1GOUvLieb5Pm0epkZNX17whpSl4Wu9xT11Gknq5XKDL8U2TNYPqDWMcj
	iCZcSim8UYFk5w8EqGsO2vmSxU8cfDMT6Mugph8hebRnOyLsa4H1UmeeBPl7qQaajgvl+OzUH
	9RpgXv0UTQ==
Cc: poky@yoctoproject.org
Subject: Re: Workaround for fetching files
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
X-List-Received-Date: Mon, 30 May 2016 08:49:23 -0000
Content-Type: text/plain; charset=UTF-8



> Gesendet: Freitag, 27. Mai 2016 um 15:59 Uhr
> Von: "Alexander Kanavin" <alexander.kanavin@linux.intel.com>
> An: poky@yoctoproject.org
> Betreff: Re: [poky] Workaround for fetching files
>
> On 05/27/2016 04:48 PM, Arno wrote:
> > My question: Can I download some files that gives errors fetching during the build process and a new bitbake will recognise it? Probably it is not so simple, due to all this fancy stuff with timestamps .....
> > But - is there a way?
> >
> > I am in a company network, due to strict rules I am often faced with problems fetching file.
> > So I am not able to use git protocol, most http(s) is the workaround.
> >
> > Sometimes I can access files by browser (sources.openembedded.org/git2_git.yoctoproject.org.yocto-kernel-tools.git.tar.gz)
> > but the yocto build process can't and gives errors.
> 
> Did you study this?
> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
> 
> Alex
> 

Its not the proxy, we don't have this. But we have some kind of firewall which seems to work also for https as man in the middle. With our company certificates installed in browser it works.

If I do manually a git (via https) with  "export GIT_SSL_NO_VERIFY=1" this helps, but even if I do this before calling bitbake it will not help. Can this set global for the project?

Doesn't the download files stored in a common folder, but there is also some hash, which I can't create manually.

Regards
Arno

