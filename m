Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2277CE0084E; Wed, 16 May 2018 14:43:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC473E00831
	for <poky@yoctoproject.org>; Wed, 16 May 2018 14:43:30 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w4GLhQ77021622
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Wed, 16 May 2018 22:43:27 +0100
Message-ID: <1526507006.8937.21.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Halstead <mhalstead@linuxfoundation.org>, poky@yoctoproject.org
Date: Wed, 16 May 2018 22:43:26 +0100
In-Reply-To: <ba4fc516-f02d-683e-2fb7-0a8441cae5cf@linuxfoundation.org>
References: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
	<28b5dd854c864d1fa0149916706f2434@XBOX02.axis.com>
	<trinity-6668c7b5-3f6c-47f7-b0d8-3a59032571c1-1526380985002@3c-app-gmx-bs12>
	<63ef6b8aff254ed7dc38d9bee7623d4d@basmevissen.nl>
	<trinity-c6098955-a734-46bf-a321-e8d24473dc5d-1526383048370@3c-app-gmx-bs12>
	<1526383459.5720.162.camel@linuxfoundation.org>
	<trinity-bef4d5a0-3616-4539-81d6-e345a1ee4e98-1526387443357@3c-app-gmx-bs12>
	<1f08a8411aad4311f4e5677fe4c0cbfe@basmevissen.nl>
	<trinity-22dc1a63-7fa8-41fd-bc2f-e011b698d3c6-1526461333500@3c-app-gmx-bs71>
	<1fd67bfccb82049ff75349a65d5bc81c@basmevissen.nl>
	<trinity-bafd13ab-8a55-4361-9796-d4dec1738677-1526466175205@3c-app-gmx-bs71>
	<trinity-1da387ae-4287-4deb-9844-59c3a2016d56-1526479553134@3c-app-gmx-bs71>
	<ba4fc516-f02d-683e-2fb7-0a8441cae5cf@linuxfoundation.org>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
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
X-List-Received-Date: Wed, 16 May 2018 21:43:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2018-05-16 at 14:12 -0700, Michael Halstead wrote:
> 
> On 05/16/2018 07:05 AM, Arno Steffens wrote:
> > 
> > Checking the log file it seem that a file is missing in Yocto
> > project:
> > 
> > https://git.yoctoproject.org/pseudo/
> > 
> > And the file that is downloaded ...
> > http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproj
> > ect.org.pseudo.tar.gz
> > .. it has not .git folder and it has been compressed (date in file
> > is July 2016)
> These sources are preserved once uploaded to prevent the copy used in
> the initial (working) from being overwritten by corrupt/altered
> copies
> in the future. Back when this was set up the sources pretty much all
> had
> version numbers in the file name so it worked well.
> 
> I don't know what should happen with this file.

That is a problem as these files do change as new revisions get added
to the repositories. We do need to updated the git2_* files with newer
files which should in theory just contain more data. We'd need to make
the updates atomic (mv the files into place).

Cheers,

Richard

