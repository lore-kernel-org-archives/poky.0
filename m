Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7F14E01363
	for <poky@yoctoproject.org>; Tue, 13 Mar 2012 02:00:02 -0700 (PDT)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q2D8xtcC030194
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 13 Mar 2012 09:59:55 +0100
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id q2D8xtBQ030192;
	Tue, 13 Mar 2012 09:59:55 +0100
Date: Tue, 13 Mar 2012 09:59:54 +0100
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Message-ID: <20120313085953.GA5754@giant>
References: <1331567239-20200-1-git-send-email-bjst@enea.com>
	<CAEsOVNcXW_AAuq3aJORztmW9-pCH9ztJsUZ8PwGzFX2yjs8uzQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEsOVNcXW_AAuq3aJORztmW9-pCH9ztJsUZ8PwGzFX2yjs8uzQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] Add pigz as gzip-native alternative.
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 13 Mar 2012 09:00:03 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

McClintock Matthew-B29882 wrote:
> I thought about doing this - can you share any performance numbers?

pigz seems to scale fairly well. I compared the time it takes to compress the final rootfs tarball in do_rootfs for one of my images. 

gzip:

real    1m33.523s
user    1m33.146s
sys     0m0.368s

pigz:

real    0m2.239s
user    1m40.554s
sys     0m0.716s

This is on a 64-core machine.

-- 
Björn

