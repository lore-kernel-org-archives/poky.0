Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5478E0094C; Sun, 22 Mar 2015 22:02:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83C8BE00853
	for <poky@yoctoproject.org>; Sun, 22 Mar 2015 22:02:03 -0700 (PDT)
Received: by iedm5 with SMTP id m5so27746436ied.3
	for <poky@yoctoproject.org>; Sun, 22 Mar 2015 22:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=A5eRWWxfvHkfG052ugmCMH/KgE2LuBCoUtOQ3Yj/DnE=;
	b=l9SMCh948JwIT6tV44F/PUvgiksrJUmZCAPHiVOM/GviV+ky8D6oZbeU7y/MXEPiVD
	1wdGdeWoa/g/u3OJXsVp1RC3BoF3AUuwLDoGsmKfQAnjYvXjPe/ksAkbwIF10DUveqfj
	tmV1koyjBHZb+HKDdSH+9F9yIlRMHQcn3rAG7hGUT+yH+gV+H/7ma1EuUNthNS1krFTx
	Fx/46idaL3IPSnHt8nw4C73lDrJ1Nh7vthGM9e1CzTR5H8wcYzjsHt2Mq2ZFuLyB34EV
	UC8bBWtAJk/TlPwW552cLsdUEjcoYyXapT9SAnKHjD4MJjX2SC/2Hi/ya6nKVNhyLhtr
	k1xA==
X-Received: by 10.42.247.68 with SMTP id mb4mr17462607icb.2.1427086922316;
	Sun, 22 Mar 2015 22:02:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Sun, 22 Mar 2015 22:01:32 -0700 (PDT)
In-Reply-To: <cover.1427082458.git.tom.zanussi@linux.intel.com>
References: <cover.1427082458.git.tom.zanussi@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 22 Mar 2015 22:01:32 -0700
Message-ID: <CAMKF1sr8QU8CauiopAYKNF++cfjWr3Veax-PVRtBX3AFjEeCqQ@mail.gmail.com>
To: Tom Zanussi <tom.zanussi@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] yocto-bsp updates for 1.8
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
X-List-Received-Date: Mon, 23 Mar 2015 05:02:06 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 22, 2015 at 9:24 PM, Tom Zanussi
<tom.zanussi@linux.intel.com> wrote:
> This is the yocto-bsp update for 1.8 (to the 3.19 kernel, and removing
> 3.10 and 3.17 support).

why are we removing a LTSI (3.10) kernel ?

