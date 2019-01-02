Return-Path: <matthew_stanger@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD262E00CEA; Wed,  2 Jan 2019 12:37:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49574E00CB9
	for <poky@yoctoproject.org>; Wed,  2 Jan 2019 12:37:19 -0800 (PST)
Received: by mail-qt1-f176.google.com with SMTP id l12so34766882qtf.8
	for <poky@yoctoproject.org>; Wed, 02 Jan 2019 12:37:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trimble-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=8NX8UguqES5paApOo0/H9yHXHRazkoJTMzm0axGWrXI=;
	b=dImdki4mGWBSMtCXqdE8Ia10zpKJOSuL3dtjQeymsKsIXMZrYjKoKc+hS5IGzUVdKe
	iKjjtFViNdVXkBLkksbrMZnqsdlvnqA+saSonV9jF2WZSVbB6KAnXGLcig+0yFz/YMYn
	5XJJHmwLr5064DNV0+JWF+1Hfk8RrYJk4geWWSXwEX6CKgBSnUDbTPD/L/mNJafc/HJw
	GeFjUvhd8jEddvCT9IrvDwNcwrEShVzrszquiItYaZGgFr4HfYWoo+WOLCPXLsXSrkxb
	Wq+gTkiWTzrRNWK0MeZlS6NdFTttWn0tmp8ecBwaDLTvphOTu5pmJxXDRs7tC0xOojWE
	o04g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8NX8UguqES5paApOo0/H9yHXHRazkoJTMzm0axGWrXI=;
	b=O6CbJoD53qYG11c0CckckSJi9N0FpxUOXb08GJTHKUV8ItrN0Z1Hq/YmC8iqFTnu0y
	RyDifWx0NAYXD+rmo5qJqg6LUJBwgb5cvXavZkXU3Abq3V84Jms3BJ89+lW+FQBZSNAL
	hL9OocuUxITtKvL3iWaQbtEUlzAXFv0ao+g3I/N1lK+/r32WyTaomH4dQw7sSN6i4o1D
	kMBFV62kLpkq0HDkZAD6wo1qWj+KOkcleAUFfNwfaBUmBIBeE29sl4k8En8+6sQvvg5X
	yuW124N2ymys2+e+tMiWOamGIXAYJuXU0ieLuebEjGqir7A+XUHgApWxZUZ/Mgpxwoyd
	Decg==
X-Gm-Message-State: AJcUukczSjZifJdECDofpFF03HW5K3J0jiwUtoYkHjGsY1WKt4ep5WXK
	TG+BfcaHd1AbdgthT2dOCMJFuiD8W43/K2B8gHvnW2K6p7x0bw==
X-Google-Smtp-Source: ALg8bN4GlQoi8DG/KM2U+0s7JDWlr+yKlN+/CktyJhxXU4MU+0ydmu5lMOJFdg5kBfits1FmvgUBdzabAm/78R1LPJI=
X-Received: by 2002:a0c:dd81:: with SMTP id v1mr44932533qvk.71.1546461438179; 
	Wed, 02 Jan 2019 12:37:18 -0800 (PST)
MIME-Version: 1.0
From: Matthew Stanger <matthew_stanger@trimble.com>
Date: Wed, 2 Jan 2019 13:37:07 -0700
Message-ID: <CANr77M2NsGWUEeYobQFM_YChfK37KM06z=PUQSe6z8nQCqzQsw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: glibc-initial fails to build in Thud with arm926ejs tune
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
X-List-Received-Date: Wed, 02 Jan 2019 20:37:19 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm getting a build failure under Thud when trying to use the
following tune in my machine.conf:
#at91sam9.inc is from meta-atmel - at91sam9263 is ARM target
require conf/machine/include/at91sam9.inc
DEFAULTTUNE = "arm926ejs"


When doing a fresh build 'glibc-initial' config stage fail's with:
| checking for broken __attribute__((alias()))... yes
| configure: error: working alias attribute support required
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/temp/log.do_configure.1177)
ERROR: Task (/home/matt/renew_thud/build/../oe/poky/meta/recipes-core/glibc/glibc-initial_2.28.bb:do_configure)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 2173 tasks of which 0 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /home/matt/renew_thud/build/../oe/poky/meta/recipes-core/glibc/glibc-initial_2.28.bb:do_configure

Can give follow on config.log's and such as required.

If I edit 'poky/meta/conf/machine/include/tune-arm926ejs.inc' to
change the '-mcpu' back to 'mtune'(commit f29d642c) then glibc builds
fine. GCC tuning is totally outside my expertise so I'm hoping someone
can confirm if '-mcpu' is really desired over '-mtune'? And also if
this look like a Poky issue or something else?

Cheers,
Matt

