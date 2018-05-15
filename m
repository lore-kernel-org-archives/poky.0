Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C557E00C4B; Tue, 15 May 2018 04:24:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2D04E0084E
	for <poky@yoctoproject.org>; Tue, 15 May 2018 04:24:29 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w4FBOJ50002337
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Tue, 15 May 2018 12:24:20 +0100
Message-ID: <1526383459.5720.162.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Arno Steffens <star@gmx.li>, Bas Mevissen <abuse@basmevissen.nl>
Date: Tue, 15 May 2018 12:24:19 +0100
In-Reply-To: <trinity-c6098955-a734-46bf-a321-e8d24473dc5d-1526383048370@3c-app-gmx-bs12>
References: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
	<28b5dd854c864d1fa0149916706f2434@XBOX02.axis.com>
	<trinity-6668c7b5-3f6c-47f7-b0d8-3a59032571c1-1526380985002@3c-app-gmx-bs12>
	<63ef6b8aff254ed7dc38d9bee7623d4d@basmevissen.nl>
	<trinity-c6098955-a734-46bf-a321-e8d24473dc5d-1526383048370@3c-app-gmx-bs12>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Cc: poky@yoctoproject.org
Subject: Re: Yocto 2.5 and problem with pseudo-native-1.9.0
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
X-List-Received-Date: Tue, 15 May 2018 11:24:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2018-05-15 at 13:17 +0200, Arno Steffens wrote:
> 
> Yeah - I know, I am handicapped  :(
> But a change from 
> git://git.yoctoproject.org/pseudo
> to
> https://git.yoctoproject.org/git/pseudo
> doesn't solve the issue.
> 
> Compared to yocto 2.3 and 2.4 I miss in the recipes a file like
> pseudo_1.8.2.bb
> 
> Now there is just
> pseudo_git.bb
> and 
> pseudo.inc
> 
> Also in the download I found a file:
> git2_git.yoctoproject.org.pseudo.tar.gz.done
> 

> Do we dig at wrong side?

Try adding ";protocol=https" to the url, something like:

git://git.yoctoproject.org/pseudo;protocol=https

Our mirrors should have http tarballs of the git repos which should
work for this but clearly something isn't working quite correctly with
the backup archives :(. Adding https to the url should work though.

Cheers,

Richard

