Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id C730C4C80050
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 18:51:05 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0B0qiUI021222; Tue, 11 Jan 2011 00:52:45 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 04bMfWQkxrVo; Tue, 11 Jan 2011 00:52:44 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0B0qfcq021218
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 11 Jan 2011 00:52:43 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <20110111001336.GC18577@kyu3-hedt>
References: <cover.1294469496.git.ke.yu@intel.com>
	<caa56bdbc2294f3da1ccec752e1ba9e3e452f241.1294469496.git.ke.yu@intel.com>
	<1294654419.2451.3.camel@scimitar> <1294659774.1492.186.camel@rex>
	<1294677815.1492.811.camel@rex> <1294690775.1492.1258.camel@rex>
	<20110111001336.GC18577@kyu3-hedt>
Date: Tue, 11 Jan 2011 00:50:50 +0000
Message-ID: <1294707050.1492.1844.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 3/7] bb: add bb.fetcher as dynamic fetch module instance for fetch/fetch2
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
X-List-Received-Date: Tue, 11 Jan 2011 00:51:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-11 at 08:13 +0800, Yu Ke wrote:
> > If we assume bb.fetch2 will not make calls to bb.fetch we can simplify
> > this to:
> > 
> > if os.environ.get("BBFETCH2"):
> >     from bb import fetch2 as fetch
> >     sys.modules['bb.fetch'] = sys.modules['bb.fetch2']
> 
> BTW, a quick question. with sys.modules['bb.fetch'] =
> sys.modules['bb.fetch2'], will the future "import bb.fetch" override
> the bb.fetch in namespeace ? I assume not, but just want to double
> confirm. I know that "import <module>" will not be executed if the
> <module> is already imported. So does python use sys.modules[<module>]
> to decide if it is already imported?

This is correct, yes. Python uses sys.modules behind the scenes when it
sees "import X". You can prove this by placing a sys.exit(1) in the
bb.fetch code :)

Cheers,

Richard




