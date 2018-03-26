Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FF18E009CF; Mon, 26 Mar 2018 15:10:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B954E007DA
	for <poky@yoctoproject.org>; Mon, 26 Mar 2018 15:10:35 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w2QMAUuj030003
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Mon, 26 Mar 2018 23:10:32 +0100
Message-ID: <1522102230.11431.71.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ruica Cristina <ruica.cristina@yahoo.com>, poky@yoctoproject.org
Date: Mon, 26 Mar 2018 23:10:30 +0100
In-Reply-To: <913813716.1318110.1522099057513@mail.yahoo.com>
References: <913813716.1318110.1522099057513.ref@mail.yahoo.com>
	<913813716.1318110.1522099057513@mail.yahoo.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.3 at dan
X-Virus-Status: Clean
Subject: (No subject)
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
X-List-Received-Date: Mon, 26 Mar 2018 22:10:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2018-03-26 at 21:17 +0000, Ruica Cristina wrote:
> rocko..
> i tried to edit local.conf file and add 
> 
> package_Classes ?="package ipk"
> and it won't let me bitbake..i m kind of new in this and i don t know
> how to manage it..

It would be useful to know the exact error. You do need to use the
right capitalisation though, like:

PACKAGE_CLASSES = "package_ipk"

Cheers,

Richard

