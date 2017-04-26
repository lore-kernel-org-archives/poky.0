Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5B57E00B05; Tue, 25 Apr 2017 22:42:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA5F4E00B01
	for <poky@yoctoproject.org>; Tue, 25 Apr 2017 22:42:10 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs77.server.lan (via HTTP);
	Wed, 26 Apr 2017 07:42:05 +0200
MIME-Version: 1.0
Message-ID: <trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>
From: "Arno Steffens" <star@gmx.li>
To: "Alexander Kanavin" <alexander.kanavin@linux.intel.com>
Date: Wed, 26 Apr 2017 07:42:05 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>,
	<29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:pdfi0139FFpPyNMOPOM4fPpzNHg/1eO6Zf2CWKnqngR
	EsJOhiTifaFCGwdKf7DFBkVj2ZNOz5TfmaewXX6Gpwrl+vLqxr
	13gQzVRSrVNqHcAI/F84fZxkhXi13y+382rN1ixxsYwZrOjrUB
	RTMAK5iynx5ce+Prjg9tqV+ktHZDf8WI3f1MWs1KmnjSoHfeN7
	ldrDZqgd6AgD6vZaxKqRigU4cs+brlD2FfZXyChAAMDuRYoFoR
	Od/8awBOGbsYAC1cNKlGaxSIySz+E2g43S47ySXWq4kCGzpgmK yoJpa4=
X-UI-Out-Filterresults: notjunk:1;V01:K0:YoZWgwDEyXs=:86S4CA07uZob2nHJ3TaTen
	U7jAhfcyb+a6nzDVkosrgE34hP1Y59lFhbRc6l1jlWVKZS+e5VY+oxO/8M1KAFxy8x0UO9TJ2
	fltiIU+jq46RtJ1Rgh+uWNTPyP3N9OBGs1p13mcNVVyFJqxv8Mq+GuJiiwOP/vb3U+tWMToTA
	oZns+kdd/FETtK7QzBQfl8QXA3mQVUCt6hAMhpV6qhWmfnhrhf/LOge8wnuHpZ2d3A3eR0ShI
	wWa08kzQ51TU2y01zRC5X3HL749lyT7VJNSCssmGceDa1DLMfrpCxqNinh1v+17cm0hET/e4w
	sbwE70t8+rU/FAnb/zT88jckr58ffn6YB0w++I4u5NNY1W9A5056TSYAiWnWSVqbGI8vfhxBs
	xquTBCyGU3cAB4uOzMGtKHqmsVN2dciZKP+3mRkM6Of4qTR9nD499A5H4PGRa8SkzZQ18o+Qj
	Zd+gi1iWfA==
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
X-List-Received-Date: Wed, 26 Apr 2017 05:42:12 -0000
Content-Type: text/plain; charset=UTF-8

> Gesendet: Dienstag, 25. April 2017 um 15:10 Uhr
> Von: "Alexander Kanavin" <alexander.kanavin@linux.intel.com>
> An: poky@yoctoproject.org
> Betreff: Re: [poky] gnupg strip down
>
> On 04/25/2017 03:57 PM, star@gmx.li wrote:
> > Would like to include gnupg into my filesystem. If I add gnupg to my image, it become to big (12.5MB instead of 5MB with core-image-minimal).
> > It installs a lot of things I don't need: dozen libs, binaries and even helpfiles in all languages ?!?
> >
> > In fact I need just gnupg-binary and around 5 libs for my need. Can you help me howto strip down the recipe or what has to be set in a bbappend file to achive that? My first experiments with adding things to ETXRA_OECONF like
> >
> > EXTRA_OECONF = "....
> >    --disable-card-support \
> >    --disable-gnupg-iconv  \
> >    --disable-idea           \
> >    --disable-cast5          \
> >    --disable-exec           \
> >    --disable-photo-viewers  \
> >    --disable-keyserver-helpers   \
> >
> > failed. Thank you.
> >
> 
> This is your opportunity to contribute to oe-core :) Write a patch that 
> splits up gnupg recipe into several sub-packages, and send it to the 
> oe-core mailing list.
> 
> Alex

Dear Alex,
split it into packets is a good idea, but far above my knowledge. I am happy if I can do slightest modifications to things that are less complex.
Sure, I checked documentation for hints about configuration. There is nothing - better said nothing I can handle. My attempt to add more --disable-*** has been just uneducated guesses and didn't work. That's why I am asking for help here.
At minimum I thing it is against the rules just to install all language stuff per default.

Best regards
Arno
 

