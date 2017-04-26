Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C59B4E00B05; Wed, 26 Apr 2017 05:57:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.15.19 listed in dnsbl.sorbs.net]
X-Greylist: delayed 306 seconds by postgrey-1.32 at yocto-www;
	Wed, 26 Apr 2017 05:57:11 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C2DDE00B01
	for <poky@yoctoproject.org>; Wed, 26 Apr 2017 05:57:11 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs77.server.lan (via HTTP);
	Wed, 26 Apr 2017 14:52:00 +0200
MIME-Version: 1.0
Message-ID: <trinity-0305ba43-e510-46b7-a11d-a31e69a15283-1493211120829@3capp-gmx-bs77>
From: "Arno Steffens" <star@gmx.li>
To: "Alexander Kanavin" <alexander.kanavin@linux.intel.com>
Date: Wed, 26 Apr 2017 14:52:00 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <d69a7c4a-03e0-7447-c956-231244fda704@linux.intel.com>
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
	<29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
	<trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>,
	<d69a7c4a-03e0-7447-c956-231244fda704@linux.intel.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:XuiWIqua1RllgS8X+wxYWOfimo8tLdlPdk3sStZiMwf
	SuoTXySc5EToWP+KySp7jpwIF//bvaNEeJYLMO0E8hhEemeEPI
	QC2XMM1N9te7fB+a+qEcLfLuMdwj5q6zfGBhjMHaR2o9pGJZwl
	jTS+K7dQ2dYq0gwVhY6q3mU9QThy4pWTM19CWeYeNbr/6oGmWD
	ajtZsFNLkW8y/+MvLO6mMOQZxpVM5kE79D5HVuFTMqUCrUIubZ
	43lA513OxTjHq6OYQq7O6++Kv4eVFzAOGLDzmOPSKwMJ4AW6QX WKTaG4=
X-UI-Out-Filterresults: notjunk:1;V01:K0:XjpMaDnw9do=:Jn6oCYD8U6eBkDv3XXV14N
	k3RkdtWJXKaqQ5IEzvRlpPvvINpaboVyXLyFAK/vZaks1Sm4mFyQ/JfjCuxbEVE6MOH7LBfBe
	9hO7bdNwnOmZP2QwMUy4azLmRmxeUbpw2ZH1OOC1wNfwpf1dfJMzGpKXGlhZ2UJhsM/54M8QZ
	r8bqshbrPsACjOcri+EIAzJnmZBeZfTY9c56NemMI6070pfkUL379BL+/hMBrs0l2N0s46oxx
	uCdh09JLC5JplMwbqH6rHqBBjOPVyNXDwizX/QYMM1kXysGN7w5x7gsq6KE/wqKoU+Wn9q0HS
	zfxlRBBlDecWKlLqWAdcfk7GNLrd9HU+/idjlEiR6YCGSPxa3QueYWnNsjGwxrJcsdHlNFYwC
	srJ0Ob5JrFxvsK+bdY5qxwX7oew23OjcyBTPbzKPBn86J1LaCk2/UpobpEF8dDU6pfbs9kZOn
	+feZF+qGFw==
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
X-List-Received-Date: Wed, 26 Apr 2017 12:57:14 -0000
Content-Type: text/plain; charset=UTF-8

> Gesendet: Mittwoch, 26. April 2017 um 12:54 Uhr
> Von: "Alexander Kanavin" <alexander.kanavin@linux.intel.com>
> An: "Arno Steffens" <star@gmx.li>
> Cc: poky@yoctoproject.org
> Betreff: Re: Aw: Re: [poky] gnupg strip down
>
> On 04/26/2017 08:42 AM, Arno Steffens wrote:
> 
> > split it into packets is a good idea, but far above my knowledge. I
> > am happy if I can do slightest modifications to things that are less
> > complex. Sure, I checked documentation for hints about configuration.
> > There is nothing - better said nothing I can handle. My attempt to
> > add more --disable-*** has been just uneducated guesses and didn't
> > work. That's why I am asking for help here. At minimum I thing it is
> > against the rules just to install all language stuff per default.
> 
> Don't try to change configuration flags. You already have a pretty clear 
> idea of how the output files could be split in the recipe into separate 
> packages. It is not hard: you first define the list of packages using

You know more than me ;)
I just checked the list of already existing packages.
I found 27 locale, one doc, one debug, one dev, one just gnugp. 

Even in the latter one, there are a lot of help files and binaries, and not a single lib.
Looking at the bb file doesn't give me a clue how to go on. Seems I am a greenhorn.

> 
> PACKAGES += "pkg1 pkg2"
> 
> and then tell which files go where with
> 
> FILES_pkg1 = "file1 file2"
> FILES_pkg2 = "file3 file4"
> 
> There is a lot of examples in oe-core; it's totally standard procedure.

Did I understand you right? Instead of adding "gnupg" to my core-image I shall add my own recipe, wich install just the "gnupg_2.1.14-r0_cortexa9hf-neon.ipk" ?
How this looks like?
But this misses libs and has still to much help (again all languages). This seems not to follow the rules, as this doesn't happened to me with other packages ...

Arno

