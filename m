Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4C34E00710; Tue,  2 May 2017 02:59:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00253E00546
	for <poky@yoctoproject.org>; Tue,  2 May 2017 02:59:05 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs49.server.lan (via HTTP);
	Tue, 2 May 2017 11:59:03 +0200
MIME-Version: 1.0
Message-ID: <trinity-01c771c0-cc40-4c0c-8ab5-c118715e11ab-1493719143739@3capp-gmx-bs49>
From: "Arno Steffens" <star@gmx.li>
To: "Anders Darander" <anders@chargestorm.se>
Date: Tue, 2 May 2017 11:59:03 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20170428100611.vbxxcuplrjoovei7@ad.chargestorm.se>
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
	<29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
	<trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>
	<d69a7c4a-03e0-7447-c956-231244fda704@linux.intel.com>
	<trinity-0305ba43-e510-46b7-a11d-a31e69a15283-1493211120829@3capp-gmx-bs77>
	<26682ce6-84e6-8477-4323-ab0979afe89d@linux.intel.com>
	<trinity-847348e3-eb40-41b0-8cf4-a93cdd046688-1493364663957@3capp-gmx-bs03>,
	<20170428100611.vbxxcuplrjoovei7@ad.chargestorm.se>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:gYtuZM0ecswyn8slX/34GrQxoHEM+Y9R0g/lXaP1tDX
	PXm0yR57jJeiEyBweq5FYQtR0iFMquVXORzP+0C7MscjcDXreF
	HZsaK7Pg4Vnlm6Lflzg73X/VECNbbeDkH5ONOQRt1xRp7oBNae
	JTSwAG0qrNFE10rFSOfCm/5Dw0bj44RUmopMvVAopTPO5FLbNG
	ZrycadD5HTdNtWiF/hxpwPYNajDqx5LgD6KFZuIv3ITtbQSnAq
	ZTVn9IUNHUed0Gf1SBOI0VzZq1sbVKFXH/+PzOaWEKBGzTL7FI 87+yXU=
X-UI-Out-Filterresults: notjunk:1;V01:K0:rvWxm9IZAP4=:ca3ChtocrtEtv0yOWcVS/2
	pZAeSte6awncBw9iMDBnjarZ2GWNqDzVJxVhL2MZ2yC7Io6atI4yzSbsYAz0+S2zACncYqE3F
	61Z+tq6K5nQnfKVjsuqEstlXgEyt23S6xiiSCHdCBdCdY5X+b2MJytFJMOqS0QwG+rBZg9BEs
	LpmCxZmb1qnIkN3DM8VTr0A4iBlyt/AtGikvyVDG/71TCyRRlb7LpmfnHmEmFxa0kemzrB6kI
	GWMlSmf+vjln+hQ3DhUuO9bQOib+0oULC1dSiDphU8A7abEtFkpn6ozK21xA3KdZLmnwVXo2m
	3OvmWwe4BegamqTPuGgaAEDQNgjLeG13Yi2vRz6EsMPREJH6tYeyCxF3c6NVrTpqkk1hhK4VI
	gXrrL9TtEuN6YWu3ftal3o8VScZr+ISF2iCxA5YlnrTfzlBhiKL0ez84AkBkrfU8HhHql4Q9O
	HJc29C9RIg==
Cc: poky@yoctoproject.org
Subject: Re: gnupg strip down
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
X-List-Received-Date: Tue, 02 May 2017 09:59:08 -0000
Content-Type: text/plain; charset=UTF-8



> Gesendet: Freitag, 28. April 2017 um 12:06 Uhr
> Von: "Anders Darander" <anders@chargestorm.se>
> An: poky@yoctoproject.org
> Betreff: Re: [poky] gnupg strip down
>
> Hi,
> 
> * Arno Steffens <star@gmx.li> [170428 09:35]:
> 
> > I did as advised, created a bbappend for gnupg, like that:
> 
> > do_install_append() {
> >	rm ${D}${bindir}/gpgv
> >	rm ${D}${bindir}/gpgsm
> >	rm ${D}${bindir}/gpg-connect-agent
> >	rm ${D}${bindir}/dirmngr-client
> >	rm ${D}${bindir}/gpgscm
> >	rm ${D}${bindir}/watchgnupg
> >	rm ${D}${bindir}/gpgparsemail
> >	rm ${D}${bindir}/gpgconf
> >	rm ${D}${bindir}/dirmngr
> >	rm ${D}${bindir}/gpgtar
> >	rm ${D}${bindir}/gpgv2
> >	rm ${D}${bindir}/gpg-agent
> >	rm ${D}${bindir}/kbxutil
> >	rm ${D}/usr/sbin/*
> >	rmdir ${D}/usr/sbin
> >	rm ${D}/usr/share/gnupg/help*
> >	rm ${D}/usr/libexec/gpg-*
> >	rm ${D}/usr/libexec/scdaemon
> >	rmdir ${D}/usr/libexec
> > }
> 
> > I am aware that this is a custom embedded solution, where just the ability to verify signed files is needed.
> 
> Have you looked at gpgv? It's already packages separately and supports
> verification of signed files. It might very well fulfill all your
> requirements.
> 
> Cheers,
> Anders
> 
> -- 
> Anders Darander, Senior System Architect
> ChargeStorm AB / eStorm AB
> -- 

Sure, even that might be enough. But as far as I can see this is not separated.
As for example bitbake gpgv returns:
 gnupg RPROVIDES gpgv

Is a recipe for just this available in some other layer? I searched, but did not found.
Thanks
Arno 

