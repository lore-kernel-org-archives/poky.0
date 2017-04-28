Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DEC3E00AA7; Fri, 28 Apr 2017 00:31:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59B94E00AF8
	for <poky@yoctoproject.org>; Fri, 28 Apr 2017 00:31:08 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs03.server.lan (via HTTP);
	Fri, 28 Apr 2017 09:31:03 +0200
MIME-Version: 1.0
Message-ID: <trinity-847348e3-eb40-41b0-8cf4-a93cdd046688-1493364663957@3capp-gmx-bs03>
From: "Arno Steffens" <star@gmx.li>
To: "Alexander Kanavin" <alexander.kanavin@linux.intel.com>
Date: Fri, 28 Apr 2017 09:31:03 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <26682ce6-84e6-8477-4323-ab0979afe89d@linux.intel.com>
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
	<29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
	<trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>
	<d69a7c4a-03e0-7447-c956-231244fda704@linux.intel.com>
	<trinity-0305ba43-e510-46b7-a11d-a31e69a15283-1493211120829@3capp-gmx-bs77>,
	<26682ce6-84e6-8477-4323-ab0979afe89d@linux.intel.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:mbdDmvEsqm6RbYhB/O2QPKahLpu02Z8m0HJdR/Ewuy8
	oZtcRouPpjowTYY3ithxzD45C9Itf0mYCAuR9N4+KupCnNGQXU
	m6NdTu8NSCgu0ciNB0eaPiZOnIEVc+nyq/83VKV/UW02n/NRXa
	wfmkHwnyaWo+p/KCDMFKyna3XRZF2d1Rf+il/pjda1/fmUHsnc
	OnnRiFZKmP5Wk46zPh0XgvvrBWtGF3FBwjIO0pxVzZmfNZSsfM
	SOla0V03yDdr+9c2T2NVvg+dkA75K38uGQBpfvMN0A0yHguoYP h3O1kQ=
X-UI-Out-Filterresults: notjunk:1;V01:K0:FIjVoF0kjaY=:Dh9WZ2YDvQ2fY9XCgXywRP
	HAjLGlSt7onrZOy4B0dCJMf2CpOmz6A4wFIJSv2gsUvEqmCIIg/cYJnG7pGkKLZYgxGZ+jYtm
	FHrUSE2qmwJ0ttGBkm8QZfKuFFMTpBy/nrdd4FTOq8L29HOXnP2C0nYysAdUQ2moQMm+ZeTie
	hlTTRG2dZZcek4aHN72qjjeDwN+ilaRhH2neZXxAJO7WKYPUABhbQxfJvhQkzUJBZqipVSt7T
	25phXUzcUJ0BJjZ+o8h6ZHj6n3nprZDjk8IEv+iE8O8UhsJn2S/fC6bOUEubE8MhnM25FiYIL
	iRdWycYEG3hoyZeLd2XvZPdlQnTEncfTVGhvaoEktBr6htGMcf0IdMu0CXDxb8BhUFHY/SKTU
	kbmkrz8HKXkMR2nehNlHMFvwdYqBexX1zYzApFJ8Obk8SS4AeG4Avv7gnGRkR8+FY5yfGYA5O
	GNa28hy5tw==
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
X-List-Received-Date: Fri, 28 Apr 2017 07:31:23 -0000
Content-Type: text/plain; charset=UTF-8



> Gesendet: Mittwoch, 26. April 2017 um 15:18 Uhr
> Von: "Alexander Kanavin" <alexander.kanavin@linux.intel.com>
> An: "Arno Steffens" <star@gmx.li>
> Cc: poky@yoctoproject.org
> Betreff: Re: Aw: Re: Re: [poky] gnupg strip down
>
> On 04/26/2017 03:52 PM, Arno Steffens wrote:
> > You know more than me ;)
> > I just checked the list of already existing packages.
> > I found 27 locale, one doc, one debug, one dev, one just gnugp.
> >
> > Even in the latter one, there are a lot of help files and binaries, and not a single lib.
> > Looking at the bb file doesn't give me a clue how to go on. Seems I am a greenhorn.
> 
> I just looked. There is a bunch of binaries (in /usr/bin and sbin), a 
> few helper binaries (in /usr/libexec) and the help files in 
> /usr/share/gnupg. I don't think you can further split up the binaries 
> (unless you *really* know what you are doing), and the help files aren't 
> taking much space at all, about 320 kilobytes.
> 
> If you insist, add a .bbappend file to your custom layer, where the 
> unnecessary binaries are removed in do_install_append() (again, plenty 
> of recipes in oe-core where this happens).
> 
> 
> Alex

Hi Alex,

I did as advised, created a bbappend for gnupg, like that:

do_install_append() {
	rm ${D}${bindir}/gpgv
	rm ${D}${bindir}/gpgsm
	rm ${D}${bindir}/gpg-connect-agent
	rm ${D}${bindir}/dirmngr-client
	rm ${D}${bindir}/gpgscm
	rm ${D}${bindir}/watchgnupg
	rm ${D}${bindir}/gpgparsemail
	rm ${D}${bindir}/gpgconf
	rm ${D}${bindir}/dirmngr
	rm ${D}${bindir}/gpgtar
	rm ${D}${bindir}/gpgv2
	rm ${D}${bindir}/gpg-agent
	rm ${D}${bindir}/kbxutil
	rm ${D}/usr/sbin/*
	rmdir ${D}/usr/sbin
	rm ${D}/usr/share/gnupg/help*
	rm ${D}/usr/libexec/gpg-*
	rm ${D}/usr/libexec/scdaemon
	rmdir ${D}/usr/libexec
}

First I get errors, cleaning files and leave directory, but than I get it, that I have to remove empty folders too. Ok, that could be done smarter. So just gpg and few small files left.

But I don't have an idea howto remove the libs, that seems to be required only by the removed binaries,
like libgnutils.so, libgmp.so - which are rather big ...  They are not in the gnupg.ipk, but somewhere else.
As far as I found out gpg itself need just 5 libs (libassuan, libbz2, libgcrypt, libgpg-error, libreadline).

I am aware that this is a custom embedded solution, where just the ability to verify signed files is needed.

Howto solve that?

