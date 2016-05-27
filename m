Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39D86E00E3A; Fri, 27 May 2016 06:48:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (star[at]gmx.li)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BE2BE00D04
	for <poky@yoctoproject.org>; Fri, 27 May 2016 06:48:12 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs01.server.lan (via HTTP);
	Fri, 27 May 2016 15:48:11 +0200
MIME-Version: 1.0
Message-ID: <trinity-200ddab3-0fb2-41ea-8c38-37f5f1195f5e-1464356891340@3capp-gmx-bs01>
From: Arno <star@gmx.li>
To: poky@yoctoproject.org
Date: Fri, 27 May 2016 15:48:11 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:POEP9b8MMV/FV9F0uZmpcSdzRvHEcBjkRXtOwJ4waof
	ewgZmEZEpIh0OxG7zBJcNzrRFtm6N0q8vmzD8y37xhLdsDSQ0b
	MXcQgNnvqZGP47yPn6jn3waR3mA+NWF02UjdK9Wedyp/TzIico
	tEh7T5YjS4sbrO4g9jkapyubmELO0FU/jNBdccl2JhFpe7qZnL
	D995kNTXw+cjjpfAlnGd+R+lCPxh6+mmi23w94qMhot+a32XmN
	7r66VPKSzIBvzSOsgG5YsorIllc3FJ14QJ+E1IF2uzzYfOkUDV wfJ1Jo=
X-UI-Out-Filterresults: notjunk:1;V01:K0:pe/tjJbA9fA=:YF44L/rMh4wacI6oNBqF66
	4MJUfggXrpcBzOGqgnkUkbOlWBmh/kpuTAchvi2sMltrOcFqxgOpHN143lfGGE27+pev3z5r2
	yCaXv/amSWV7Zbr5jmRqjRvpkLiVHnuZVyGwQpq9tpl+kUi5Jxb+FhDgvT5MBoJxcekjqs4O4
	EUaWj+B+Z2Bzs+YuBwucgvDH1kIdraCtqa1Df+cnxfZfau09luEFD11o4S1mZaYMACF5MBY21
	0VPQwPv8WKIlEfAaCYZN2qdvlcPYs2f24TQV1n8EA2+OPL0KFUsqX0WIuLEJpT3GZXhnDz4tF
	9Ryw4rUQIvzmBQRYTPhSD3A5qrMegbFFoyv31Nz1WiNmGejga31MdxbBQUOr1Od5pQ/Behe+J
	NcndqquRO+YxV3ZI3OxwMjsI13hdf79c7Bv1KFviEhlWnRCInEBU8i3D4vZLtf7A978oAfWpi
	pEQ79agDog==
Subject: Workaround for fetching files
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
X-List-Received-Date: Fri, 27 May 2016 13:48:14 -0000
Content-Type: text/plain; charset=UTF-8

My question: Can I download some files that gives errors fetching during the build process and a new bitbake will recognise it? Probably it is not so simple, due to all this fancy stuff with timestamps .....
But - is there a way?

I am in a company network, due to strict rules I am often faced with problems fetching file.
So I am not able to use git protocol, most http(s) is the workaround.

Sometimes I can access files by browser (sources.openembedded.org/git2_git.yoctoproject.org.yocto-kernel-tools.git.tar.gz)
but the yocto build process can't and gives errors.

Either there is a problem with certificates (and even "export GIT_SSL_NO_VERIFY=1" before calling bitbake doesn't help") or there is "No route to host"

ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
fatal: unable to access 'https://github.com/Xilinx/linux-xlnx.git/': server certificate verification failed. CAfile: /etc/ssl/certs/ca-certificates.crt CRLfile: none


DEBUG: Fetcher failure: Fetch command failed with exit code 128, output:
fatal: unable to connect to git.yoctoproject.org:
git.yoctoproject.org[0: 140.211.169.56]: errno=No route to host

Best regards
Arno



