Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B8EDE0090A; Sat, 17 Mar 2018 11:33:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA850E006E9
	for <poky@yoctoproject.org>; Sat, 17 Mar 2018 11:33:14 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w2HIXAgw006188
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Sat, 17 Mar 2018 18:33:11 GMT
Message-ID: <1521311589.25754.81.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Manu Mathen <manumathens@gmail.com>, poky@yoctoproject.org
Date: Sat, 17 Mar 2018 19:33:09 +0100
In-Reply-To: <CA+yucNXzH1E6r-2fP2ggvef9LjNGdu-GG2G=nhyqSDRkVTQ4sg@mail.gmail.com>
References: <mailman.17.1521226801.7813.poky@yoctoproject.org>
	<CA+yucNXzH1E6r-2fP2ggvef9LjNGdu-GG2G=nhyqSDRkVTQ4sg@mail.gmail.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.3 at dan
X-Virus-Status: Clean
Subject: Re: poky Digest, Vol 90, Issue 5
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
X-List-Received-Date: Sat, 17 Mar 2018 18:33:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2018-03-17 at 16:45 +0300, Manu Mathen wrote:
> Thank you for your reply Ross. I ran memtest with the default test
> parameters and it seems to be fine. I have 8GB of ram and have an i7
> processor on this computer, is that enough to complete the poky build
> ? As for heating issues, the laptop has always just been slightly
> warm. Once the restart problem happens, the laptop restarts even when
> it's cool and has just been running for a minute. I have noticed this
> error several times through the syslog always, "nouveau 0000:03:00.0:
> fifo: SCHED_ERROR 20 []". Would something from the graphics card
> affect the build ? I will try and replace this with the nvidia
> drivers and give it a go. This is the log when the build reaches
> around 85%, 

One of your previous crashes has corrupted the build directory. At a
guess, "bitbake core-image-sato -c clean" should clean it up and let
you move forward.

Cheers,

Richard

