Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E82D0E00CD9; Wed, 30 May 2018 03:18:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,RCVD_IN_RP_RNBL
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [87.81.244.161 listed in bl.score.senderscore.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D5D7E00CC4
	for <poky@yoctoproject.org>; Wed, 30 May 2018 03:18:50 -0700 (PDT)
Received: from ted ([192.168.3.30]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w4UAIWCl009183
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Wed, 30 May 2018 11:18:43 +0100
Message-ID: <1527675512.16911.130.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Arno Steffens <star@gmx.li>, ChenQi <Qi.Chen@windriver.com>
Date: Wed, 30 May 2018 11:18:32 +0100
In-Reply-To: <trinity-a02404fb-0f4a-4265-9053-ce0b93aa8797-1527674498967@3c-app-gmx-bs52>
References: <trinity-f65d3236-5771-46ac-b0bf-c6d5bbacdd40-1527590486561@3c-app-gmx-bs25>
	<54cf3e3f-42e8-bbb9-ff6a-6ab76ff4e497@windriver.com>
	<trinity-a02404fb-0f4a-4265-9053-ce0b93aa8797-1527674498967@3c-app-gmx-bs52>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
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
X-List-Received-Date: Wed, 30 May 2018 10:18:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2018-05-30 at 12:01 +0200, Arno Steffens wrote:
> Thanks Chen,
> sounds easy but I get to my surprise a problem with a shared library
> (cannot open shared object file: No such file or directory) -
> althought the LD_LIBRARY_PATH is set (/opt/lib) and the file
> available?

setuid will clear LD_LIBRARY_PATH and other environmental variables for
security reasons. Try adding an RPATH to the binary directly using
chrpath or patchelf?

Cheers,

Richard

